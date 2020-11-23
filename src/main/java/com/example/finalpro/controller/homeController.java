package com.example.finalpro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class homeController {

    @GetMapping("/welcome")
    public String home(){
        return "hoho";
    }

    @GetMapping("/show.do")
    public String oh(@RequestParam("name") String name, Model model){

        System.out.println(name);
        model.addAttribute("name", name);

        return "show";
    }



}
