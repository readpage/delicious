package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.LogInfo;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author f1dao😂
 * @since 2021-08-21
 */
public interface LogInfoMapper extends BaseMapper<LogInfo> {
   int clearAll();

   // 日访问量
   int selectUv();
}
