package com.example.aop;

import com.example.entity.LogInfo;
import com.example.service.LogInfoService;
import com.example.utils.log.BrowserInfo;
import com.example.utils.log.LogUtils;
import com.example.utils.result.Result;
import com.example.utils.result.ResultUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;

@Aspect // 使用 @Aspect 注解定义了 切面
@Component //由于该类在 spring 中是作为组件使用的，所以还需要添加@Component注解才能生效
public class WebLogAspect {
    /**
     *  定义切入点表达式
     *  execution()是表达式的主体，第1个*表示的是返回类型，使用*代表所有类型;
     *  com.example.controller 表示的是需要拦截的包名，
     *  后面第2个*表示的是类名，使用*代表所有的类;第3个*表示的是方法名，
     *  使用*表示所有方法;后面(.. )表示方法的参数，
     *  其中的".."表示任意参数 需要注意的是，第1个*与包名之间有一个空格
     */

    @Autowired
    private LogInfoService logInfoService;

    private LogInfo logInfo;

    @Pointcut("execution(* com.example.controller.*.*(..)) && !execution(* com.example.controller.AuthController.*(..))")
    public void webLog() {}

    @Before("webLog()")
    public void before(JoinPoint joinPoint) {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        BrowserInfo browserInfo = LogUtils.getBrowserInfo(request);
        logInfo = new LogInfo(browserInfo);

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        logInfo.setUsername(authentication.getName());
        logInfo.setRequestMethod(request.getMethod());
        logInfo.setUrl(request.getRequestURI());
        logInfo.setMethod(joinPoint.getTarget().getClass().getName());
    }

    @AfterReturning(returning = "object", pointcut = "webLog()")
    public void afterReturning(JoinPoint joinPoint, Object object) {
        Result<Object> result = ResultUtils.typeConvert(object, Object.class);
        logInfo.setMsg(result.getMsg());
        logInfoService.save(logInfo);
    }

    @AfterThrowing(throwing = "e", pointcut = "webLog()")
    public void afterThrowing(JoinPoint joinPoint, Exception e) {
        String name = joinPoint.getSignature().getName();
        List<Object> args = Arrays.asList(joinPoint.getArgs());
        logInfo.setError("连接点方法为: " +name + ",参数为:" +args+ ",异常为:" +e.getMessage());
        logInfoService.save(logInfo);
    }
}
