package com.example.finalpro.controller;

import com.example.finalpro.service.member.CommonMemberJoinService;
import com.example.finalpro.service.member.CommonMemberLoginService;
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
        model.addAttribute("main", "member/login");
//        model.addAttribute("main", "login");
        return "template";
    }

    // 일반회원 로그인 프로세스
    @RequestMapping("/loginProcess.me")
    public String loginProcess(HttpServletRequest request, HttpSession session, Model model){

        String page = commonMemberLoginService.commonMemberLogin(request, session);

        return "redirect:"+page;
    }

    // 로그인 길 나누기
    @RequestMapping("/loginWayProcess.me")
    public String loginWayProcess(@RequestParam("customRadio") int radio,  HttpServletRequest request ,Model model){

        if (radio == 1){
            String mem_email = request.getParameter("mem_email");
            String mem_pw = request.getParameter("mem_pw");
            return "redirect:loginProcess.me?mem_email="+mem_email+"&mem_pw="+mem_pw;
        } else if (radio == 2){
            String biz_email = request.getParameter("biz_email");
            String biz_pw = request.getParameter("biz_pw");
            return "redirect:businessLoginProcess.bi?biz_email="+biz_email+"&biz_pw="+biz_pw;
        }
        return null;
    }


    // 일반회원 회원가입 페이지로 이동
    @RequestMapping("/joinForm.me")
    public String joinForm(Model model){
        model.addAttribute("main", "member/general_join");
//        model.addAttribute("main", "member/Gene_join");
        return "template";
    }

    // 일반회원 회원가입 프로세스
    @RequestMapping("/joinProcess.me")
    public String joinProcess(Model model, CommonMemberVO commonMemberVO){

        commonMemberJoinService.commonMemberInsert(commonMemberVO);

        model.addAttribute("main", "member/login");
        return "template";
    }

    // 회원가입 나누기
    @RequestMapping("/joinFormWay.me")
    public String joinFormWay(Model model){

        model.addAttribute("main", "member/join_select");
        return "template";
    }

    // 일반회원 이용약관
    @RequestMapping("/member_agree")
    public String memberAgree(Model model){

        model.addAttribute("main", "member/general_agreement");
        return "template";
    }

    // 사업자 이용약관
    @RequestMapping("/business_agree")
    public String businessAgree(Model model){

        model.addAttribute("main", "business/business_agreement");
        return "template";
    }

    // 회원 로그아웃
    @RequestMapping("/logout.me")
    public String logout(HttpSession session, Model model){

        session.invalidate();
        model.addAttribute("main", "dsqMain");
        return "template";
    }
    // 제제된 회원 alert
    @RequestMapping("/loginFail.me")
    public String loginFail(Model model){
        model.addAttribute("main","member/loginFailPopup");
        return "template";
    }
    // 회원 제재






}
