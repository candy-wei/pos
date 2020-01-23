package com.huahui.controller;

import com.huahui.comon.conf.Conf;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Properties;

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
        ModelAndView mv = new ModelAndView("cart");
        return mv;
    }

    @RequestMapping(value = "index3", method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView index3() {
        ModelAndView mv = new ModelAndView("order");
        return mv;
    }

    @RequestMapping(value = "index2", method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView index2() {
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }

    @RequestMapping(value = "get/properties", method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody
    public Properties getProperties() {
        return Conf.getProperties();
    }
}
