package com.example.controller;


import com.example.service.AuthService;
import com.example.service.UserService;
import com.example.util.result.Result;
import com.example.util.result.ResultEnum;
import com.example.util.result.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2RefreshToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.endpoint.TokenEndpoint;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.Map;

@RestController
@RequestMapping("/oauth")
public class AuthController {

    @Autowired
    private TokenEndpoint tokenEndpoint;

    @Autowired
    private TokenStore tokenStore;

    @Autowired
    private ConsumerTokenServices consumerTokenServices;

    @Autowired
    private AuthService authService;

    @Autowired
    private UserService userService;


    //oauth2登录认证
    @PostMapping("/token")
    public Result<OAuth2AccessToken> postAccessToken(Principal principal, @RequestParam Map<String, String> params, HttpServletRequest request) throws Exception {
        return authService.login(principal, params, request);
    }

    //注销账户
    @DeleteMapping("/logout")
    public Result<Object> logout(String token) {
        if (consumerTokenServices.revokeToken(token)) {
            return ResultUtils.ok((ResultEnum.LOGOUT_SUCCESS));
        }
        return ResultUtils.fail(ResultEnum.LOGOUT_FAIL);
    }

    @PutMapping("/test")
    public Result<Object> test() {
        String token = "3b189dfc-6e0a-45fb-9d46-384bce51dee6";
        OAuth2Authentication originalOAuth2Authentication  = tokenStore.readAuthentication(token);
        OAuth2AccessToken oAuth2AccessToken = tokenStore.readAccessToken(token);
        OAuth2RefreshToken oAuth2RefreshToken = tokenStore.readRefreshToken(String.valueOf(oAuth2AccessToken.getRefreshToken()));


        UserDetails userDetails = userService.selectByUsername("user");
        UsernamePasswordAuthenticationToken usernamePasswordAuthentication = new UsernamePasswordAuthenticationToken(userDetails, "N_A", userDetails.getAuthorities());
        OAuth2Authentication oauth2Authentication = new OAuth2Authentication(originalOAuth2Authentication.getOAuth2Request(), usernamePasswordAuthentication);
        tokenStore.storeAccessToken(oAuth2AccessToken, oauth2Authentication);
        tokenStore.storeRefreshToken(oAuth2RefreshToken, oauth2Authentication);
        return ResultUtils.ok(oAuth2RefreshToken);
    }
}
