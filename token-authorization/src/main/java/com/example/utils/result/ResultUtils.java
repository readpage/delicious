package com.example.utils.result;


public class ResultUtils<T> {

    public static<T> Result<T> ok(Integer code, String msg, T data) {
        return new Result<>(code, msg, data);
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
        return ok("");
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

}
