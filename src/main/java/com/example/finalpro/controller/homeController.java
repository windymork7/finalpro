package com.example.finalpro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {

    @RequestMapping("/")
    public String template(Model model){

        model.addAttribute("main", "power");

        return "template";
    }
}
