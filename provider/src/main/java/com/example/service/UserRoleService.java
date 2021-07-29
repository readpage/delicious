package com.example.service;

import com.example.entity.UserRole;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-29
 */
public interface UserRoleService extends IService<UserRole> {
    boolean removeByRId(Integer rid);
}
