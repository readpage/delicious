package com.example.service;

import com.example.entity.MenuRole;
import com.baomidou.mybatisplus.extension.service.IService;

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
}
