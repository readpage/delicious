package com.example.util.system.model;

import java.util.List;

public class SysInfo {

    // 服务名称
    private String sysInfoComputerName;

    // 服务器IP
    private String sysInfoComputerIp;

    //项目路径
    private String sysInfoUserDir;

    //操作系统
    private String sysInfoOsName;

    //系统构造
    private String sysInfoOsArch;

    //CPU信息
    private CpuInfo cpuInfo;

    //磁盘相关信息
    private List<DiskInfo> diskInfo;

    //內存相关信息
    private MemInfo memInfo;

    //JVM相关信息
    private JvmInfo jvmInfo;

    public String getSysInfoComputerName() {
        return sysInfoComputerName;
    }

    public void setSysInfoComputerName(String sysInfoComputerName) {
        this.sysInfoComputerName = sysInfoComputerName;
    }

    public String getSysInfoComputerIp() {
        return sysInfoComputerIp;
    }

    public void setSysInfoComputerIp(String sysInfoComputerIp) {
        this.sysInfoComputerIp = sysInfoComputerIp;
    }

    public String getSysInfoUserDir() {
        return sysInfoUserDir;
    }

    public void setSysInfoUserDir(String sysInfoUserDir) {
        this.sysInfoUserDir = sysInfoUserDir;
    }

    public String getSysInfoOsName() {
        return sysInfoOsName;
    }

    public void setSysInfoOsName(String sysInfoOsName) {
        this.sysInfoOsName = sysInfoOsName;
    }

    public String getSysInfoOsArch() {
        return sysInfoOsArch;
    }

    public void setSysInfoOsArch(String sysInfoOsArch) {
        this.sysInfoOsArch = sysInfoOsArch;
    }

    public CpuInfo getCpuInfo() {
        return cpuInfo;
    }

    public void setCpuInfo(CpuInfo cpuInfo) {
        this.cpuInfo = cpuInfo;
    }

    public List<DiskInfo> getDiskInfo() {
        return diskInfo;
    }

    public void setDiskInfo(List<DiskInfo> diskInfo) {
        this.diskInfo = diskInfo;
    }

    public MemInfo getMemInfo() {
        return memInfo;
    }

    public void setMemInfo(MemInfo memInfo) {
        this.memInfo = memInfo;
    }

    public JvmInfo getJvmInfo() {
        return jvmInfo;
    }

    public void setJvmInfo(JvmInfo jvmInfo) {
        this.jvmInfo = jvmInfo;
    }

    @Override
    public String toString() {
        return "SysInfo{" +
                "sysInfoComputerName='" + sysInfoComputerName + '\'' +
                ", sysInfoComputerIp='" + sysInfoComputerIp + '\'' +
                ", sysInfoUserDir='" + sysInfoUserDir + '\'' +
                ", sysInfoOsName='" + sysInfoOsName + '\'' +
                ", sysInfoOsArch='" + sysInfoOsArch + '\'' +
                ", cpu=" + cpuInfo +
                ", disk=" + diskInfo +
                ", memInfo=" + memInfo +
                ", jvmInfo=" + jvmInfo +
                '}';
    }
}
