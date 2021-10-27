package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.User;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-28
 */
public interface UserMapper extends BaseMapper<User> {
    List<User> like(String nickname);

    User selectByUsername(String username);

    Integer nowCount();
}
