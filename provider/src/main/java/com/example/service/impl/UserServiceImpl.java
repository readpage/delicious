package com.example.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.User;
import com.example.mapper.UserMapper;
import com.example.service.UserRoleService;
import com.example.service.UserService;
import com.example.utils.PageInfo;
import com.example.utils.result.ResultEnum;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
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
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private PasswordEncoder pw;

    @Autowired
    private UserRoleService userRoleService;

    @Override
    public boolean save(User user) {
        user.setPassword(pw.encode(user.getPassword()));
        return userMapper.insert(user) > 0;
    }

    @Override
    public PageInfo<User> selectPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<User> users = userMapper.selectAll();
        return new PageInfo<>(users);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public boolean removeById(Integer id) throws Exception {
        if (!userRoleService.removeByUId(id)) {
            throw new Exception(ResultEnum.DELETE_FAIL.getMsg());
        }
        return userMapper.deleteById(id) > 0;
    }

    @Override
    public boolean selectIsUser(String username) {
        return userMapper.selectCount(
                new QueryWrapper<User>()
                .eq("username", username)
        ) > 0;
    }


}
