package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.UserRole;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-29
 */
public interface UserRoleMapper extends BaseMapper<UserRole> {
    int deleteBatchByRid(List<Integer> list);
}
