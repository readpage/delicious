package com.example.controller;

import com.example.service.AuthService;
import com.example.util.result.Result;
import com.example.util.result.ResultUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletRequest;

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
    public Result<Object> login(String username, String password, @ApiIgnore HttpServletRequest request) {
        return authService.login(request, username, password);
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
        return ResultUtils.ok();
    }

}
