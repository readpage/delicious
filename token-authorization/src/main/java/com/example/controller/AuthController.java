package com.example.controller;

import com.example.utils.result.Result;
import com.example.utils.result.ResultEnum;
import com.example.utils.result.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.endpoint.TokenEndpoint;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.Map;

@RestController
@RequestMapping("/oauth")
public class AuthController {

    @Autowired
    private TokenEndpoint tokenEndpoint;

    @Autowired
    private ConsumerTokenServices consumerTokenServices;

    //oauth2登录认证
    @PostMapping("/token")
    public Result<OAuth2AccessToken> postAccessToken(Principal principal, @RequestParam Map<String, String> parameters) throws HttpRequestMethodNotSupportedException {
        OAuth2AccessToken oAuth2AccessToken = tokenEndpoint.postAccessToken(principal, parameters).getBody();
        return ResultUtils.ok(ResultEnum.LOGIN_SUCCESS, oAuth2AccessToken);
    }

    //注销账户
    @DeleteMapping("/logout")
    public Result<Object> logout(String token) {
        if (consumerTokenServices.revokeToken(token)) {
            return ResultUtils.ok((ResultEnum.LOGOUT_SUCCESS));
        }
        return ResultUtils.fail(ResultEnum.LOGOUT_FAIL);
    }
}
