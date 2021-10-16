package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.OrdersFoods;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-27
 */
public interface OrdersFoodsMapper extends BaseMapper<OrdersFoods> {
    int deleteBatchByOids(List<Integer> list);

    int deleteBatchByFids(List<Integer> list);
}
