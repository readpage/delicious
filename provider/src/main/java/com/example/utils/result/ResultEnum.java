package com.example.utils.result;

public enum ResultEnum {
    SUCCESS(200, "成功!🙂"),
    ERROR(500, "错误!😥"),
    NO_PERMISSION(403, "没有权限!😥"),
    USER_NOT_LOGIN(501, "用户未登录!😜"),
    ACCOUNT_NOT_EXIST(502, "账号不存在!😝"),
    PASSWORD_ERROR(503, "密码错误!😑"),
    TOKEN_IS_INVALID(504, "无效或过期token😰"),
    ACCOUNT_EXPIRED(505, "账号已过期!😣"),
    LOGIN_SUCCESS(201, "登录成功!😀"),
    LOGIN_FAIL(506, "登录失败!😞"),
    REFRESH_SUCCESS(202, "刷新成功!🤨"),
    REFRESH_FAIL(507, "账户已过期,请重新登录!😖"),
    LOGOUT_SUCCESS(203, "注销成功!😃"),
    LOGOUT_FAIL(508, "注销失败!😣"),
    CREATE_SUCCESS(204, "添加成功!😎"),
    CREATE_FAIL(509, "添加失败!😩"),
    RETRIEVE_SUCCESS(205, "查询成功!😍"),
    RETRIEVE_FAIL(510, "查询失败!😅"),
    UPDATE_SUCCESS(206, "更新成功!😏"),
    UPDATE_FAIL(511, "更新失败!😨"),
    DELETE_SUCCESS(207, "删除成功!😉"),
    DELETE_FAIL(512, "删除失败!😡"),
    ACCOUNT_DISABLE(513, "账户已禁用!😱"),
    VALUE_EXIST(514, "该值已存在")
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
