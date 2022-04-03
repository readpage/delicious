package com.example;

import com.example.utils.HtmlUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class demo {
    @Test
    public void demo() {
        String s = "<h1>title</h1>" +
                "<a src='http://baidu.com' onmouseover=alert(document.cookie)>xxs link</a>" +
                "<i>a</i>" +
                "<u onclick=\"alert(\"1\")\">d</u>" +
                "<img title=\"[狗头]\" onerror=\"javascript:this.src='/noPic.gif';\" src=\"https://static.talkxj.com/emoji/goutou.jpg\" class=\"el-image__inner\">" +
                "<script lang=\"ts\">alert(\"1\")</script>" +
                "<SCRIPT SRC=http://3w.org/XSS/xss.js></SCRIPT>" +
                "<a onmousemove=alert(document.cookie)>xxs link</a> " +
                "<div onmousemove=alert(document.cookie)>div</div>" +
                "sb[狗头]" +
                "<iframe src=\"./alert.html\"></iframe>";
        String clean = HtmlUtil.clean(s);
        System.out.println(clean);
        System.out.println("==========");
        System.out.println(HtmlUtil.filter(s));
    }
}
