package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.Menu;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-28
 */
public interface MenuService extends IService<Menu> {
    List<Menu> selectLike(List<Integer> types);

    void removeById(Integer id);

    List<Menu> selectByName(List<String> names);

    List<Menu> selectAll();
}
