package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.Menu;
import com.example.entity.MenuRole;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-29
 */
public interface MenuRoleMapper extends BaseMapper<MenuRole> {
    List<Menu> selectAll();
}
