package com.example.service;

import com.example.entity.LogInfo;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.utils.PageInfo;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-08-21
 */
public interface LogInfoService extends IService<LogInfo> {

    PageInfo<LogInfo> selectPage(int pageNum, int pageSize);

}
