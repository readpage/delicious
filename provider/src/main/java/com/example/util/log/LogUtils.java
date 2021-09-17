package com.example.util.log;


import cn.hutool.core.text.UnicodeUtil;
import eu.bitwalker.useragentutils.Browser;
import eu.bitwalker.useragentutils.OperatingSystem;
import eu.bitwalker.useragentutils.UserAgent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
public class LogUtils {
    private static RestTemplate restTemplate;

    @Autowired
    private RestTemplate myRestTemplate;

    @PostConstruct
    public void init() {
        LogUtils.restTemplate = this.myRestTemplate;
    }

    public static BrowserInfo getBrowserInfo(HttpServletRequest request) {
        BrowserInfo browserInfo = new BrowserInfo();
        String agent=request.getHeader("User-Agent");
        //解析agent字符串
        UserAgent userAgent = UserAgent.parseUserAgentString(agent);
        //获取浏览器对象
        Browser browser = userAgent.getBrowser();
        //获取操作系统对象
        OperatingSystem os = userAgent.getOperatingSystem();

        browserInfo.setBrowser(browser.getName());
        browserInfo.setOs(os.getName());
        browserInfo.setDeviceType(os.getDeviceType().getName());
        browserInfo.setIpAddr(getIpAddress(request));
//        browserInfo.setLocation(getLocation(browserInfo.getIpAddr()));
        return browserInfo;
    }

    public static String getIpAddress(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        if(ip != null) {
            ip=ip.split(",")[0];
        }
        return ip;
    }

    public static String getLocation(String ip) {
        String ak = "gGlcW2VEuTk6W92P2CBQ3qZlTKvD69a6";
        String url = "https://api.map.baidu.com/location/ip?ak={ak}&ip={ip}";
        String location = "";
        String result = restTemplate.getForObject(url, String.class, ak, ip);
        Pattern p = Pattern.compile("[^{]\"address\":\"(.+?)\"[}|,]");
        Matcher m = p.matcher(result);
        if (m.find()) {
            location = UnicodeUtil.toString(m.group(1));
        }
        return location;
    }

}

