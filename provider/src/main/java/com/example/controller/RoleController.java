package com.example.controller;


import com.example.entity.MenuRole;
import com.example.entity.Role;
import com.example.service.MenuRoleService;
import com.example.service.RoleService;
import com.example.utils.PageInfo;
import com.example.utils.result.Result;
import com.example.utils.result.ResultEnum;
import com.example.utils.result.ResultUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.xiaoymin.knife4j.annotations.ApiOperationSupport;
import com.github.xiaoymin.knife4j.annotations.DynamicParameter;
import com.github.xiaoymin.knife4j.annotations.DynamicParameters;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

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

    @PostMapping("/add")
    @ApiOperation("添加角色")
    @DynamicParameters(name = "createRoleMap", properties = {
            @DynamicParameter(name = "role", value = "角色", example = "{name: 'admin', nickname: '管理员' }", required = true, dataTypeClass = Role.class),
            @DynamicParameter(name = "menuIdList", value = "功能权限", example = "['1', '2', '3']", required = true, dataTypeClass = List.class)
    })
    public Result<Object> add(@RequestBody Map<String, Object> map) {
        ObjectMapper mapper = new ObjectMapper();
        Role role = mapper.convertValue(map.get("role"), Role.class);
        List<Integer> menuIdList = mapper.convertValue(map.get("menuIdList"), new TypeReference<List<Integer>>() {});
        try {
            if (roleService.add(role, menuIdList)) {
                return ResultUtils.ok(ResultEnum.CREATE_SUCCESS);
            } else {
                return ResultUtils.fail(ResultEnum.CREATE_FAIL);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtils.fail(ResultEnum.CREATE_FAIL);
        }
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

    @ApiOperation("查询所有角色")
    @GetMapping("/list")
    public Result<List<Role>> selectAll() {
        return ResultUtils.query(roleService.list());
    }

    @ApiOperation("分页查询角色")
    @GetMapping("/page/{pageNum}/{pageSize}")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageNum", value = "页数", required = true, dataType = "int", example = "1"),
            @ApiImplicitParam(name = "pageSize", value = "页大小", required = true, dataType = "int", example = "5")
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

