package com.imooc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by zhujx on 2017/5/30.
 */
@Controller
public class MainController {

    @GetMapping(value = "")
    public String index() {
        return "login";
    }
}
