package com.example.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.example.service.AuthService;
import com.example.utils.JsonUtils;
import com.example.utils.result.Result;
import com.example.utils.result.ResultEnum;
import com.example.utils.result.ResultUtils;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

@Service
public class AuthServiceImpl implements AuthService {

    @Override
    public Result<Object> login(HttpServletRequest request, String username, String password) {
        HttpHeaders headers = new HttpHeaders();
        Enumeration<String> headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String key = (String) headerNames.nextElement();
            String value = request.getHeader(key);
            headers.add(key, value);
        }
        String url = "http://localhost:8080/oauth/token";
        MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
        body.add("client_id", "c1");
        body.add("client_secret", "secret");
        body.add("grant_type", "password");
        body.add("username", username);
        body.add("password", password);
        body.add("redirect_uri", "http://www.baidu.com");
        HttpEntity<MultiValueMap<String, String>> httpEntity = new HttpEntity<>(body, headers);
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
        if (result.getCode() == 201) {
            return ResultUtils.ok(ResultEnum.REFRESH_SUCCESS, result.getData());
        } else {
            return ResultUtils.ok(ResultEnum.REFRESH_FAIL);
        }
    }

    @Override
    public Result<Object> test(Authentication authentication) {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.add("Authorization", "bearer e344fb9d-9bcd-4ef4-9ec2-cb05a24708b7");
        String url = "http://localhost:8080/oauth/test";
        System.out.println(authentication.getAuthorities());
        String json = JSONObject.toJSONString(authentication);
        System.out.println(json);
        Result<Object> result = JsonUtils.exchange(url, HttpMethod.PUT, new HttpEntity<>(json, headers), Object.class);
        return ResultUtils.ok(result.getData());
    }

}
