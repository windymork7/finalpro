package com.example.finalpro.controller;

import com.example.finalpro.service.board.*;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class DsqController {

    @Autowired
    CommonBoardInsertService commonBoardInsertService;

    @Autowired
    CommonBoardListService commonBoardListService;

    @Autowired
    CommonBoardContent commonBoardContent;

    @Autowired
    CommonBoardUpService commonBoardUpService;

    @Autowired
    CommonBoardUpCheckService commonBoardUpCheckService;
    
    // Q게시판 등록 페이지 이동
    @RequestMapping("/qBoardInsertForm.bo")
    public String qBoardInsertForm(Model model){

        model.addAttribute("main", "board/TestBoard");
        return "template";
    }

    // q게시판 등록 프로세스.
    @RequestMapping("/qboardInsertProcess.bo")
    public String boardInsertProcess(Model model, QboardVO qboardVO){

        commonBoardInsertService.qBoardInsert(qboardVO);

//        model.addAttribute("main","dsqMain");
        return "redirect:qboardListForm.bo";
    }

    // 게시판 조회 페이지
    @RequestMapping("/qboardListForm.bo")
    public String boardListForm(Model model){

        List<QboardVO> list = new ArrayList<QboardVO>();

        list = commonBoardListService.qBoardList();

        model.addAttribute("list",list);
        model.addAttribute("main","board/TestBoardList");
        return "template";
    }

    //게시판 내용
    @RequestMapping("/qboardContent.bo")
    public String qboardContent(@RequestParam("qboardNum") String qboardNum, Model model){

        QboardVO qboardVO = commonBoardContent.qBoardContent(Integer.parseInt(qboardNum));

        model.addAttribute("qBoardVO", qboardVO);
        model.addAttribute("main", "board/TestBoardContent");
        return "template";
    }

    //게시판 추천
    /*한번 누른 유저에 대해서 추천버튼 못누르도록 해라
    * up에 세션에 담긴 유저번호 넣고
    * if문으로 select 쿼리문해서 up 테이블 조회했을때 같은 유저라면 false ( 값못넣음 )
    * 다른 유저라면 True ( 추천가능 )*/
    
    /*
     * CheckServiceImpl에서 자꾸 null에러 뜸.. ; 
     * */
    @RequestMapping("/qboardUpCheck.bo")
    public String qboardUpCheck(@RequestParam("qboardNum")int qboardNum, HttpServletRequest request, HttpSession session) {
    	System.out.println("qboardUpCheck");
    	String page= commonBoardUpCheckService.qBoardUpCheck(qboardNum, request, session);
    	
    	//참이면 qboardUpAction.bo 거짓이면 qboardListForm.bo
    	return "redirect"+page;
    }
    @RequestMapping("/qboardUpAction.bo")
    public String qboardUp(@RequestParam("qboardNum")int qboardNum, Model model, HttpServletRequest request, HttpSession session){
    	int mem_no = Integer.parseInt((String)session.getAttribute("userNo"));
    	System.out.println("mem_no");
        commonBoardUpService.qBoardUp(qboardNum,mem_no);
        return "redirect:qboardListForm.bo";
    }

}
