package com.example.util.system.model;

// CPU相关信息
public class CpuInfo {

    // 核心数
    private Integer cpuNum;

    // CPU系统使用率
    private double sys;

    // CPU用户使用率
    private double used;

    // CPU当前空闲率
    private double free;

    // CPU型号信息
    private String cpuModel;


    public Integer getCpuNum() {
        return cpuNum;
    }

    public void setCpuNum(Integer cpuNum) {
        this.cpuNum = cpuNum;
    }

    public double getSys() {
        return sys;
    }

    public void setSys(double sys) {
        this.sys = sys;
    }

    public double getUsed() {
        return used;
    }

    public void setUsed(double used) {
        this.used = used;
    }

    public double getFree() {
        return free;
    }

    public void setFree(double free) {
        this.free = free;
    }

    public String getCpuModel() {
        return cpuModel;
    }

    public void setCpuModel(String cpuModel) {
        this.cpuModel = cpuModel;
    }

    @Override
    public String toString() {
        return "CpuInfo{" +
                "cpuNum=" + cpuNum +
                ", sys=" + sys +
                ", used=" + used +
                ", free=" + free +
                ", cpuModel='" + cpuModel + '\'' +
                '}';
    }
}
