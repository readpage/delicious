package com.example.security.handler;

import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.Collection;

// 获取登录用户的角色，并与 访问 所需要的角色进行对比，决定是否可以访问
@Component
public class UrlAccessDecisionManager implements AccessDecisionManager {
    @Override
    public void decide(Authentication authentication, Object o, Collection<ConfigAttribute> collection) throws AccessDeniedException, InsufficientAuthenticationException {
        // 如果是其他的 url 访问，判断有没有登录
        for (ConfigAttribute configAttribute: collection) {
            if ("tourist".equals(configAttribute.getAttribute())) {
                return;
            }
            // 如果 url 与数据库匹配上了，判断 当前 用户有没有能访问的角色，如果有就 return ，没有抛出异常
            Collection<? extends GrantedAuthority> authorities=authentication.getAuthorities();
            for (GrantedAuthority authority : authorities) {
                System.out.println(authority.getAuthority());
                System.out.println(configAttribute.getAttribute());
                if (authority.getAuthority().equals(configAttribute.getAttribute()))

                    return;
            }
        }
        throw new AccessDeniedException("");
    }

    @Override
    public boolean supports(ConfigAttribute configAttribute) {
        return true;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return true;
    }
}
