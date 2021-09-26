package com.example.util.system;

import cn.hutool.core.net.NetUtil;
import cn.hutool.core.util.NumberUtil;
import com.example.util.system.model.*;
import oshi.SystemInfo;
import oshi.hardware.CentralProcessor;
import oshi.hardware.CentralProcessor.TickType;
import oshi.hardware.GlobalMemory;
import oshi.hardware.HardwareAbstractionLayer;
import oshi.software.os.OSFileStore;
import oshi.util.Util;

import java.lang.management.ManagementFactory;
import java.lang.management.RuntimeMXBean;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

public class SysUtil {
    private static final SystemInfo systemInfo = new SystemInfo();
    private static final HardwareAbstractionLayer hardware;

    static {
        hardware = systemInfo.getHardware();
    }

    public static HardwareAbstractionLayer getHardware() {
        return hardware;
    }

    public static CentralProcessor getProcessor() {
        return hardware.getProcessor();
    }

    private static GlobalMemory getMemory() {
        return hardware.getMemory();
    }

    public static CpuInfo getCpuInfo() {
        return getCpuInfo(1000L);
    }

    private static CpuInfo getCpuInfo(long waitingTime) {
        return getCpuInfo(getProcessor(),waitingTime);
    }

    // CPU信息
    public static CpuInfo getCpuInfo(CentralProcessor processor, long waitingTime) {
        CpuInfo cpuInfo = new CpuInfo();
        long[] prevTicks = processor.getSystemCpuLoadTicks();
        Util.sleep(waitingTime);
        long[] ticks = processor.getSystemCpuLoadTicks();
        long nice = ticks[TickType.NICE.getIndex()] - prevTicks[TickType.NICE.getIndex()];
        long irq = ticks[TickType.IRQ.getIndex()] - prevTicks[TickType.IRQ.getIndex()];
        long softIrq = ticks[TickType.SOFTIRQ.getIndex()] - prevTicks[TickType.SOFTIRQ.getIndex()];
        long steal = ticks[TickType.STEAL.getIndex()] - prevTicks[TickType.STEAL.getIndex()];
        long cSys = ticks[TickType.SYSTEM.getIndex()] - prevTicks[TickType.SYSTEM.getIndex()];
        long user = ticks[TickType.USER.getIndex()] - prevTicks[TickType.USER.getIndex()];
        long ioWait = ticks[TickType.IOWAIT.getIndex()] - prevTicks[TickType.IOWAIT.getIndex()];
        long idle = ticks[TickType.IDLE.getIndex()] - prevTicks[TickType.IDLE.getIndex()];
        long totalCpu = Math.max(user + nice + cSys + idle + ioWait + irq + softIrq + steal, 0L);

        DecimalFormat format = new DecimalFormat("#.00");
        cpuInfo.setCpuNum(processor.getLogicalProcessorCount());
        cpuInfo.setSys(Double.parseDouble(format.format(cSys <= 0L ? 0.0D : 100.0D * (double)cSys / (double)totalCpu)));
        cpuInfo.setUsed(Double.parseDouble(format.format(user <= 0L ? 0.0D : 100.0D * (double)user / (double)totalCpu)));

        cpuInfo.setFree(Double.parseDouble(format.format(idle <= 0L ? 0.0D : 100.0D * (double)idle / (double)totalCpu)));
        cpuInfo.setCpuModel(processor.toString());
        return cpuInfo;
    }

    // 内存信息
    public static MemInfo getMemInfo() {
        GlobalMemory memory = getMemory();
        MemInfo mem = new MemInfo();
        long total = memory.getTotal();
        long available = memory.getAvailable();
        long used = memory.getTotal() - memory.getAvailable();

        mem.setTotal(NumberUtil.div(total, (1024 * 1024 * 1024), 2));
        mem.setFree(NumberUtil.div(available, (1024 * 1024 * 1024), 2));
        mem.setUsed(NumberUtil.div(used, (1024 * 1024 * 1024), 2));
        mem.setUsage(NumberUtil.mul(NumberUtil.div(used, total, 4), 100));
        return mem;
    }

    // Java虚拟机信息
    public static JvmInfo getJvmInfo() {
        JvmInfo jvmInfo = new JvmInfo();
        Properties props = System.getProperties();

        long totalMemory = Runtime.getRuntime().totalMemory();
        jvmInfo.setJvmTotal(NumberUtil.div(totalMemory, (1024 * 1024), 2));

        long maxMemory = Runtime.getRuntime().maxMemory();
        jvmInfo.setJvmMax(NumberUtil.div(maxMemory, (1024 * 1024), 2));

        long freeMemory = Runtime.getRuntime().freeMemory();
        jvmInfo.setJvmFree(NumberUtil.div(freeMemory, (1024 * 1024), 2));

        jvmInfo.setJvmUsage(NumberUtil.mul(NumberUtil.div(totalMemory - freeMemory, totalMemory, 4), 100));

        jvmInfo.setJvmVersion(props.getProperty("java.version"));
        jvmInfo.setJvmHome(props.getProperty("java.home"));

        RuntimeMXBean runtimeMXBean = ManagementFactory.getRuntimeMXBean();
        jvmInfo.setJvmName(runtimeMXBean.getName());
        long time = ManagementFactory.getRuntimeMXBean().getStartTime();
        Date date = new Date(time);
        jvmInfo.setJvmStartTime(date);
        return jvmInfo;
    }

    // 磁盘信息
    public static List<DiskInfo> getDiskInfo() {
        ArrayList<DiskInfo> diskInfos = new ArrayList<>();
        SystemInfo si = new SystemInfo();
        List<OSFileStore> fileStores = si.getOperatingSystem().getFileSystem().getFileStores();
        for (OSFileStore fs : fileStores) {
            DiskInfo diskInfo = new DiskInfo();
            long free = fs.getUsableSpace();
            long total = fs.getTotalSpace();
            long used = total - free;
            diskInfo.setDirName(fs.getMount());
            diskInfo.setSysTypeName(fs.getType());
            diskInfo.setTypeName(fs.getName());
            diskInfo.setTotal(NumberUtil.div(total, (1024 * 1024 * 1024), 2));
            diskInfo.setFree(NumberUtil.div(free, (1024 * 1024 * 1024), 2));
            diskInfo.setUsed(NumberUtil.div(used, (1024 * 1024 * 1024), 2));

            if (total == 0) {
                diskInfo.setUsage(0);
            } else {
                diskInfo.setUsage(NumberUtil.mul(NumberUtil.div(used, total, 4), 100));
            }
            diskInfos.add(diskInfo);
        }
        return diskInfos;
    }

    // 系统信息
    public static SysInfo getSysInfo() {
        SysInfo sysInfo = new SysInfo();
        Properties props = System.getProperties();
        try {
            sysInfo.setSysInfoComputerIp(InetAddress.getLocalHost().getHostName());
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        sysInfo.setSysInfoComputerIp(NetUtil.getLocalhostStr());
        sysInfo.setSysInfoOsName(props.getProperty("os.name"));
        sysInfo.setSysInfoOsArch(props.getProperty("os.arch"));
        sysInfo.setSysInfoUserDir(props.getProperty("user.dir"));
        sysInfo.setCpuInfo(getCpuInfo());
        sysInfo.setMemInfo(getMemInfo());
        sysInfo.setJvmInfo(getJvmInfo());
        sysInfo.setDiskInfo(getDiskInfo());
        return sysInfo;
    }
}
