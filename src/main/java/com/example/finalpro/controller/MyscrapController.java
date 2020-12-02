package com.example.finalpro.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.finalpro.dao.MyscrapDAO;
import com.example.finalpro.service.myscrap.MyscrapCheckService;
import com.example.finalpro.service.myscrap.MyscrapInsertService;
import com.example.finalpro.service.myscrap.MyscrapListService;
import com.example.finalpro.vo.MyscrapVO;

@Controller
public class MyscrapController {

    @Autowired
    MyscrapCheckService myscrapCheckService;
    @Autowired
    MyscrapInsertService myscrapInsertService;
    @Autowired
    MyscrapListService myscrapListService;

    //테스트용마이페이지 메인
    @RequestMapping("/mypageMain.my")
    public String mypageMain(Model model) {
    	model.addAttribute("main","mypage/myMain");
    	return "template";
    }

    //마이스크랩에 같은 게시물이 있나없나 확인
    @RequestMapping("/myscrapCheck.my")
    public String myscrapCheck(@RequestParam("qboardNum")int qboardNum, HttpServletRequest reqest,HttpSession session ) {
    	System.out.println("마이스크랩체크");
    	String page = myscrapCheckService.myscrapCheck(qboardNum, reqest, session);
    	return "redirect:"+page;
    }
    
    //마이스크랩에 같은게시물이 없다면 액션 ( insert )
    @RequestMapping("/myscrapInsert.my")
    public String myscrapInsert(@RequestParam("qboardNum")int qboardNum, HttpServletRequest reqest, HttpSession session) {
    	System.out.println("마이스크랩인서트");
    	int mem_no = (Integer)session.getAttribute("userNo");
    	myscrapInsertService.myscrapInsert(mem_no, qboardNum);
    	return "redirect:myscrapList.my";
    }
    //마이스크랩 리스트
    @RequestMapping("/myscrapList.my")
    public String myscrapList(Model model,HttpServletRequest request, HttpSession session) {
    	List<MyscrapVO> list = new ArrayList<MyscrapVO>();
    	
    	list = myscrapListService.myscrapList(request,session);
    	model.addAttribute("list",list);
    	model.addAttribute("main", "mypage/TestMyscrapList");
    	return "template";
    	
    }
}
