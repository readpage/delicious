package com.example.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.entity.Comment;
import com.example.util.PageInfo;
import org.springframework.security.core.Authentication;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-10-22
 */
public interface CommentService extends IService<Comment> {
    PageInfo<Comment> page(int pageNum, int pageSize, Integer fId, Integer state, String username);

    PageInfo<Comment> vPage(int pageNum, int pageSize, Integer fId, Integer parentId, Authentication auth);

    void add(Comment comment);
}
