package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.Menu;
import com.example.entity.MenuRole;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-29
 */
public interface MenuRoleService extends IService<MenuRole> {
    boolean save(MenuRole menuRole);

    boolean removeByMId(Integer mid);

    boolean removeByRId(Integer rid);

    List<Menu> selectByName(List<String> names);
}
