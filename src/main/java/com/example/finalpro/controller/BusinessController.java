package com.example.finalpro.controller;

import com.example.finalpro.service.business.BusinessMemberJoinService;
import com.example.finalpro.service.business.BusinessMemberLoginSevice;
import com.example.finalpro.vo.BusinessMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class BusinessController {

    @Autowired
    BusinessMemberJoinService businessMemberJoinService;

    @Autowired
    BusinessMemberLoginSevice businessMemberLoginSevice;

    // 사업자 회원가입 페이지
    @RequestMapping("/businessJoinForm.bi")
    public String businessJoinForm(Model model){

        model.addAttribute("main","business/business_join");
        return "template";
    }

    // 사업자 회원가입 프로세스
    @RequestMapping("/businessJoinProcess.bi")
    public String businessJoinProcess(Model model, BusinessMemberVO businessMemberVO){

        System.out.println(businessMemberVO);
        businessMemberJoinService.businessJoinProcess(businessMemberVO);

        model.addAttribute("main", "member/login");
        return "template";
    }
    
    // 사업자 로그인 프로세스
    @RequestMapping("/businessLoginProcess.bi")
    public String businessLoginProcess(HttpServletRequest request, HttpSession session, Model model){

        String page = businessMemberLoginSevice.businessLoginProcess(request, session);

        return "redirect:" + page;
    }


}
