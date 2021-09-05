package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.UserRole;

import java.util.List;

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

    boolean removeByUId(Integer uid);

    boolean removeByRids(List<Integer> list);

}
