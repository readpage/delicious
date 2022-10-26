package com.example;

import org.junit.Test;

import java.io.*;

/**
 * @author readpage
 * @create 2022-10-26 15:02
 */
public class XORTest {
    @Test
    public void test() {
        BufferedWriter bw = null;
        try {
            bw = new BufferedWriter((new FileWriter("test.txt", true)));
            String data;
            data = "你来自哪里?";
            bw.newLine();
            bw.write(xor(data));
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (bw != null) {
                    bw.close();
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Test
    public void test2() {
        BufferedReader br = null;
        try {
            br = new BufferedReader(new FileReader("test.txt"));
            String data;
            while ((data = br.readLine()) != null) {
                System.out.println(xor(data));
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (br != null) {
                    br.close();
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Test
    public void test3() {
        BufferedReader br = null;
        BufferedWriter bw = null;
        try {
            br = new BufferedReader(new FileReader("test.txt"));
            bw = new BufferedWriter(new FileWriter("test2.txt"));
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

    @Test
    public void test4() {
        System.out.println(xor("Java"));
    }

}
