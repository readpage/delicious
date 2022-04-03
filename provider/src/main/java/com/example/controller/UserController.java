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
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletRequest;
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

    @ApiOperation(value = "添加用户", notes = "请求实列还需要添加password(密码)字段")
    @ApiOperationSupport(includeParameters = {"user.username", "user.password"})
    @PostMapping("/save")
    public Result<Object> save(@RequestBody User user) {
        try {
            userService.mySave(user);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtils.save(false);
        }
        return ResultUtils.save(true);
    }

    @ApiOperation("自动生成用户")
    @GetMapping("/auto")
    public Result<Object> auto(@ApiIgnore HttpServletRequest request) {
        return userService.auto(request);
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
            @ApiImplicitParam(name = "pageNum", value = "页数", required = true, dataType = "int", example = "1"),
            @ApiImplicitParam(name = "pageSize", value = "页大小", required = true, dataType = "int", example = "5")
    })
    public Result<PageInfo<User>> selectPage(@PathVariable int pageNum, @PathVariable int pageSize, String nickname) {
        return ResultUtils.ok(ResultEnum.RETRIEVE_SUCCESS, userService.page(pageNum, pageSize, nickname));
    }

    @ApiOperation("id查询用户")
    @GetMapping("/getById")
    public Result<User> getById(Integer uid) {
        return ResultUtils.query(userService.getById(uid));
    }

    @ApiOperation("用户信息")
    @GetMapping("/info")
    public Result<Object> info() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return ResultUtils.ok(ResultEnum.RETRIEVE_SUCCESS,userService.selectByUsername(auth.getName()));
    }

    @ApiOperation("查询用户是否存在")
    @GetMapping("/selectIsUser")
    public Result<Object> selectIsUser(String username) {
        return ResultUtils.query(userService.selectIsUser(username));
    }

    @ApiOperation(value = "修改用户", notes = "请求实列还需要添加password(密码)字段")
    @PutMapping("/update")
    public Result<Object> updateById(@RequestBody User user) throws Exception {
        userService.myUpdateById(user);
        return ResultUtils.ok(ResultEnum.UPDATE_SUCCESS);
    }

    @ApiOperation("批量删除用户")
    @DeleteMapping("/removeByIds/{list}")
    @ApiImplicitParam(name = "list", value = "用户id", dataType = "list<Integer>", example = "1, 2, 3")
    public Result<Object> removeByIds(@PathVariable List<Integer> list) throws Exception {
        userService.myRemoveByIds(list);
        return ResultUtils.ok(ResultEnum.DELETE_SUCCESS);
    }

}

