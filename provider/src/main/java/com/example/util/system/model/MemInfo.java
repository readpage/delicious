package com.example.util.system.model;

import cn.hutool.core.util.NumberUtil;

//內存相关信息,单位GB

public class MemInfo {
    // 内存总量
    private double total;

    //已用内存
    private double used;

    //剩余内存
    private double free;

    //内存使用率
    private double usage;

    public double getTotal() {
        return NumberUtil.div(total, (1024 * 1024 * 1024), 2);
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public double getUsed() {
        return NumberUtil.div(used, (1024 * 1024 * 1024), 2);
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

    public double getUsage() {
        return usage;
    }

    public void setUsage(double usage) {
        this.usage = usage;
    }

    @Override
    public String toString() {
        return "MemInfo{" +
                "total=" + total +
                ", used=" + used +
                ", free=" + free +
                ", usage=" + usage +
                '}';
    }
}