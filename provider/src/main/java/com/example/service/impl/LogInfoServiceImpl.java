package com.example.service.impl;

import com.example.entity.LogInfo;
import com.example.mapper.LogInfoMapper;
import com.example.service.LogInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.util.PageInfo;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-08-21
 */
@Service
public class LogInfoServiceImpl extends ServiceImpl<LogInfoMapper, LogInfo> implements LogInfoService {

    @Autowired
    private LogInfoMapper logInfoMapper;

    @Override
    public PageInfo<LogInfo> selectPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<LogInfo> logInfos = logInfoMapper.selectList(null);
        return new PageInfo<>(logInfos);
    }
}
