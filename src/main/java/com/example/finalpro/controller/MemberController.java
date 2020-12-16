package com.example.finalpro.controller;

import com.example.finalpro.service.member.*;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

    @Autowired
    CommonMemberJoinService commonMemberJoinService;

    @Autowired
    CommonMemberLoginService commonMemberLoginService;

    @Autowired
    CommonMemberValiService commonMemberValiService;

    @Autowired
    CommonMemberEmailFindSerivce commonMemberEmailFindSerivce;

    @Autowired
    CommonMemberPwFindService commonMemberPwFindService;

    @Autowired
    CommonMemberPwConfirmService commonMemberPwConfirmService;

    // 이메일 찾기 첫번째
    @RequestMapping("/emailSearchFirst.me")
    public String emailSearchFirst(Model model){

        model.addAttribute("main","member/email_search");
        return "template";
    }


    // 패스워드 찾기 첫번째
    @RequestMapping("/passSearchFirst.me")
    public String passSearchFirst(Model model){

        model.addAttribute("main", "member/password_search");
        return "template";
    }

    // 패스워드 찾기 두번째
    @RequestMapping("/passSearchSecond.me")
    public String passSearchSecond(@RequestParam String email,
                                   @RequestParam String tel,Model model){

        model.addAttribute("email", email);
        model.addAttribute("tel", tel);
        model.addAttribute("main", "member/password_search_next");
        return "template";
    }

    // 패스워드 찾기 변경하기
    @RequestMapping("/passSearchUpdate.me")
    public String passSearchUpdate(CommonMemberVO commonMemberVO, Model model){

        commonMemberPwFindService.commonMemberPwFind(commonMemberVO);

        model.addAttribute("main", "member/login");
        return "template";
    }


    // 일반회원 로그인 페이지로 이동
    @RequestMapping("/loginForm.me")
    public String loginForm(Model model){
        model.addAttribute("main", "member/login");
//        model.addAttribute("main", "login");
        return "template";
    }

    // 일반회원 로그인 프로세스
    @ResponseBody
    @RequestMapping("/loginProcess.me")
    public String loginProcess(HttpServletRequest request, HttpSession session, Model model){

        String page = commonMemberLoginService.commonMemberLogin(request, session);

        return page;
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
        model.addAttribute("main", "mainForm");
        return "template";
    }
//    // 제제된 회원 alert
//    @RequestMapping("/loginFail.me")
//    public String loginFail(Model model){
//        model.addAttribute("main","member/loginFailPopup");
//        return "template";
//    }


    // 회원가입 중복 체크
    @ResponseBody
    @RequestMapping("/memberVali.me")
    public int memberVali(@RequestParam(required = false) String mem_email,
                        @RequestParam(required = false) String mem_nick,
                        @RequestParam(required = false) String mem_tel,
                        @RequestParam int state){

        System.out.println("email : " + mem_email);
        System.out.println("nick : " + mem_nick);
        System.out.println("state : " + state);

        int check = commonMemberValiService.memberVali(mem_email, mem_nick, mem_tel, state);


        return check;
    }

    // 회원 이메일 찾기
    @RequestMapping("/emailSearchSecond.me")
    public String emailSearchSecond(@RequestParam String tel, Model model){

        String email = commonMemberEmailFindSerivce.emailFind(tel);

        model.addAttribute("email", email);
        model.addAttribute("main", "member/email_search_next");
        return "template";
    }

    // 회원 비밀번호 확인
    @RequestMapping("/passConfirm.me")
    @ResponseBody
    public String passConfirm(@RequestParam String mem_email,
                            @RequestParam String mem_pw){

        String confirm = commonMemberPwConfirmService.passConfirm(mem_email, mem_pw);

        return confirm;
    }

}
