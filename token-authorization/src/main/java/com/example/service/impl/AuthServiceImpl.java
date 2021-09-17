package com.example.service.impl;

import com.example.entity.User;
import com.example.service.AuthService;
import com.example.service.LogInfoService;
import com.example.service.UserService;
import com.example.util.result.Result;
import com.example.util.result.ResultEnum;
import com.example.util.result.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.endpoint.TokenEndpoint;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.HttpRequestMethodNotSupportedException;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.Map;

@Service
public class AuthServiceImpl implements AuthService {

    @Autowired
    private TokenEndpoint tokenEndpoint;

    @Autowired
    private TokenStore tokenStore;

    @Autowired
    private ConsumerTokenServices consumerTokenServices;

    @Autowired
    private UserService userService;

    @Autowired
    private LogInfoService logInfoService;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Result<OAuth2AccessToken> login(Principal principal, Map<String, String> params, HttpServletRequest request) throws HttpRequestMethodNotSupportedException {
        OAuth2AccessToken oAuth2AccessToken = tokenEndpoint.postAccessToken(principal, params).getBody();

        String username= tokenStore.readAuthentication(oAuth2AccessToken).getName();
        User user = new User();
        user.setUsername(username);
        user.setAccessToken(oAuth2AccessToken.getValue());
        if (userService.updateByUsername(user)) {
            return ResultUtils.ok(ResultEnum.LOGIN_SUCCESS, oAuth2AccessToken);
//            BrowserInfo browserInfo = LogUtils.getBrowserInfo(request);
//            LogInfo logInfo = new LogInfo(browserInfo);
//            logInfo.setUsername(username);
//            logInfo.setMsg("登录成功!");
//            if (logInfoService.save(logInfo)) {
//                return ResultUtils.ok(ResultEnum.LOGIN_SUCCESS, oAuth2AccessToken);
//            }
        }
        return ResultUtils.fail(ResultEnum.LOGIN_FAIL);
    }

    @Override
    public boolean logout(String token) {
        return false;
    }
}
