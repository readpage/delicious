package com.example.util.result;

public enum ResultEnum {
    SUCCESS(200, "ζε!π"),
    ERROR(500, "ιθ――!π₯"),
    NO_PERMISSION(403, "ζ²‘ζζι!π₯"),
    USER_NOT_LOGIN(501, "η¨ζ·ζͺη»ε½!π"),
    ACCOUNT_NOT_EXIST(502, "θ΄¦ε·δΈε­ε¨!π"),
    PASSWORD_ERROR(503, "ε―η ιθ――!π"),
    TOKEN_IS_INVALID(504, "ζ ζζθΏζtokenπ°"),
    ACCOUNT_EXPIRED(505, "θ΄¦ε·ε·²θΏζ!π£"),
    LOGIN_SUCCESS(201, "η»ε½ζε!π"),
    LOGIN_FAIL(506, "η»ε½ε€±θ΄₯!π"),
    REFRESH_SUCCESS(202, "ε·ζ°ζε!π€¨"),
    REFRESH_FAIL(507, "θ΄¦ζ·ε·²θΏζ,θ―·ιζ°η»ε½!π"),
    LOGOUT_SUCCESS(203, "ζ³¨ιζε!π"),
    LOGOUT_FAIL(508, "ζ³¨ιε€±θ΄₯!π£"),
    CREATE_SUCCESS(204, "ζ·»ε ζε!π"),
    CREATE_FAIL(509, "ζ·»ε ε€±θ΄₯!π©"),
    RETRIEVE_SUCCESS(205, "ζ₯θ―’ζε!π"),
    RETRIEVE_FAIL(510, "ζ₯θ―’ε€±θ΄₯!π"),
    UPDATE_SUCCESS(206, "ζ΄ζ°ζε!π"),
    UPDATE_FAIL(511, "ζ΄ζ°ε€±θ΄₯!π¨"),
    DELETE_SUCCESS(207, "ε ι€ζε!π"),
    DELETE_FAIL(512, "ε ι€ε€±θ΄₯!π‘"),
    ACCOUNT_DISABLE(513, "θ΄¦ζ·ε·²η¦η¨!π±")
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
