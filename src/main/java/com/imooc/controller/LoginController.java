package com.imooc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by zhujx on 2017/5/31.
 */
@RestController
public class LoginController {

    private final static Logger logger = LoggerFactory.getLogger(LoginController.class);

    /**
     * execute login
     * @return
     */
    @GetMapping(value = "/login")
    public String doLogin(HttpServletResponse response) {
        response.addHeader("Access-Control-Allow-Origin","*");

        logger.info("doLogin");
        return "login success";
    }

}
