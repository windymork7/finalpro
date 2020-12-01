package com.example.finalpro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BookController {

    // 문제풀이
    @RequestMapping("/todayProblem.bp")
    public String todayProblem(Model model){

        model.addAttribute("main", "book/problem");
        return "template";
    }

    @RequestMapping("/scriptMoonJae.bp")
    public String scriptMoonJae(){
        return "json/scriptMoonJae";
    }
}
