package com.example;


import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.po.TableFill;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import org.junit.platform.commons.util.StringUtils;

import java.util.ArrayList;
import java.util.Scanner;

public class CodeGenerator {
    //读取控制台内容
    public static String scanner(String tip) {
        Scanner sc = new Scanner(System.in);
        System.out.print("是否要输入" +tip+ ":(y/n)");
        if ("y".equals(sc.next())) {
            String ipt = sc.next();
            if (StringUtils.isNotBlank(ipt)) {
                return ipt;
            }
        }
        return "";
    }

    public static void main(String[] args) {
        // 代码生成器
        AutoGenerator mpg = new AutoGenerator();
        //1.全局配置
        GlobalConfig gc = new GlobalConfig();
        String projectPath = System.getProperty("user.dir")+ "/provider";
        System.out.println(projectPath);
        gc.setOutputDir(projectPath+ "/src/main/java");
        gc.setAuthor("f1dao😂");
        gc.setOpen(false);
        gc.setFileOverride(true);   //是否覆盖原来生成的
        gc.setServiceName("%sService");    //去Service的I前缀
        gc.setIdType(IdType.AUTO);    //主键策略
        gc.setDateType(DateType.ONLY_DATE);  //定义生成的实体类中日期类型
        gc.setSwagger2(true);   //实体属性 Swagger2 注解
        mpg.setGlobalConfig(gc);

        //2.数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setDriverName("com.mysql.cj.jdbc.Driver");
        dsc.setUrl("jdbc:mysql://localhost:3306/delicious?useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT%2B8");
        dsc.setUsername("root");
        dsc.setPassword("root");
        dsc.setDbType(DbType.MYSQL);
        mpg.setDataSource(dsc);

        //3.包的配置
        PackageConfig pc = new PackageConfig();
        pc.setModuleName(scanner("模板名"));

        pc.setParent("com.example");
        mpg.setPackageInfo(pc);

        //4.配置策略
        StrategyConfig strategy = new StrategyConfig();
        strategy.setInclude(scanner("表名，多个表逗号分割,如:table,table2").split(","));   //设置要映射的表
        strategy.setNaming(NamingStrategy.underline_to_camel);  ////数据库表映射到实体的命名策略 //url中驼峰转连字符 camel骆驼命名
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
        strategy.setLogicDeleteFieldName("deleted");
        //自动填充配置
        TableFill create_time = new TableFill("create_time", FieldFill.INSERT);
        TableFill update_time = new TableFill("update_time", FieldFill.INSERT_UPDATE);
        ArrayList<TableFill> tableFills = new ArrayList<>();
        tableFills.add(create_time);
        tableFills.add(update_time);
        strategy.setTableFillList(tableFills);

        //乐观锁
        strategy.setVersionFieldName("version");
        strategy.setRestControllerStyle(true);
        strategy.setControllerMappingHyphenStyle(true);  //localhost:8080/hello_id_2 //url中驼峰转连字符
        mpg.setStrategy(strategy);

        mpg.execute();   //执行
    }
}
