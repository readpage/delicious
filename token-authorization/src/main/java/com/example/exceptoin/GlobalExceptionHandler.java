package com.example.exceptoin;

import com.example.utils.result.Result;
import com.example.utils.result.ResultEnum;
import com.example.utils.result.ResultUtils;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.oauth2.common.exceptions.InvalidGrantException;
import org.springframework.security.oauth2.common.exceptions.UnsupportedGrantTypeException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
@ResponseBody
public class GlobalExceptionHandler {

    @ExceptionHandler(Exception.class)
    public Result<Object> handleOauth2(Exception e) {
        ResultEnum resultEnum = ResultEnum.ERROR;
        //不支持的认证
        if(e instanceof UnsupportedGrantTypeException){
            resultEnum.setMsg("不支持的认证");
            //账户不存在
        } else if (e instanceof UsernameNotFoundException) {
            resultEnum = ResultEnum.ACCOUNT_NOT_EXIST;
            //密码错误
        } else if(e instanceof InvalidGrantException){
            resultEnum = ResultEnum.PASSWORD_ERROR;
        }
        return ResultUtils.ok(resultEnum, e.getMessage());
    }
}
