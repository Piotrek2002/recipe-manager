package com.example.recipemanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/about")
    @ResponseBody
    public String about() {
        return "Details for logged users.";
    }

}