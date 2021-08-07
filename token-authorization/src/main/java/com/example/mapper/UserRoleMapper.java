package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.User;

public interface UserRoleMapper extends BaseMapper<User> {
    User selectByUsername(String username);
}
