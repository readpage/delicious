package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.Foods;
import com.example.util.PageInfo;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-09-13
 */
public interface FoodsService extends IService<Foods> {
    PageInfo<Foods> selectPage(int pageNum, int pageSize);
}
