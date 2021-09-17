package com.example.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.example.util.log.BrowserInfo;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 *
 * </p>
 *
 * @author f1dao😂
 * @since 2021-08-21
 */
@ApiModel(value="LogInfo对象", description="")
public class LogInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    public LogInfo() {
        super();
    }

    public LogInfo(BrowserInfo browserInfo) {
        this.browser = browserInfo.getBrowser();
        this.os = browserInfo.getOs();
        this.deviceType = browserInfo.getDeviceType();
        this.ipAddr = browserInfo.getIpAddr();
        this.location = browserInfo.getLocation();
    }

    @ApiModelProperty(value = "日志ID")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "请求方式")
    private String requestMethod;

    @ApiModelProperty(value = "操作方法")
    private String method;

    @ApiModelProperty(value = "请求地址")
    private String url;

    @ApiModelProperty(value = "浏览器")
    private String browser;

    @ApiModelProperty(value = "操作系统")
    private String os;

    @ApiModelProperty(value = "设备类型")
    private String deviceType;

    @ApiModelProperty(value = "IP地址")
    private String ipAddr;

    @ApiModelProperty(value = "地理位置")
    private String location;

    @ApiModelProperty(value = "操作信息")
    private String msg;

    @ApiModelProperty(value = "异常信息")
    private String error;

    @ApiModelProperty(value = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRequestMethod() {
        return requestMethod;
    }

    public void setRequestMethod(String requestMethod) {
        this.requestMethod = requestMethod;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getBrowser() {
        return browser;
    }

    public void setBrowser(String browser) {
        this.browser = browser;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    public String getIpAddr() {
        return ipAddr;
    }

    public void setIpAddr(String ipAddr) {
        this.ipAddr = ipAddr;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "LogInfo{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", requestMethod='" + requestMethod + '\'' +
                ", method='" + method + '\'' +
                ", url='" + url + '\'' +
                ", browser='" + browser + '\'' +
                ", os='" + os + '\'' +
                ", deviceType='" + deviceType + '\'' +
                ", ipAddr='" + ipAddr + '\'' +
                ", location='" + location + '\'' +
                ", msg='" + msg + '\'' +
                ", error='" + error + '\'' +
                ", createTime=" + createTime +
                '}';
    }
}
