package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author f1dao😂
 * @since 2021-10-22
 */
public interface CommentMapper extends BaseMapper<Comment> {
    List<Comment> like(@Param("fId") Integer fId, @Param("state") Integer state, @Param("username") String username);

    List<Comment> vLike(@Param("fId") Integer fId,  @Param("parentId") Integer parentId, @Param("uid") Integer uid);
}
