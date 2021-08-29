package com.example.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.MenuRole;
import com.example.entity.Role;
import com.example.mapper.RoleMapper;
import com.example.service.MenuRoleService;
import com.example.service.RoleService;
import com.example.service.UserRoleService;
import com.example.utils.PageInfo;
import com.example.utils.result.ResultEnum;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
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
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private MenuRoleService menuRoleService;

    @Autowired
    private UserRoleService userRoleService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public boolean removeById(Integer id) throws Exception {
        if (!(menuRoleService.removeByRId(id) && userRoleService.removeByRId(id))) {
            throw new Exception(ResultEnum.DELETE_FAIL.getMsg());
        }
        return roleMapper.deleteById(id) > 0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean add(Role role, List<Integer> menuIdList) {

        if (roleMapper.insert(role) < 0) {
            return false;
        }

        ArrayList<MenuRole> menuRoles = new ArrayList<>();
        for (Integer item : menuIdList) {
            MenuRole menuRole = new MenuRole();
            menuRole.setMid(item);
            menuRole.setRid(role.getId());
            menuRoles.add(menuRole);
        }

        return menuRoleService.saveBatch(menuRoles);
    }

    @Override
    public PageInfo<Role> selectPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Role> roles = roleMapper.selectList(null);
        return new PageInfo<>(roles);
    }
}
