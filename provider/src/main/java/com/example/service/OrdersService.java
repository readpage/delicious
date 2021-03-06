package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.Orders;
import com.example.entity.OrdersFoods;
import com.example.utils.PageInfo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-27
 */
public interface OrdersService extends IService<Orders> {
    void save(Integer uid, String dNumber, List<OrdersFoods> ordersFoods);

    PageInfo<Orders> page(int pageNum, int PageSize, Integer uid, String number);

    List<Orders> selectSelf(String username);

    void removeByIds(List<Integer> list);
}
