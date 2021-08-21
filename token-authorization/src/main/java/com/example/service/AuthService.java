package com.example.service;

import com.example.utils.result.Result;
import org.springframework.security.oauth2.common.OAuth2AccessToken;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.Map;

public interface AuthService {
    Result<OAuth2AccessToken> login(Principal principal, Map<String, String> params, HttpServletRequest  request) throws Exception;

    boolean logout(String token) throws Exception;

}
