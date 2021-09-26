package com.example;

import com.example.util.system.SysUtil;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test {

    public static void main(String[] args) {
        String str="{\"address\":\"CN|\\u8d35\\u5dde|\\u516d\\u76d8\\u6c34|None|CMNET|0|0\",\"content\":{\"address_detail\":{\"province\":\"\\u8d35\\u5dde\\u7701\",\"city\":\"\\u516d\\u76d8\\u6c34\\u5e02\",\"district\":\"\",\"street\":\"\",\"street_number\":\"\",\"city_code\":147},\"address\":\"\\u8d35\\u5dde\\u7701\\u516d\\u76d8\\u6c34\\u5e02\",\"point\":{\"y\":\"3053272.25\",\"x\":\"11672207.91\"}},\"status\":0}";
        Pattern p = Pattern.compile("[^{]\"address\":\"(.+?)\",");
        Matcher m = p.matcher(str);
        if (m.find()) {
            System.out.println(m.group(1));
        }
        System.out.println(SysUtil.getSysInfo());
    }

}
