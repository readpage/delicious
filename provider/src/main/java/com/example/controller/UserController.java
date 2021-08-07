package com.example.controller;


import com.example.entity.User;
import com.example.entity.UserRole;
import com.example.service.UserRoleService;
import com.example.service.UserService;
import com.example.utils.PageInfo;
import com.example.utils.result.Result;
import com.example.utils.result.ResultEnum;
import com.example.utils.result.ResultUtils;
import com.github.xiaoymin.knife4j.annotations.ApiOperationSupport;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-28
 */
@RestController
@Api(tags = "用户管理")
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private UserRoleService userRoleService;

    @ApiOperation("添加用户")
    @ApiOperationSupport(includeParameters = {"user.username", "user.password"})
    @PostMapping("/save")
    public Result<Object> save(@RequestBody User user) {
        if (userService.save(user)) {
            return ResultUtils.ok(ResultEnum.CREATE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.CREATE_FAIL);
    }

    @ApiOperation("分配角色")
    @PostMapping("/addRole")
    @ApiOperationSupport(ignoreParameters = {"userRole.id"})
    public Result<Object> addRole(@RequestBody UserRole userRole) {
        if (userRoleService.save(userRole)) {
            return ResultUtils.ok(ResultEnum.CREATE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.CREATE_FAIL);
    }

    @ApiOperation("分页查询用户")
    @GetMapping("/page/{pageNum}/{pageSize}")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageNum", value = "页数", required = true),
            @ApiImplicitParam(name = "pageSize", value = "页大小", required = true)
    })
    public Result<PageInfo<User>> selectPage(@PathVariable int pageNum, @PathVariable int pageSize) {
        return ResultUtils.ok(ResultEnum.RETRIEVE_SUCCESS, userService.selectPage(pageNum, pageSize));
    }

    @ApiOperation("查询用户是否存在")
    @GetMapping("/selectIsUser")
    public Result<Object> selectIsUser(String username) {
        return ResultUtils.ok(userService.selectIsUser(username));
    }

    @ApiOperation("修改用户")
    @ApiOperationSupport(includeParameters = {"user.id", "user.username", "user.password"})
    @PutMapping("/update")
    public Result<Object> updateById(@RequestBody User user) {
        if (userService.updateById(user)) {
            return ResultUtils.ok(ResultEnum.UPDATE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.UPDATE_FAIL);
    }

    @ApiOperation("删除用户")
    @DeleteMapping("/remove/{id}")
    @ApiImplicitParam(name = "id", value = "用户id", dataType = "Integer", required = true)
    public Result<Object> removeById(@PathVariable Integer id) throws Exception {
        if (userService.removeById(id)) {
            return ResultUtils.ok(ResultEnum.DELETE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.DELETE_FAIL);
    }

    @ApiOperation("批量删除用户")
    @DeleteMapping("/removeByIds/{list}")
    @ApiImplicitParam(name = "list", value = "用户id", dataType = "list<Integer>", example = "1, 2, 3")
    public Result<Object> removeByIds(@PathVariable List<Integer> list) {
        if (userService.removeByIds(list)) {
            return ResultUtils.ok((ResultEnum.DELETE_SUCCESS));
        }
        return ResultUtils.fail(ResultEnum.DELETE_FAIL);
    }


}

