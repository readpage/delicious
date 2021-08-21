package com.example.utils.log;

public class BrowserInfo {
    // 浏览器
    private String browser;

    // 操作系统
    private String os;

    //设备类型
    private String deviceType;

    // ip地址
    private String ipAddr;

    // 地理位置
    private String location;

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

    @Override
    public String toString() {
        return "BrowserInfo{" +
                "browser='" + browser + '\'' +
                ", os='" + os + '\'' +
                ", deviceType='" + deviceType + '\'' +
                ", ipAddr='" + ipAddr + '\'' +
                ", location='" + location + '\'' +
                '}';
    }
}
