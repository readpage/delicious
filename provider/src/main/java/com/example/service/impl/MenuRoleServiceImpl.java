package com.example.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.entity.Menu;
import com.example.entity.MenuRole;
import com.example.mapper.MenuRoleMapper;
import com.example.service.MenuRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-29
 */
@Service
public class MenuRoleServiceImpl extends ServiceImpl<MenuRoleMapper, MenuRole> implements MenuRoleService {

    @Autowired
    private MenuRoleMapper menuRoleMapper;

    @Override
    public boolean save(MenuRole menuRole) {
        int i = menuRoleMapper.selectCount(new QueryWrapper<>(menuRole));
        if (i == 0) {
            return menuRoleMapper.insert(menuRole) > 0;
        }
        return false;
    }

    @Override
    public boolean removeByMId(Integer mid) {
        return menuRoleMapper.delete(
                new QueryWrapper<MenuRole>()
                .eq("mid", mid)
        ) > 0;
    }

    @Override
    public boolean removeByRId(Integer rid) {
        return menuRoleMapper.delete(
                new QueryWrapper<MenuRole>()
                .eq("rid", rid)
        ) > 0;
    }

    @Override
    public List<Menu> selectByName(List<String> names) {
        return menuRoleMapper.selectByName(names);
    }
}
