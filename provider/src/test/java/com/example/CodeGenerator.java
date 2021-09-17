package com.example;


import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.po.TableFill;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import org.junit.platform.commons.util.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class CodeGenerator {
    //读取控制台内容
    public static String scanner(String tip) {
        Scanner sc = new Scanner(System.in);
        System.out.print("是否要输入" +tip+ ":(y/n)");
        if ("y".equals(sc.next())) {
            System.out.print("请输入" +tip+ ":");
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
        String moduleName = scanner("请输入模块名");
        pc.setModuleName(moduleName);

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


        // 自定义配置
        InjectionConfig cfg = new InjectionConfig() {
            @Override
            public void initMap() {
                // to do nothing
            }
        };
        // 如果模板引擎是 velocity
        String templatePath = "/templates/mapper.xml.vm";
        // 自定义输出配置
        List<FileOutConfig> focList = new ArrayList<>();
        // 自定义配置会被优先输出
        focList.add(new FileOutConfig(templatePath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                // 自定义输出文件名 ， 如果你 Entity 设置了前后缀、此处注意 xml 的名称会跟着发生变化！！
                System.out.println(projectPath +"/"+ moduleName + "/src/main/resources/mapper/"
                        + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML);
                return projectPath +"/"+ moduleName + "/src/main/resources/mapper/"
                        + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
            }
        });
        cfg.setFileOutConfigList(focList);
        mpg.setCfg(cfg);


        // 配置模板
        TemplateConfig templateConfig = new TemplateConfig();
        templateConfig.setXml(null);
        mpg.setTemplate(templateConfig);

        mpg.execute();   //执行

    }
}
