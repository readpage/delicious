package com.example.controller;


import com.example.entity.MenuRole;
import com.example.entity.Role;
import com.example.service.MenuRoleService;
import com.example.service.RoleService;
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

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author f1dao😂
 * @since 2021-07-28
 */
@RestController
@Api(tags = "角色管理")
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @Autowired
    private MenuRoleService menuRoleService;

    @ApiOperation("添加角色")
    @PostMapping("/save")
    @ApiOperationSupport(includeParameters = {"role.name"})
    public Result<Object> save(@RequestBody Role role) {
        if (roleService.save(role)) {
            return ResultUtils.ok(ResultEnum.CREATE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.CREATE_FAIL);
    }

    @ApiOperation("添加权限")
    @PostMapping("/addAuth")
    @ApiOperationSupport(ignoreParameters = {"menuRole.id"})
    public Result<Object> addAuth(@RequestBody MenuRole menuRole) {
        if (menuRoleService.save(menuRole)) {
            return ResultUtils.ok(ResultEnum.CREATE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.CREATE_FAIL);
    }

    @ApiOperation("分页查询角色")
    @GetMapping("/page/{pageNum}/{pageSize}")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageNum", value = "页数", required = true),
            @ApiImplicitParam(name = "pageSize", value = "页大小", required = true)
    })
    public Result<PageInfo<Role>> selectPage(@PathVariable int pageNum, @PathVariable int pageSize) {
        return ResultUtils.ok(ResultEnum.RETRIEVE_SUCCESS, roleService.selectPage(pageNum, pageSize));
    }

    @ApiOperation("修改权限")
    @PostMapping("/update")
    @ApiOperationSupport(includeParameters = {"role.id", "role.name"})
    public Result<Object> updateById(@RequestBody Role role) {
        if (roleService.updateById(role)) {
            return ResultUtils.ok(ResultEnum.UPDATE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.UPDATE_FAIL);
    }

    @ApiOperation("删除权限")
    @DeleteMapping("/removeAuth/{id}")
    public Result<Object> removeAuth(@PathVariable Integer id) {
        if (menuRoleService.removeById(id)) {
            return ResultUtils.ok(ResultEnum.DELETE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.DELETE_FAIL);
    }

    @ApiOperation("删除角色")
    @DeleteMapping("/remove/{id}")
    public Result<Object> remove(@PathVariable Integer id) throws Exception {
        if (roleService.removeById(id)) {
            return ResultUtils.ok(ResultEnum.DELETE_SUCCESS);
        }
        return ResultUtils.fail(ResultEnum.DELETE_FAIL);
    }
}

