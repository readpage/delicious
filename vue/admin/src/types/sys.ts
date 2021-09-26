
interface IsysInfo {
  // 服务名称
  sysInfoComputerName: string
  // 服务器IP
  sysInfoComputerIp: string
  //项目路径
  sysInfoUserDir: string
  //操作系统
  sysInfoOsName: string
  //系统构造
  sysInfoOsArch: string
  //CPU信息
  cpuInfo: IcpuInfo
  //磁盘相关信息
  diskInfo: IdiskInfo[]
  //內存相关信息
  memInfo: ImemInfo
  //JVM相关信息
  jvmInfo: IjvmInfo
}

interface IcpuInfo {
  // 核心数
  cpuNum: number
  // CPU系统使用率
  sys: number
  // CPU用户使用率
  used: number
  // CPU当前空闲率
  free: number
  // CPU型号信息
  cpuModel: string
}

interface IdiskInfo {
  // 盘符路径
  dirName: string
  // 盘符类型
  sysTypeName: string
  // 文件类型
  typeName: string
  // 总大小
  total: number
  // 剩余大小
  free: number
  // 已经使用量
  used: number
  // 资源的使用率
  usage: number
}

interface IjvmInfo {
  // JVM最大可用内存总数(M)
  jvmMax: number
  // 当前JVM占用的内存总数(M)
  jvmTotal: number
  // JVM空闲内存(M)
  jvmFree: number
  // JVM使用率
  jvmUsage: number
  // JDK版本
  jvmVersion: string
  // JDK路径
  jvmHome: string
  // JDK名称
  jvmName: string
  // JDK启动时间
  jvmStartTime: string
}

interface ImemInfo {
  // 内存总量
  total: number
  // 已用内存
  used: number
  // 剩余内存
  free: number
  // 内存使用率
  usage: number
}
