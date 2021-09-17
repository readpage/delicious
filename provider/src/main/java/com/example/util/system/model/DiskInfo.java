package com.example.util.system.model;

// 系统文件相关信息
public class DiskInfo {
    // 盘符路径
    private String dirName;

    // 盘符类型
    private String sysTypeName;

    // 文件类型
    private String typeName;

    // 总大小
    private Double total;

    // 剩余大小
    private Double free;

    // 已经使用量
    private Double used;

    // 资源的使用率
    private double usage;

    public String getDirName() {
        return dirName;
    }

    public void setDirName(String dirName) {
        this.dirName = dirName;
    }

    public String getSysTypeName() {
        return sysTypeName;
    }

    public void setSysTypeName(String sysTypeName) {
        this.sysTypeName = sysTypeName;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Double getFree() {
        return free;
    }

    public void setFree(Double free) {
        this.free = free;
    }

    public Double getUsed() {
        return used;
    }

    public void setUsed(Double used) {
        this.used = used;
    }

    public double getUsage() {
        return usage;
    }

    public void setUsage(double usage) {
        this.usage = usage;
    }

    @Override
    public String toString() {
        return "DiskInfo{" +
                "dirName='" + dirName + '\'' +
                ", sysTypeName='" + sysTypeName + '\'' +
                ", typeName='" + typeName + '\'' +
                ", total=" + total +
                ", free=" + free +
                ", used=" + used +
                ", usage=" + usage +
                '}';
    }
}
