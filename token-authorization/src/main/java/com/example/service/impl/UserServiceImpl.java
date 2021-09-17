package com.example.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.User;
import com.example.mapper.UserMapper;
import com.example.service.UserService;
import com.example.util.result.ResultEnum;
import com.example.util.result.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-28
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserDetailsService, UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public UserDetails loadUserByUsername(String s) {
        User user = this.selectByUsername(s);
        if (user == null) {
            throw new UsernameNotFoundException(ResultUtils.toJson(ResultEnum.ACCOUNT_NOT_EXIST));
        } else if(!user.isStatus()) {
            throw new DisabledException(ResultUtils.toJson(ResultEnum.ACCOUNT_DISABLE));
        }
        return user;
    }

    @Override
    public User selectByUsername(String username) {
        return userMapper.selectByUsername(username);
    }

    @Override
    public boolean updateByUsername(User user) {
        return userMapper.update(user,
                new QueryWrapper<User>()
                .eq("username", user.getUsername())
        ) > 0 ;
    }
}
