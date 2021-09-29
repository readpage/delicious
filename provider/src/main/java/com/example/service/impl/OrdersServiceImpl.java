package com.example.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.Orders;
import com.example.entity.OrdersFoods;
import com.example.mapper.OrdersMapper;
import com.example.service.OrdersFoodsService;
import com.example.service.OrdersService;
import com.example.util.PageInfo;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
public class OrdersServiceImpl extends ServiceImpl<OrdersMapper, Orders> implements OrdersService {

    @Autowired
    private OrdersMapper ordersMapper;

    @Autowired
    private OrdersFoodsService ordersFoodsService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void save(Integer uid, List<OrdersFoods> ordersFoods) {
        Orders orders = new Orders();
        orders.setUid(uid);
        ordersMapper.insert(orders);
        for (OrdersFoods ordersFood : ordersFoods) {
            ordersFood.setOid(orders.getId());
        }
        ordersFoodsService.saveBatch(ordersFoods);
    }

    @Override
    public PageInfo<Orders> selectPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Orders> orders = ordersMapper.selectPage();
        return new PageInfo<>(orders);
    }
}
