package com.example.finalpro.controller;

import com.example.finalpro.service.business.BusinessMemberJoinService;
import com.example.finalpro.service.business.BusinessMemberLoginSevice;
import com.example.finalpro.service.business.BusinessMemberValiService;
import com.example.finalpro.vo.BusinessMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class BusinessController {

    @Autowired
    BusinessMemberJoinService businessMemberJoinService;

    @Autowired
    BusinessMemberLoginSevice businessMemberLoginSevice;

    @Autowired
    BusinessMemberValiService businessMemberValiService;

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
    @ResponseBody
    @RequestMapping("/businessLoginProcess.bi")
    public String businessLoginProcess(HttpServletRequest request, HttpSession session, Model model){

        String page = businessMemberLoginSevice.businessLoginProcess(request, session);
        System.out.println("page: "+page);
        return page;
    }


    // 사업자 중복 체크
    @ResponseBody
    @RequestMapping("/businessVali.bi")
    public int businessVali(@RequestParam(required = false) String biz_email,
                            @RequestParam(required = false) String biz_number,
                            @RequestParam(required = false) String biz_tel,
                            @RequestParam int state){

        int valiCheck = businessMemberValiService.businessMemberVali(biz_email, biz_number, biz_tel, state);

        return valiCheck;
    }


}
