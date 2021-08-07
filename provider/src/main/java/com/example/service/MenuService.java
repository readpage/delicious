package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.Menu;
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
public interface MenuService extends IService<Menu> {
    PageInfo<Menu> selectPage(int pageNum, int pageSize);

    List<Menu> selectLike(List<Integer> types);

    boolean removeById(Integer id) throws Exception;

}
