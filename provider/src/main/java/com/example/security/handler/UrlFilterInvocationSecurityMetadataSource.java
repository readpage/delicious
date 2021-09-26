package com.example.security.handler;


import com.example.entity.Menu;
import com.example.entity.Role;
import com.example.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;

import java.util.Collection;
import java.util.List;

/**
 * 这个类是分析得出 用户访问的 url 需要哪些角色
 * 核心的方法是第一个
 * 第三个方法返回true表示支持支持这种方式即可
 *
 */
@Component
public class UrlFilterInvocationSecurityMetadataSource implements FilterInvocationSecurityMetadataSource {
    @Autowired
    private MenuService menuService;
    //ant 风格匹配符
    AntPathMatcher antPathMatcher=new AntPathMatcher();
    @Override
    public Collection<ConfigAttribute> getAttributes(Object o) throws IllegalArgumentException {
        //获取请求url地址
        String requestUrl=((FilterInvocation)o).getRequestUrl().split("[?]")[0];
        //得到所有url和角色的对应关系
        List<Menu> allMenu = menuService.selectAll();
        //如果和请求url匹配上就把他存入到Collection<ConfigAttribute>里
        for (Menu menu : allMenu) {
            if (menu.getType() == 2) {
                menu.setPath(menu.getPath() + "/**");
            }
            if (antPathMatcher.match(menu.getPath(), requestUrl)) {
                //如果匹配上就获取到所需要的角色列表
                List<Role> roles=menu.getRoles();
                String[] strList=new String[roles.size()];
                for (int i=0; i<strList.length; i++) {
                    String name = roles.get(i).getName();
                    if ("tourist".equals(name)) {
                        return SecurityConfig.createList(new String[] { "tourist" });
                    }
                    strList[i] = name;
                }
                return SecurityConfig.createList(strList);
            }
        }
        //如果都没有匹配上,我们返回默认值,这个值就像一个特殊的标识符,自定义
        return SecurityConfig.createList("login");
    }

    @Override
    public Collection<ConfigAttribute> getAllConfigAttributes() {
        return null;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return true;
    }
}
