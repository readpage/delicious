package com.example.security.handler;

import com.example.util.JsonUtils;
import com.example.util.result.Result;
import com.example.util.result.ResultEnum;
import com.example.util.result.ResultUtils;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.oauth2.common.exceptions.InvalidTokenException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// 用户未登录处理器
@Component
public class MyAuthenticationEntryPoint implements AuthenticationEntryPoint {
    @Override
    public void commence(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
        Result<Object> result = ResultUtils.fail(ResultEnum.USER_NOT_LOGIN);
        if (e.getCause() instanceof InvalidTokenException) {
            result =  ResultUtils.fail(ResultEnum.TOKEN_IS_INVALID);
        }
        JsonUtils.toJson(httpServletRequest, httpServletResponse, result);
    }
}
