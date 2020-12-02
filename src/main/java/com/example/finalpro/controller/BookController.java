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
    
    // 자바 문제 파일
    @RequestMapping("/JavaProblem.bp")
    public String scriptMoonJae(){return "json/JavaProblem";}
    
    // C 문제 파일
    @RequestMapping("/CProblem.bp")
    public String cProblem(){ return "json/CProblem";}

    // Oracle 문제 파일
    @RequestMapping("/OracleProblem.bp")
    public String oracleProblem(){ return "json//OracleProblem";}

    // Python 문제 파일
    @RequestMapping("/PythonProblem.bp")
    public String pythonProblem(){ return "json/PythonProblem";}


}
