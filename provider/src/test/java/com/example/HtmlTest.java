package com.example;

import com.example.utils.HtmlUtils;
import org.junit.Test;

import java.io.*;

public class HtmlTest {
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
        String clean = HtmlUtils.clean(s);
        System.out.println(clean);
        System.out.println("==========");
        System.out.println(HtmlUtils.filter(s));
    }

    @Test
    public void test() {
        System.out.printf(HtmlUtils.filter("Java常见的字符串加密方法\n" +
                "1.\n" +
                "异或加密: 原则:同为0,异为1 例: a— 0 1 1 0 0 0 0 1(a对应的二进制数) 3 — 0 0 0 0 0 0 1 1(3对应的二进制数) 异或结果: 0 1 1 0 0 0 1 0 具体代码如下:"));
    }

    @Test
    public void test3() {
        System.out.println(HtmlUtils.filter("abcde色情fghijklmnopqrstuvwxyz`"));
        System.out.println(xor("abcdefghijklmnopqrstuvwxyz"));
    }

    @Test
    public void test2() {
        BufferedReader br = null;
        BufferedWriter bw = null;
        try {
            br = new BufferedReader(new FileReader("sensitive-words.txt"));
            bw = new BufferedWriter(new FileWriter("sensitive-words.txt"));
            //            //读写操作
//            //方式一
//            char[] cbuf = new char[1024];
//            int len;
//            while ((len = br.read(cbuf)) != -1) {
//                bw.write(cbuf, 0, len);
//            }

            //方式二： 使用String
            String data;
            while ((data = br.readLine()) != null) {
                bw.write(xor(data)); //data中不包含换行
                bw.newLine(); //提供换行的操作
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (bw != null) {
                    bw.close();
                }
                if (br != null) {
                    br.close();
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static String xor(String s) {
        char[] chars = s.toCharArray();
        for (int i = 0; i < chars.length; i++) {
            chars[i] = (char) (chars[i] ^ 2);
        }
        return new String(chars);
    }

}
