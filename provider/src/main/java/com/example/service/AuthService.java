package com.example.service;

import com.example.utils.result.Result;
import org.springframework.security.core.Authentication;

import javax.servlet.http.HttpServletRequest;

public interface AuthService {
    Result<Object> login(HttpServletRequest request, String username, String password);

    Result<Object> logout(String token);

    Result<Object> refresh(String refreshToken);

    Result<Object> test(Authentication authentication);
}
