package com.example.service.impl;

import com.example.entity.User;
import com.example.mapper.UserRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
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
public class UserServiceImpl implements UserDetailsService, UserService {
    @Autowired
    private UserRoleMapper userRoleMapper;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = this.selectByUsername(s);
        if (user == null) {
            throw new UsernameNotFoundException("");
        }
        return user;
    }

    @Override
    public User selectByUsername(String username) {
        return userRoleMapper.selectByUsername(username);
    }
}
