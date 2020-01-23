package com.huahui.interceptor;

import com.huahui.comon.conf.Conf;
import com.huahui.comon.conf.Context;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PosInterceptor implements HandlerInterceptor {
    private Logger log = LoggerFactory.getLogger(getClass());

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //jsp不拦截
        if (!request.getRequestURI().endsWith(".jsp")) {
            Context.clearThreadLocal();
        } else {
            return true;
        }
        log.info("PosInterceptor.preHandle: {}", "这是拦截器的日志");
        return true;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable Exception ex) throws Exception {
        Context.clearThreadLocal();
    }
}
