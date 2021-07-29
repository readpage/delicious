package com.example.service;

import com.example.entity.Role;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.utils.PageInfo;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-28
 */
public interface RoleService extends IService<Role> {
    boolean removeById(Integer id) throws Exception;

    PageInfo<Role> selectPage(int pageNum, int pageSize);
}
