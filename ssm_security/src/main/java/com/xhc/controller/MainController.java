package com.xhc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/userLogin")
    public String index() {
        return "login";
    }

    @RequestMapping("/error")
    public String error() {
        return "error";
    }

    @RequestMapping("/imageCode")
    public String imageCode() {
        return "imageCode";
    }
}
