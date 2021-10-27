package com.example.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.entity.Comment;
import com.example.entity.User;
import com.example.mapper.CommentMapper;
import com.example.mapper.UserMapper;
import com.example.service.CommentService;
import com.example.util.PageInfo;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author f1dao😂
 * @since 2021-10-22
 */
@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Autowired
    private UserMapper userMapper;


    @Override
    public PageInfo<Comment> page(int pageNum, int pageSize, Integer fId, Integer state, String username) {
        PageHelper.startPage(pageNum, pageSize);
        return new PageInfo<>(commentMapper.like(fId, state, username));
    }

    @Override
    public PageInfo<Comment> vPage(int pageNum, int pageSize, Integer fId, Integer parentId, Authentication auth) {
        User user = userMapper.selectByUsername(auth.getName());
        Integer uid = user != null ? user.getId() : null;
        PageHelper.startPage(pageNum, pageSize);
        return new PageInfo<>(commentMapper.vLike(fId,  parentId, uid));
    }

    @Override
    public void add(Comment comment) {
        User user = userMapper.selectById(comment.getUid());
        comment.setAvatar(user.getHeadImg());
        comment.setUsername(user.getNickname());
        comment.setState(false);
        commentMapper.insert(comment);
    }
}
