package com.example.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.Menu;
import com.example.mapper.MenuMapper;
import com.example.service.MenuRoleService;
import com.example.service.MenuService;
import com.example.utils.result.ResultEnum;
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
 * @since 2021-07-28
 */
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements MenuService {
    @Autowired
    private MenuMapper menuMapper;

    @Autowired
    private MenuRoleService menuRoleService;

    @Override
    public List<Menu> selectLike(List<Integer> types) {
        return menuMapper.selectList(
                new QueryWrapper<Menu>()
                .in("type", types)
        );
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public boolean removeById(Integer id) throws Exception {
        if (!menuRoleService.removeByMId(id)) {
            throw new Exception(ResultEnum.DELETE_FAIL.getMsg());
        }
        return menuMapper.deleteById(id) > 0;
    }

    @Override
    public List<Menu> selectByName(List<String> names) {
        return menuMapper.selectByName(names);
    }

}
