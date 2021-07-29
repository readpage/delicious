package com.example.service.impl;

import com.example.service.AuthService;
import com.example.utils.JsonUtils;
import com.example.utils.result.Result;
import com.example.utils.result.ResultUtils;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

@Service
public class AuthServiceImpl implements AuthService {

    @Override
    public Result<Object> login(String username, String password) {
        String url = "http://localhost:8080/oauth/token";
        MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
        body.add("client_id", "c1");
        body.add("client_secret", "secret");
        body.add("grant_type", "password");
        body.add("username", username);
        body.add("password", password);
        body.add("redirect_uri", "http://www.baidu.com");
        HttpEntity<MultiValueMap<String, String>> httpEntity = new HttpEntity<>(body, null);
        return JsonUtils.exchange(url, HttpMethod.POST, httpEntity, Object.class);
    }

    @Override
    public Result<Object> logout(String token) {
        String url = "http://localhost:8080/oauth/logout";
        LinkedMultiValueMap<String, String> body = new LinkedMultiValueMap<>();
        body.add("token", token);
        return JsonUtils.exchange(url, HttpMethod.DELETE, new HttpEntity<>(body, null), Object.class);
    }

    @Override
    public Result<Object> refresh(String refreshToken) {
        String url = "http://localhost:8080/oauth/token";
        MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
        body.add("client_id", "c1");
        body.add("client_secret", "secret");
        body.add("grant_type", "refresh_token");
        body.add("refresh_token", refreshToken);
        Result<Object> result = JsonUtils.exchange(url, HttpMethod.POST, new HttpEntity<>(body, null), Object.class);
        if (result.getCode() == 200) {
            return ResultUtils.ok("刷新成功!😀", result.getData());
        } else {
            return ResultUtils.ok("刷新失败!😜");
        }
    }

}
