package com.example.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.UserRole;
import com.example.mapper.UserRoleMapper;
import com.example.service.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-29
 */
@Service
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole> implements UserRoleService {

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Override
    public boolean removeByRId(Integer rid) {
        return userRoleMapper.delete(
                new QueryWrapper<UserRole>()
                        .eq("rid", rid)
        ) > 0;
    }

    @Override
    public boolean removeByUId(Integer uid) {
        return userRoleMapper.delete(
                new QueryWrapper<UserRole>()
                .eq("uid", uid)
        ) > 0;
    }
}
