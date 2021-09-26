package com.example.util.system.model;

import java.util.Date;

public class JvmInfo {

    // JVM最大可用内存总数(M)
    private double jvmMax;

    // jvmInfo
    // 当前JVM占用的内存总数(M)
    private double jvmTotal;

    // JVM空闲内存(M)
    private double jvmFree;

    // JVM使用率
    private double JvmUsage;

    //JDK版本
    private String jvmVersion;

    // JDK路径
    private String jvmHome;

    // JDK名称
    private String jvmName;

    // JDK启动时间
    private Date jvmStartTime;

    public double getJvmMax() {
        return jvmMax;
    }

    public void setJvmMax(double jvmMax) {
        this.jvmMax = jvmMax;
    }

    public double getJvmTotal() {
        return jvmTotal;
    }

    public void setJvmTotal(double jvmTotal) {
        this.jvmTotal = jvmTotal;
    }

    public double getJvmFree() {
        return jvmFree;
    }

    public void setJvmFree(double jvmFree) {
        this.jvmFree = jvmFree;
    }

    public double getJvmUsage() {
        return JvmUsage;
    }

    public void setJvmUsage(double jvmUsage) {
        JvmUsage = jvmUsage;
    }

    public String getJvmVersion() {
        return jvmVersion;
    }

    public void setJvmVersion(String jvmVersion) {
        this.jvmVersion = jvmVersion;
    }

    public String getJvmHome() {
        return jvmHome;
    }

    public void setJvmHome(String jvmHome) {
        this.jvmHome = jvmHome;
    }

    public String getJvmName() {
        return jvmName;
    }

    public void setJvmName(String jvmName) {
        this.jvmName = jvmName;
    }

    public Date getJvmStartTime() {
        return jvmStartTime;
    }

    public void setJvmStartTime(Date jvmStartTime) {
        this.jvmStartTime = jvmStartTime;
    }

    @Override
    public String toString() {
        return "JvmInfo{" +
                "jvmMax=" + jvmMax +
                ", jvmTotal=" + jvmTotal +
                ", jvmFree=" + jvmFree +
                ", JvmUsage=" + JvmUsage +
                ", jvmVersion='" + jvmVersion + '\'' +
                ", jvmHome='" + jvmHome + '\'' +
                ", jvmName='" + jvmName + '\'' +
                ", jvmStartTime=" + jvmStartTime +
                '}';
    }
}
