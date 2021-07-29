package com.example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;

@Configuration
@EnableSwagger2WebMvc
public class Knife4jConfig {

    @Bean  //配置了Swagger的Docket的bean实例
    public Docket docket() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                // 分组名称
                .groupName("cell")
                .select()
                // 扫描包的路径
                .apis(RequestHandlerSelectors.basePackage("com.example.controller"))
                .paths(PathSelectors.any())
                //.paths()过滤扫描路径
                //.paths(PathSelectors.ant("/test/**"))
                .build();
    }

    //配置Swagger信息=apiInfo
    private ApiInfo apiInfo() {
        //作者信息
        return new ApiInfoBuilder()
                .title("Swagger3接口文档")
                .description("即使再小的帆也能远航😂")
                .termsOfServiceUrl("http://f1dao.com")
                .contact(new Contact("f1dao😥", "http://gitee.com/f1dao", "final1dao@qq.com"))
                .version("1.0")
                .build();
    }
}
