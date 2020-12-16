package com.example.finalpro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FirstController {

    //자바 첫걸음 1
    @RequestMapping("langJavaFirst01.fi")
    public String langJavaFirst01(Model model){
        model.addAttribute("main","first/firstStep_J_1");
        return "template";
    }
    //자바 첫걸음 2
    @RequestMapping("langJavaFirst02.fi")
    public String langJavaFirst02(Model model){
        model.addAttribute("main","first/firstStep_J_2");
        return "template";
    }
}
