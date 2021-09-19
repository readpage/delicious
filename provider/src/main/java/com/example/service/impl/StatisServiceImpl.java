package com.example.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.entity.Statis;
import com.example.mapper.StatisMapper;
import com.example.service.StatisService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-15
 */
@Service
public class StatisServiceImpl extends ServiceImpl<StatisMapper, Statis> implements StatisService {
    @Autowired
    private StatisMapper statisMapper;

    @Override
    public List<Statis> recent() {
        return statisMapper.selectList(
                new QueryWrapper<Statis>()
                .last("WHERE DATE_SUB(NOW(), INTERVAL 7 DAY) < create_time")
        );
    }
}
