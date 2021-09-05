package com.example.mapper;

import com.example.entity.LogInfo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

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
}
