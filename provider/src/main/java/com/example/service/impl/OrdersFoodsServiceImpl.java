package com.example.service.impl;

import com.example.entity.OrdersFoods;
import com.example.mapper.OrdersFoodsMapper;
import com.example.service.OrdersFoodsService;
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
 * @since 2021-09-27
 */
@Service
public class OrdersFoodsServiceImpl extends ServiceImpl<OrdersFoodsMapper, OrdersFoods> implements OrdersFoodsService {

    @Autowired
    private OrdersFoodsMapper ordersFoodsMapper;

    @Override
    public boolean removeByOids(List<Integer> list) {
        return ordersFoodsMapper.deleteBatchByOids(list) > 0;
    }

    @Override
    public boolean removeByFids(List<Integer> list) {
        return ordersFoodsMapper.deleteBatchByFids(list) > 0;
    }
}
