package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.User;
import com.example.utils.PageInfo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-28
 */
public interface UserService extends IService<User> {
    boolean mySave(User user) throws Exception;

    boolean myUpdateById(User user) throws Exception;

    PageInfo<User> selectPage(int pageNum, int pageSize);

    boolean removeById(Integer id) throws Exception;

    boolean selectIsUser(String username);

    User selectByUsername(String username);

    boolean myRemoveByIds(List<Integer> list) throws Exception;
}
