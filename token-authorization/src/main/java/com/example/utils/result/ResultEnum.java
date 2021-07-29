package com.example.utils.result;

public enum ResultEnum {
    SUCCESS(200, "成功!🙂"),
    ERROR(500, "错误!😥"),
    NO_PERMISSION(403, "没有权限!😥"),
    USER_NOT_LOGIN(2001, "用户未登录!😜"),
    ACCOUNT_NOT_EXIST(2002, "账号不存在!😝"),
    PASSWORD_ERROR(2003, "密码错误!😑"),
    TOKEN_IS_INVALID(2004, "无效或过期token😰"),
    ACCOUNT_EXPIRED(2005, "账号已过期!😣"),
    LOGIN_SUCCESS(200, "登录成功!😀"),
    LOGOUT_SUCCESS(200, "注销成功!😃"),
    LOGOUT_FAIL(2006, "注销失败!😣"),
    CREATE_SUCCESS(200, "添加成功!😎"),
    RETRIEVE_SUCCESS(200, "查询成功!🤔"),
    UPDATE_SUCCESS(200, "更新成功!😏"),
    DELETE_SUCCESS(200, "删除成功!☺"),
    CREATE_FAIL(3001, "添加失败!😩"),
    RETRIEVE_FAIL(3002, "查询失败!😅"),
    UPDATE_FAIL(3003, "更新失败!😨"),
    DELETE_FAIL(3004, "删除失败!😡")
    ;

    private Integer code;
    private String msg;

    ResultEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
