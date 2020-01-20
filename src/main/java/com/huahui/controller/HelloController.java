package com.huahui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Author: hongwei_dai
 * @Date: 2020/1/16 14:11
 */
@Controller
@RequestMapping("hello")
public class HelloController {

    @RequestMapping(value = "test", method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody
    public String test() {
        return "Hello world!";
    }

    @RequestMapping(value = "index", method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("/pos/jsp/index.jsp");
        return mv;
    }

    @RequestMapping(value = "index2", method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView index2() {
        ModelAndView mv = new ModelAndView("/WEB-INF/pos/jsp/index.jsp");
        return mv;
    }
}
