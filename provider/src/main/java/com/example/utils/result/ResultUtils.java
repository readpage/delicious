package com.example.utils.result;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ResultUtils<T> {

    public static<T> Result<T> ok(Integer code, String msg, T data) {
        return new Result<T>(code, msg, data);
    }

    public static<T> Result<T> ok(ResultEnum resultEnum) {
        return ok(resultEnum.getCode(), resultEnum.getMsg(), null);
    }

    public static<T> Result<T> ok(ResultEnum resultEnum, T data) {
        return ok(resultEnum.getCode(), resultEnum.getMsg(), data);
    }

    public static<T> Result<T> ok(String msg, T data) {
        return ok(ResultEnum.SUCCESS.getCode(), msg, data);
    }

    public static<T> Result<T> ok(T data) {
        return ok(ResultEnum.SUCCESS.getMsg(), data);
    }

    public static<T> Result<T> ok(String msg) {
        return ok(msg, null);
    }

    public static<T> Result<T> ok() {
        return ok(ResultEnum.SUCCESS.getMsg());
    }

    public static<T> Result<T> fail(Integer code, String msg) {
        return new Result<>(code, msg, null);
    }

    public static<T> Result<T> fail(ResultEnum resultEnum) {
        return fail(resultEnum.getCode(), resultEnum.getMsg());
    }

    public static<T> Result<T> fail(String msg) {
        return fail(ResultEnum.ERROR.getCode(), msg);
    }

    public static<T> Result<T> fail() {
        return fail(ResultEnum.ERROR);
    }

    // 查询
    public static<T> Result<T> query(T data) {
        return ok(ResultEnum.RETRIEVE_SUCCESS, data);
    }

    // 添加
    public static<T> Result<T> save(boolean b) {
        return b ? ok(ResultEnum.CREATE_SUCCESS): ok(ResultEnum.CREATE_FAIL);
    }

    // 修改
    public static<T> Result<T> update(boolean b) {
        return b ? ok(ResultEnum.UPDATE_SUCCESS): ok(ResultEnum.UPDATE_FAIL);
    }

    // 删除
    public static<T> Result<T> remove(boolean b) {
        return b ? ok(ResultEnum.DELETE_SUCCESS): ok(ResultEnum.DELETE_FAIL);
    }


    public static String toJson(ResultEnum resultEnum) {
        Result<Object> result = new Result<>(resultEnum.getCode(), resultEnum.getMsg(), null);
        ObjectMapper mapper = new ObjectMapper();
        try {
            return mapper.writeValueAsString(result);
        } catch (JsonProcessingException e) {
            return resultEnum.getMsg();
        }
    }

    public static<T> Result<T> typeConvert(Object object, Class<T> type) {
        ObjectMapper mapper = new ObjectMapper();
        try {
            String str = mapper.writeValueAsString(object);
            Result<T> result = mapper.readValue(str, new TypeReference<Result<T>>() {});
            return result;
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }


}
