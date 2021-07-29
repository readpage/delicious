package com.example.service;

import com.example.utils.result.Result;

public interface AuthService {
    Result<Object> login(String username, String password);

    Result<Object> logout(String token);

    Result<Object> refresh(String refreshToken);
}
