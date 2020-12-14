package com.example.finalpro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String main(Model model) {

        model.addAttribute("main", "mainForm");

        return "template";

//        return "header";
    }
}
