package com.example.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.Foods;
import com.example.entity.Orders;
import com.example.entity.OrdersFoods;
import com.example.mapper.OrdersMapper;
import com.example.service.FoodsService;
import com.example.service.OrdersFoodsService;
import com.example.service.OrdersService;
import com.example.service.UserService;
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

    @Autowired
    private UserService userService;

    @Autowired
    private FoodsService foodsService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void save(Integer uid, String dNumber, List<OrdersFoods> ordersFoods) {
        Orders orders = new Orders();
        orders.setUid(uid);
        orders.setdNumber(dNumber);
        ordersMapper.insert(orders);
        for (OrdersFoods ordersFood : ordersFoods) {
            ordersFood.setOid(orders.getId());
            Foods food = foodsService.getById(ordersFood.getFid());
            food.setSales(food.getSales()+ordersFood.getCount());
            foodsService.updateById(food);
        }
        ordersFoodsService.saveBatch(ordersFoods);
    }

    @Override
    public PageInfo<Orders> page(int pageNum, int pageSize, Integer uid, String number) {
        PageHelper.startPage(pageNum, pageSize);
        List<Orders> orders = ordersMapper.like(uid, number);
        return new PageInfo<>(orders);
    }

    @Override
    public List<Orders> selectSelf(String username) {
        Integer id = userService.selectByUsername(username).getId();
        return ordersMapper.like(id, null);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void removeByIds(List<Integer> list) {
        ordersFoodsService.removeByOids(list);
        ordersMapper.deleteBatchIds(list);
    }
}
