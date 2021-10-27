package com.example.service.impl;

import cn.hutool.core.lang.ObjectId;
import cn.hutool.core.util.RandomUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.Role;
import com.example.entity.User;
import com.example.entity.UserRole;
import com.example.mapper.UserMapper;
import com.example.service.AuthService;
import com.example.service.UserRoleService;
import com.example.service.UserService;
import com.example.util.PageInfo;
import com.example.util.result.Result;
import com.example.util.result.ResultEnum;
import com.example.util.result.ResultUtils;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

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
    private AuthService authService;

    @Autowired
    private UserRoleService userRoleService;
    private String randomName() {
        try {
            File path = new File("");
            File file = new File(path.getAbsolutePath(), "/static/private/file/username.txt");
            BufferedReader reader = new BufferedReader(new FileReader(file));;
            ArrayList<String> list = new ArrayList<>();
            String line = null;
            while ((line = reader.readLine()) != null) {
                list.add(line);
            }
            reader.close();
            Random random = new Random();
            int index = random.nextInt(list.size()); //产生的索引值的大小在0-size之间
            String name = list.get(index);
            return name;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void mySave(User user) {
        user.setPassword(pw.encode(user.getPassword()));
        userMapper.insert(user);
        ArrayList<UserRole> userRoles = new ArrayList<>();
        for (Role role : user.getRoles()) {
            UserRole userRole = new UserRole();
            userRole.setUid(user.getId());
            userRole.setRid(role.getId());
            userRoles.add(userRole);
        }
        userRoleService.saveBatch(userRoles);
    }

    @Override
    public Result<Object> auto(HttpServletRequest request) {
        User user = new User();
        user.setNickname(randomName());
        user.setUsername(ObjectId.next());
        String password = RandomUtil.randomString(10);
        user.setPassword(password);
        user.setStatus(true);

        Role role = new Role();
        role.setId(3);
        ArrayList<Role> list = new ArrayList<>();
        list.add(role);
        user.setRoles(list);
        System.out.println(user);
        mySave(user);
        return authService.login(request, user.getUsername(), password);
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
    public PageInfo<User> page(int pageNum, int pageSize, String nickname) {
        PageHelper.startPage(pageNum, pageSize);
        List<User> users = userMapper.like(nickname);
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
