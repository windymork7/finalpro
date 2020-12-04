package com.example.finalpro.controller;

import com.example.finalpro.service.admin.AdminMemberBlackListService;
import com.example.finalpro.service.admin.AdminMemberRptListService;
import com.example.finalpro.serviceImpl.admin.AdminMemberBlackActionImpl;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.lang.annotation.Repeatable;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    AdminMemberRptListService adminMemberRptListService;
    @Autowired
    AdminMemberBlackActionImpl adminMemberBlackAction;
    @Autowired
    AdminMemberBlackListService adminMemberBlackListService;

    //어드민 메인페이지
    @RequestMapping("/adminMain.ad")
    public String adminMain(Model model){
        model.addAttribute("main","admin/adminMain");
        return "template";
    }

    //신고 10개넘은애들 리스트
    @RequestMapping("/memRptList.ad")
    public String memRptList(Model model){
        List<CommonMemberVO> list = adminMemberRptListService.memRptList();
        model.addAttribute("list",list);
        model.addAttribute("main","admin/TestMemRptList");
        return "template";
    }
    //제재 액션
    @RequestMapping("/memBlackAction.ad")
    public String memBlackAction (@RequestParam("memNo") int mem_no){
        adminMemberBlackAction.memBlackAction(mem_no);
        return "redirect:/memRptList.ad";
    }
    //블랙 리스트
    @RequestMapping("/memBlackList.ad")
    public String memBlackList(Model model){
        List<CommonMemberVO> list = adminMemberBlackListService.memBlackList();
        model.addAttribute("list",list);
        model.addAttribute("main","admin/TestMemBlackList");
        return "template";
    }

}
