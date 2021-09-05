package com.example.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.Role;
import com.example.entity.User;
import com.example.entity.UserRole;
import com.example.mapper.UserMapper;
import com.example.service.UserRoleService;
import com.example.service.UserService;
import com.example.utils.PageInfo;
import com.example.utils.result.ResultEnum;
import com.example.utils.result.ResultUtils;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
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
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private PasswordEncoder pw;

    @Autowired
    private UserRoleService userRoleService;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean mySave(User user) throws Exception {
        String result = ResultUtils.toJson(ResultEnum.CREATE_FAIL);
        user.setPassword(pw.encode(user.getPassword()));
        if (userMapper.insert(user) < 0) {
            throw new Exception(result);
        }
        ArrayList<UserRole> userRoles = new ArrayList<>();
        for (Role role : user.getRoles()) {
            UserRole userRole = new UserRole();
            userRole.setUid(user.getId());
            userRole.setRid(role.getId());
            userRoles.add(userRole);
        }

        if (!userRoleService.saveBatch(userRoles)) {
            throw new Exception(result);
        }
        return true;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean myUpdateById(User user) throws Exception {
        String result = ResultUtils.toJson(ResultEnum.UPDATE_FAIL);
        if (!userRoleService.removeByUId(user.getId()) ) {
            throw new Exception(result);
        }
        if (!(user.getPassword() == null || "".equals(user.getPassword()))) {
            user.setPassword(pw.encode(user.getPassword()));
        }

        ArrayList<UserRole> userRoles = new ArrayList<>();

        for (Role role : user.getRoles()) {
            UserRole userRole = new UserRole();
            userRole.setUid(user.getId());
            userRole.setRid(role.getId());
            userRoles.add(userRole);
        }

        if (!userRoleService.saveBatch(userRoles)) {
            throw new Exception(result);
        }

        if (userMapper.updateById(user) < 0) {
            throw new Exception(result);
        }

        return true;
    }

    @Override
    public PageInfo<User> selectPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<User> users = userMapper.selectPage();
        return new PageInfo<User>(users);
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

    @Override
    public User selectByUsername(String username) {
        return userMapper.selectByUsername(username);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean myRemoveByIds(List<Integer> list) throws Exception {
        String result = ResultUtils.toJson(ResultEnum.DELETE_FAIL);
        for (Integer e : list) {
            if (!userRoleService.removeByUId(e)) {
                throw new Exception(result);
            }
            if (userMapper.deleteById(e) < 0) {
                throw new Exception(result);
            }
        }

        return true;
    }

}
