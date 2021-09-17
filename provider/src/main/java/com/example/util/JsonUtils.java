package com.example.util;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.lang.TypeReference;
import com.example.util.result.Result;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Component
public class JsonUtils {
    private static RestTemplate restTemplate;
    @Autowired
    private RestTemplate myRestTemplate;

    @PostConstruct
    public void init() {
        JsonUtils.restTemplate = this.myRestTemplate;
    }

    public static void toJson(HttpServletRequest request, HttpServletResponse response, Object data) throws IOException {
        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.write(new ObjectMapper().writeValueAsString(data));
        out.flush();
        out.close();
    }

    public static <T, A> Result<T> exchange(String url, HttpMethod method, HttpEntity<A> httpEntity, Class<T> type) {
        return Convert.convert(new TypeReference<Result<T>>() {}, restTemplate.exchange(url, method, httpEntity, Result.class).getBody());
    }
}
