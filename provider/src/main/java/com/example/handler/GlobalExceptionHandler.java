package com.example.handler;

import cn.hutool.log.Log;
import cn.hutool.log.LogFactory;
import com.example.utils.result.Result;
import com.example.utils.result.ResultEnum;
import com.example.utils.result.ResultUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
@ResponseBody
public class GlobalExceptionHandler {
    private final Log log = LogFactory.get();

    @ExceptionHandler(Exception.class)
    public Result<Object> unknownException(Exception e) {
        ObjectMapper mapper = new ObjectMapper();
        ResultEnum resultEnum = ResultEnum.ERROR;
        log.error(e);
        try {
            Result<Object> result = mapper.readValue(e.getMessage(), new TypeReference<Result<Object>>() {});
            log.warn(result.getMsg());
            return result;
        } catch (JsonProcessingException jsonProcessingException) {
            resultEnum.setMsg(e.getMessage());
        }
        return ResultUtils.fail(resultEnum);
    }
}
