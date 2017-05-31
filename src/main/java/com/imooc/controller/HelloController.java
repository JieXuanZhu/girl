package com.imooc.controller;

import com.imooc.properties.GirlProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * Created by 廖师兄
 * 2016-10-30 23:36
 */
@Controller
public class HelloController {

    @Autowired
    private GirlProperties girlProperties;
/*
    @GetMapping(value = "/login")
    public String say(*//*@RequestParam(value = "id", required = false, defaultValue = "0") Integer myId*//*) {
       // return "id: " + myId;
//        return girlProperties.getCupSize();

        return "index";
    }*/
/*
    @GetMapping(value = "")
    public String hello(Model model) {
        //model.addAttribute("name","SHUKAIKEN");
        return "login";
    }*/
}
