package com.example.finalpro.controller;

import com.example.finalpro.member.service.CommonMemberJoinService;
import com.example.finalpro.member.service.CommonMemberLoginService;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

    @Autowired
    CommonMemberJoinService commonMemberJoinService;

    @Autowired
    CommonMemberLoginService commonMemberLoginService;

    // 일반회원 로그인 페이지로 이동
    @RequestMapping("/loginForm.me")
    public String loginForm(Model model){
        model.addAttribute("main", "member/memberLoginForm");

        return "template";
    }

    // 일반회원 로그인 프로세스
    @RequestMapping("/loginProcess.me")
    public String loginProcess(HttpServletRequest request, HttpSession session, Model model){

        String page = commonMemberLoginService.commonMemberLogin(request, session);

        model.addAttribute("main", page);

        return "template";
    }


    // 일반회원 회원가입 페이지로 이동
    @RequestMapping("/joinForm.me")
    public String joinForm(Model model){
        model.addAttribute("main", "member/memberJoinForm");

        return "template";
    }

    // 일반회원 회원가입 프로세스
    @RequestMapping("/joinProcess.me")
    public String joinProcess(Model model, CommonMemberVO commonMemberVO){

        commonMemberJoinService.commonMemberInsert(commonMemberVO);

        model.addAttribute("main", "member/memberLoginForm");
        return "template";
    }

}
