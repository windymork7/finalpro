package com.example.finalpro.controller;

import com.example.finalpro.service.board.*;
import com.example.finalpro.vo.QboardVO;
import com.example.finalpro.vo.ReplyBoardVO;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class DsqController {

    @Autowired
    CommonBoardDownService commonBoardDownService;

    @Autowired
    CommonReplyPickService commonReplyPickService;

    @Autowired
    CommonReplyUpCheckService commonReplyUpCheckService;

    @Autowired
    CommonReplyListService commonReplyListService;

    @Autowired
    CommonReplyInsertService commonReplyInsertService;

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

        System.out.println("QboardVO : " + qboardVO.toString());
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

    // 댓글 쓰기 페이지
    @RequestMapping("/replyWriteForm.bo")
    public String replyWriteForm(@RequestParam int qboardNum,
                                @RequestParam int subCa, Model model){

        QboardVO qboardVO = commonBoardContent.qBoardContent(qboardNum, subCa);

        model.addAttribute("qBoardVO", qboardVO);
        model.addAttribute("main", "board/reply");
        return "template";
    }

    // 댓글 쓰기 프로세스
    @RequestMapping("/replyWriteProcess.bo")
    public String replyWriteProcess(@RequestParam int subCa, Model model, ReplyBoardVO replyBoardVO){

        commonReplyInsertService.replyInsertProcess(replyBoardVO);

        int qboardNum = replyBoardVO.getQ_no();

        return "redirect:/qboardContent.bo?qboardNum="+ qboardNum + "&subCa=" + subCa;
    }

    // 댓글 리스트
    @RequestMapping(value = "/replyList.bo", produces = "application/json; charset=utf-8")
    @ResponseBody
    public ResponseEntity replyList(@ModelAttribute("ReplyBoardVO") ReplyBoardVO replyBoardVO, HttpSession session){
//        System.out.println("replyBoardVO : " + replyBoardVO);
//        System.out.println("sessionNick : " + (String)session.getAttribute("userNick"));

        HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

        List<ReplyBoardVO> replyVOlist = commonReplyListService.commonReplyList(replyBoardVO);
//        System.out.println(replyVOlist);

        if (replyVOlist.size() > 0){
            for (int i = 0; i < replyVOlist.size(); i++) {
                HashMap hm = new HashMap();
                hm.put("reply_no", replyVOlist.get(i).getReply_no());
                hm.put("q_no", replyVOlist.get(i).getQ_no());
                hm.put("mem_no", replyVOlist.get(i).getMem_no());
                hm.put("mem_nick", replyVOlist.get(i).getMem_nick());
                hm.put("reply_content", replyVOlist.get(i).getReply_content());
                hm.put("reply_pick", replyVOlist.get(i).getReply_pick());
                hm.put("reply_up", replyVOlist.get(i).getReply_up());
                hm.put("reply_rpt_cnt", replyVOlist.get(i).getReply_rpt_cnt());

                hmlist.add(hm);
            }
        }
        JSONArray jsonArray = new JSONArray(hmlist);
        return new ResponseEntity(jsonArray.toString(), responseHeaders, HttpStatus.CREATED);
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
    // 게시판 추천 액션
    @RequestMapping("/qboardUpAction.bo")
    public String qboardUp(@RequestParam("qboardNum")int qboardNum,
                           @RequestParam("subCa") int subCa, HttpSession session){

        System.out.println("업액션컨트롤러");

        int q_no = qboardNum;
        int mem_no = (Integer)session.getAttribute("userNo");
        System.out.println("업액션 qboardNum: "+ q_no);
        System.out.println("업액션 mem_no: "+mem_no);
        commonBoardUpService.qBoardUp(mem_no,q_no);

        return "redirect:/qboardContent.bo?qboardNum="+qboardNum + "&subCa=" + subCa;
    }

    // 댓글 추천 체크
    @RequestMapping("/replyUpCheck.bo")
    public String replyUpCheck(HttpServletRequest request, HttpSession session){

        String qboardNum = request.getParameter("qboardNum");
        String subCa = request.getParameter("subCa");


        int check = commonReplyUpCheckService.replyUpCheck(request, session);
        System.out.println("check : " + check);

        return "redirect:/qboardContent.bo?qboardNum="+qboardNum+"&subCa="+subCa;
    }

    // 댓글 체택
    @RequestMapping("/replyPick.bo")
    public String replyPick(HttpServletRequest request){

        String qboardNum = request.getParameter("qboardNum");
        String subCa = request.getParameter("subCa");
        System.out.println("dsafds : " + request.getParameter("qMemNo"));

        commonReplyPickService.replyPick(request);

        return "redirect:/qboardContent.bo?qboardNum="+qboardNum+"&subCa="+subCa;
//        return "template";
    }


    //신고 체크
    //@RequestMapping("/qboardDownCheck.bo")
    //public String
    //신고 팝업
    @RequestMapping("/qboardDownPopup.bo")
    public String qboardDownPopup(HttpServletRequest request){

        System.out.println("들어오나");

        String qboardNum = request.getParameter("qboardNum");
        String subCa = request.getParameter("subCa");

        commonBoardDownService.qBoardDown(request);


        return "redirect:/qboardContent.bo?qboardNum="+qboardNum+"&subCa="+subCa;
    }



}
