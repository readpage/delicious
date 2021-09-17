package com.example.handler;

import cn.hutool.log.Log;
import cn.hutool.log.LogFactory;
import com.example.util.result.Result;
import com.example.util.result.ResultEnum;
import com.example.util.result.ResultUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.security.oauth2.common.exceptions.InvalidGrantException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.SQLException;

@ControllerAdvice
@ResponseBody
public class GlobalExceptionHandler {
    private final Log log = LogFactory.get();

    //密码错误
    @ExceptionHandler(InvalidGrantException.class)
    public Result<Object> InvalidGrantException(InvalidGrantException e) {
        log.warn(ResultEnum.PASSWORD_ERROR.getMsg());
        return ResultUtils.fail(ResultEnum.PASSWORD_ERROR);
    }

    @ExceptionHandler(SQLException.class)
    public Result<Object> SQLException(SQLException e) {
        log.error(e);
        return ResultUtils.fail("数据库出现问题了😣");
    }

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
