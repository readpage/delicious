package com.example.utils;


import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
import org.springframework.core.io.ClassPathResource;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class HtmlUtils {

    private static final ClassPathResource WHITE_LIST = new ClassPathResource("/assets/whiteList.json");

    //添加默认base配置,因为本项目的富文本图片实现使用base64,暂不使用默认的baseImage配置
//    private static Whitelist whitelist = Whitelist.basicWithImages();
    private static Whitelist whitelist = Whitelist.basic();

    private static ObjectMapper mapper = new ObjectMapper();

    //再载入json自定义白名单
    static {
        InputStream whiteConfig = null;
        try {
            whiteConfig = WHITE_LIST.getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }

        if (whiteConfig == null) {
            throw new RuntimeException("读取jsoup xss 白名单文件失败");
        } else {
            try {
                Map<String, Object> map  = mapper.readValue(whiteConfig, new TypeReference< Map<String, Object> >(){});

                //添加标签 addTags
                List<String> addTagArr = (List<String>) map.get("addTags");
                String[] addTags =  addTagArr.toArray(new String[0]);

                //添加属性 addAttributes
                List<Object> addAttrJsonArr = (List<Object>) map.get("addAttributes");
                Iterator<Object> iter = addAttrJsonArr.iterator();
                while (iter.hasNext()) {
                    Map<String, Object> attrMap = (Map<String, Object>) iter.next();
                    String tag = (String) attrMap.get("tag");
                    List<String> attrJsonArr = (List<String>) attrMap.get("attributes");
                    String[] attrArr = attrJsonArr.toArray(new String[0]);
                    whitelist.addAttributes(tag, attrArr);
                }


                //添加 addProtocols
                List<Object> addProtoJsonArr = (List<Object>) map.get("addProtocols");
                iter = addProtoJsonArr.iterator();
                while (iter.hasNext()) {
                    Map<String, Object> attrMap = (Map<String, Object>) iter.next();
                    String tag = (String) attrMap.get("tag");
                    String attribute = (String) attrMap.get("attribute");
                    List<String> protoJsonArr = (List<String>) attrMap.get("protocols");
                    String[] protocolArr = protoJsonArr.toArray(new String[0]);
                    whitelist.addProtocols(tag, attribute, protocolArr);
                }

            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    /**
     * 使用jsoup设置标签放行白名单
     *
     * @param originStr
     * @return
     */
    public static String clean(String originStr) {

//        whitelist = (new Whitelist()
//                .addTags("a", "b", "div", "img", "p", "strong") // 设置允许的标签
//                .addAttributes("a", "href", "title", "...") // 设置标签允许的属性
//                .addAttributes(":all", "class", "id", "src") // 通配符，对所有标签配置允许的属性
//                .addProtocols("img", "src", "http", "https")); // 设置Protocol，这是代表img的src属性只允许http和https开头

        return Jsoup.clean(originStr, whitelist);
    }

    public static String filter(String originStr) {
        // 敏感词过滤
        originStr = SensitiveUtil.filter(originStr);
        Whitelist whitelist2 = new Whitelist().addTags("p", "div", "br");
        return Jsoup.clean(originStr, whitelist2);
    }
}
