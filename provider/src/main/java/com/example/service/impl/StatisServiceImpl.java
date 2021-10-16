package com.example.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.Statis;
import com.example.mapper.FoodsMapper;
import com.example.mapper.OrdersMapper;
import com.example.mapper.StatisMapper;
import com.example.mapper.UserMapper;
import com.example.service.StatisService;
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
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private FoodsMapper foodsMapper;
    @Autowired
    private OrdersMapper ordersMapper;

    @Override
    public List<Statis> recent() {
        return statisMapper.selectList(
                new QueryWrapper<Statis>()
                .last("WHERE DATE_SUB(NOW(), INTERVAL 7 DAY) < create_time")
        );
    }

    @Override
    public Statis total() {
        Statis statis = new Statis();
        statis.setUv(statisMapper.selectOne(
                new QueryWrapper<Statis>()
                        .select("SUM(uv) as uv")).getUv());
        statis.setUserCount(userMapper.selectCount(null));
        statis.setFoodsCount(foodsMapper.selectCount(null));
        statis.setSalesCount(ordersMapper.selectCount(null));
        return statis;
    }
}
