package com.example.finalpro.controller;

import com.example.finalpro.service.board.*;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
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
    CommonSubCateService commonSubCateService;

    @Autowired
    CommonBoardBookCateSelectService commonBoardBookCateSelectService;

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
    public String qBoardInsertForm(@RequestParam int subCa, Model model){

        List<QboardVO> list = commonBoardBookCateSelectService.bookCategory(subCa);
        String subcategory = commonSubCateService.subCategory(subCa);

        model.addAttribute("Book", list);
        model.addAttribute("subCategory", subcategory);
        model.addAttribute("main", "board/dsq_board_write");
        return "template";
    }

    // q게시판 등록 프로세스.
    @RequestMapping("/qboardInsertProcess.bo")
    public String boardInsertProcess(Model model, QboardVO qboardVO){

        System.out.println(qboardVO.toString());
        commonBoardInsertService.qBoardInsert(qboardVO);

        return "redirect:qboardListForm.bo";
    }

    // 게시판 조회 페이지 ( 찐 )
//    @RequestMapping("/qboardListForm.bo")
//    public String boardListForm(Model model){

//        model.addAttribute("main", "board/board_list");
//        return "template";
//    }

    // 내가 작업하려고 만든 테스트용 메소드 ( 게시판 조회 )
    @RequestMapping("/qboardListForm.bo")
    public String boardListForm(@RequestParam(defaultValue = "1") int subCa, Model model){

        List<QboardVO> list = new ArrayList<QboardVO>();
        list = commonBoardListService.qBoardList(subCa);
        System.out.println(list);

        model.addAttribute("list",list);
        model.addAttribute("subCa", subCa);
        model.addAttribute("main", "board/board_list");
        return "template";
    }

    //게시판 내용
    @RequestMapping("/qboardContent.bo")
    public String qboardContent(@RequestParam("qboardNum") int qboardNum,
                               @RequestParam("subCa") int subCa, Model model){

        QboardVO qboardVO = commonBoardContent.qBoardContent(qboardNum, subCa);
        System.out.println("내용 : "  + qboardVO.toString());

        model.addAttribute("qBoardVO", qboardVO);
//        model.addAttribute("main", "board/TestBoardContent");
        model.addAttribute("main", "board/reply_write");

    
        return "template";
    }

//    public String qboardContent(Model model){
//        model.addAttribute("main", "board/reply_write");
//        return "template";
//    }


    @RequestMapping("/replyWriteForm.bo")
    public String replyWriteForm(Model model){

        model.addAttribute("main", "board/reply");
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
    //추천 체크
    @RequestMapping("/qboardUpCheck.bo")
    public String qboardUpCheck(@RequestParam("qboardNum")int qboardNum,
                                @RequestParam("subCa") int subCa, HttpServletRequest request, HttpSession session) {

    	String page= commonBoardUpCheckService.qBoardUpCheck(qboardNum, subCa, request, session);
    	
    	//참이면 qboardUpAction.bo 거짓이면 qboardListForm.bo
    	return "redirect:"+page;
    }
    //추천 액션
    @RequestMapping("/qboardUpAction.bo")
    public String qboardUp(@RequestParam("qboardNum")int qboardNum,
                           @RequestParam("subCa") int subCa, Model model, HttpServletRequest request, HttpSession session){

        System.out.println("업액션컨트롤러");

        int q_no = qboardNum;
        int mem_no = (Integer)session.getAttribute("userNo");
        System.out.println("업액션 qboardNum: "+ q_no);
        System.out.println("업액션 mem_no: "+mem_no);
        commonBoardUpService.qBoardUp(mem_no,q_no);

        return "redirect:/qboardContent.bo?qboardNum="+qboardNum + "&subCa=" + subCa;
    }

    //신고 체크
    //@RequestMapping("/qboardDownCheck.bo")
    //public String
    //신고 팝업
    @RequestMapping("/qboardDownPopup.bo")
    public String qboardDownPopup(Model model){
        System.out.println("큐보드다운팝업");
        model.addAttribute("main", "joon/TestRptPopup");
        return "template";
    }
    //신고 액션
    @RequestMapping("/qboardDownAction.bo")
    public String qboardDown(@RequestParam("qboardNum")int qboardNum,@RequestParam("rpt_no") int rpt_no,HttpServletRequest request, HttpSession session){
        return "redirect:qboardListForm.bo";
    }



}
