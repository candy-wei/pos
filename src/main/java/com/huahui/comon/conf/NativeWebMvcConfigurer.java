package com.huahui.comon.conf;

import com.huahui.interceptor.PosInterceptor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.accept.ContentNegotiationManager;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @Author: hongwei_dai
 * @Date: 2020/1/22 14:44
 */
@Configuration
public class NativeWebMvcConfigurer implements WebMvcConfigurer {
    private Logger log = LoggerFactory.getLogger(getClass());

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.jsp("/WEB-INF/pos/jsp/", ".jsp");
        boolean b = registry.hasRegistrations();
        log.info("NativeWebMvcConfigurer.configureViewResolvers : {}", b);
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new PosInterceptor());
    }
}
