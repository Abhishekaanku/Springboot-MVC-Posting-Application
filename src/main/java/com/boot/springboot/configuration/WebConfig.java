package com.boot.springboot.configuration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.thymeleaf.spring4.SpringTemplateEngine;
import org.thymeleaf.spring4.view.ThymeleafViewResolver;
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;

@Configuration
//@EnableWebMvc
@PropertySource("classpath:application.properties")
public class WebConfig {

    @Bean
    public ViewResolver viewResolver(SpringTemplateEngine templateEngine) {
        ThymeleafViewResolver viewResolver=new ThymeleafViewResolver();
        viewResolver.setTemplateEngine(templateEngine);
        viewResolver.setOrder(1);
        return viewResolver;
    }

    @Bean
    public ViewResolver viewResolver(@Value("${jspView.prefix}") String prefix,
                                     @Value("${jspView.suffix}") String suffix) {
        InternalResourceViewResolver viewResolver=new InternalResourceViewResolver();
        viewResolver.setPrefix(prefix);
        viewResolver.setSuffix(suffix);
        viewResolver.setExposeContextBeansAsAttributes(true);
        return viewResolver;
    }


//    @Bean
//    public SpringTemplateEngine springTemplateEngine(ClassLoaderTemplateResolver templateResolver) {
//        SpringTemplateEngine templateEngine=new SpringTemplateEngine();
//        templateEngine.setTemplateResolver(templateResolver);
//        return templateEngine;
//    }

    @Bean
    public ClassLoaderTemplateResolver templateResolver(@Value("${view.prefix}") String prefix,
                                                        @Value("${view.suffix}") String suffix) {
        ClassLoaderTemplateResolver templateResolver=new ClassLoaderTemplateResolver();

        templateResolver.setPrefix(prefix);
        templateResolver.setSuffix(suffix);
        templateResolver.setTemplateMode("HTML5");
        templateResolver.setCacheable(true);
        return templateResolver;
    }

    @Bean
    public MultipartResolver multipartResolver() {
        return new StandardServletMultipartResolver();
    }

}
