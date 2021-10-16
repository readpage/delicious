package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.OrdersFoods;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-27
 */
public interface OrdersFoodsService extends IService<OrdersFoods> {
    boolean removeByOids(List<Integer> list);

    boolean removeByFids(List<Integer> list);
}
