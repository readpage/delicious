package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.Desk;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-27
 */
public interface DeskMapper extends BaseMapper<Desk> {
    List<Desk> like(Integer number);
}
