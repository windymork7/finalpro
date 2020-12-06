package com.example.finalpro.controller;

import com.example.finalpro.service.admin.AdminBookAddActionService;
import com.example.finalpro.service.admin.AdminBookStandByListService;
import com.example.finalpro.service.admin.AdminMemberBlackListService;
import com.example.finalpro.service.admin.AdminMemberRptListService;
import com.example.finalpro.service.admin.AdminQDeleteActionService;
import com.example.finalpro.service.admin.AdminQRptListService;
import com.example.finalpro.serviceImpl.admin.AdminMemberBlackActionImpl;
import com.example.finalpro.vo.CommonMemberVO;
import com.example.finalpro.vo.QboardVO;

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
    @Autowired
    AdminQRptListService adminQRptListService;
    @Autowired
    AdminQDeleteActionService adminQDeleteActionService;
    @Autowired
    AdminBookStandByListService adminBookStandByListService;
    @Autowired
    AdminBookAddActionService adminBookAddActionService;
    
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
    
    //신고 10개넘은 게시판 리스트
    @RequestMapping("/qRptList.ad")
    public String qRptList(Model model) {
    	List<QboardVO> list = adminQRptListService.qRptList();
    	model.addAttribute("list",list);
    	model.addAttribute("main","admin/TestQRptList");
    	return "template";
    }
    
    //신고 10개 넘은 게시판 삭제 액션
    @RequestMapping("/qDeleteAction.ad")
    public String qDeleteAction(@RequestParam("qNo") int qNo) {
    	adminQDeleteActionService.qDeleteAction(qNo);
    	return "redirect:/qRptList.ad";
    }
    
    // 책스크랩 신청 목록
    @RequestMapping("/bookStandByList.ad")
    public String bookStandByList(Model model) {
    	List<QboardVO> list = adminBookStandByListService.bookStandByList();
    	model.addAttribute("list",list);
    	model.addAttribute("main","admin/TestBookStandByList");
    	return "template";
    }
    //책스크랩 추가
    
    @RequestMapping("/bookAddAction.ad")
    public String bookaddAction(@RequestParam("qNo")int q_no, @RequestParam("caNo")int ca_no,@RequestParam("subCa")int sub_ca_no,
    		@RequestParam("bookCaNo")int book_ca_no,Model model) {
    		adminBookAddActionService.bookAddActionService(q_no, ca_no ,sub_ca_no, book_ca_no);
    		return "redirect:/adminMain.ad";
    }

}
