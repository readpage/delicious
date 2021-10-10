package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.Foods;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-13
 */
public interface FoodsMapper extends BaseMapper<Foods> {
    List<Foods> selectRandom(int Num);
    
    List<Foods> like(String type);
}
