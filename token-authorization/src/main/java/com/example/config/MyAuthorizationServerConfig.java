package com.example.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

@Configuration
@EnableAuthorizationServer
public class MyAuthorizationServerConfig extends AuthorizationServerConfigurerAdapter {
    //用户认证管理器
    @Autowired
    public AuthenticationManager authenticationManager;

    // 用户服务
    @Autowired
    public UserDetailsService userDetailsService;

    //客户端信息配置，可配置多个客户端，这里可以使用配置文件进行代替
    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
        clients.inMemory() //使用in-memory存储
                .withClient("c1")  // client_id
                .secret(new BCryptPasswordEncoder().encode("secret"))  //客户端密钥
                .resourceIds("res1")         //资源列表
                //支持 授权码、密码,客户端,授权模式，支持刷新token功能
                .authorizedGrantTypes("authorization_code", "password", "client_credentials", "refresh_token")
                .scopes("all")  // 授权的范围
                .autoApprove(false)   // false 跳转到授权的页面
                // 加上验证回调地址
                .redirectUris("http://www.baidu.com");
    }

    // 注入Redis连接
    @Autowired
    public RedisConnectionFactory redisConnectionFactory;
    // 注册Redis TokenStore
    @Bean
    public TokenStore tokenStore() {
        RedisTokenStore redisTokenStore = new RedisTokenStore(redisConnectionFactory);;
        return redisTokenStore;
    }

    @Autowired
    private ClientDetailsService clientDetailsService;
    // 令牌管理服务
    @Bean
    public DefaultTokenServices tokenService() {
        DefaultTokenServices tokenServices = new DefaultTokenServices();
        // 客户端信息服务
        tokenServices.setClientDetailsService(clientDetailsService);
        //配置token令牌存储策略
        tokenServices.setTokenStore(tokenStore());
        //开启支持refresh_token，此处如果之前没有配置，启动服务后再配置重启服务，可能会导致不返回token的问题，解决方式：清除redis对应token存储
        tokenServices.setSupportRefreshToken(true);  // 是否产生刷新令牌
        //复用refresh_token
        tokenServices.setReuseRefreshToken(true);
        //token 令牌默认有效期，设置12小时
        tokenServices.setAccessTokenValiditySeconds(12 * 60 * 60);
        //refresh_token 刷新令牌默认有效期，设置一周
        tokenServices.setRefreshTokenValiditySeconds(7 * 24 * 60 * 60);
        return tokenServices;
    }

    // 令牌访问端点
    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
        //配置认证管理器
        endpoints
                .authenticationManager(authenticationManager)  //密码模式需要
//                .authorizationCodeServices(AuthorizationCodeServices)  //授权码模式需要
                //配置用户服务
                .userDetailsService(userDetailsService)
                //配置token存储的服务与位置
                .tokenServices(tokenService())  //令牌管理服务
                .allowedTokenEndpointRequestMethods(HttpMethod.POST);  //运行post提交
    }

    // 授权服务安全配置，主要用于放行客户端访问授权服务接口
    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
        //允许客户端表单提交
        security
                //客户端校验token访问许可
                .checkTokenAccess("permitAll()")
                //客户端token调用许可
                .tokenKeyAccess("permitAll()")
                .allowFormAuthenticationForClients();  //表单认证,申请令牌
    }


}
