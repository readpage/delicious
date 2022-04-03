package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.Menu;
import com.example.entity.Role;
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
public interface RoleService extends IService<Role> {
    void removeByIds(List<Integer> list);

    boolean add(Role role, List<Integer> menuIdList);

    PageInfo<Role> page(int pageNum, int pageSize, String nickname);

    void updateById(List<Integer> menuIds, Role role);

    List<Menu> selectByRid(Integer rid);


}
