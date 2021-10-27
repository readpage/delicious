package com.example.controller;


import com.example.entity.Comment;
import com.example.service.CommentService;
import com.example.util.PageInfo;
import com.example.util.result.Result;
import com.example.util.result.ResultUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author f1dao😂
 * @since 2021-10-22
 */
@RestController
@RequestMapping("/comment")
@Api(tags = "评论管理")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @ApiOperation("分页查询评论")
    @GetMapping("/page/{pageNum}/{pageSize}")
    public Result<PageInfo<Comment>> page(@PathVariable int pageNum, @PathVariable int pageSize, Integer fId, Integer state, String username) {
        return ResultUtils.query(commentService.page(pageNum, pageSize, fId, state, username));
    }

    @ApiOperation("分页查询审核成功的评论")
    @GetMapping("/v/page/{pageNum}/{pageSize}")
    public Result<PageInfo<Comment>> vPage(@PathVariable int pageNum, @PathVariable int pageSize,Integer fId, Integer parentId) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return ResultUtils.query(commentService.vPage(pageNum, pageSize, fId, parentId, auth));
    }

    @ApiOperation("添加评论")
    @PostMapping("/add")
    public Result<Object> add(@RequestBody Comment comment) {
        try {
            commentService.add(comment);
            return ResultUtils.save(true);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtils.save(false);
        }
    }

    @ApiOperation("修改评论")
    @PutMapping("/update")
    public Result<Object> update(@RequestBody Comment comment) {
        return ResultUtils.update(commentService.updateById(comment));
    }

    @ApiOperation("删除评论")
    @DeleteMapping("/remove")
    public Result<Object> removeByIds(@RequestBody List<Integer> list) {
        return ResultUtils.remove(commentService.removeByIds(list));
    }
}

