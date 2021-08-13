package com.example.controller;

import com.example.service.AuthService;
import com.example.utils.result.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

@Api(tags = "认证管理")
@RestController
@RequestMapping("/oauth")
public class AuthController {

    @Autowired
    private AuthService authService;

    @ApiOperation("登录")
    @PostMapping("/login")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "用户名", dataType = "String", required = true),
            @ApiImplicitParam(name = "password", value = "密码", dataType = "String", required = true)
    })
    public Result<Object> login(String username, String password) {
        return authService.login(username, password);
    }

    @ApiOperation("注销")
    @DeleteMapping("/logout")
    @ApiImplicitParam(name = "token", value = "令牌", dataType = "String", required = true)
    public Result<Object> logout(String token) {
        return authService.logout(token);
    }

    @ApiOperation("刷新令牌")
    @PutMapping("/refresh")
    @ApiImplicitParam(name = "refreshToken", value = "刷新令牌", dataType = "String", required = true)
    public Result<Object> refresh(String refreshToken) {
        return authService.refresh(refreshToken);
    }

    @GetMapping("/test")
    public Result<Object> test() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authService.test(authentication);
    }
    
}
