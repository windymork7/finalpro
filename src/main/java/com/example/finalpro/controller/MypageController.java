package com.example.finalpro.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.example.finalpro.service.mypage.*;
import com.example.finalpro.service.myscrap.*;
import com.example.finalpro.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MypageController {

    @Autowired
    MyscrapCheckService myscrapCheckService;
    @Autowired
    MyscrapInsertService myscrapInsertService;
    @Autowired
    MyscrapListService myscrapListService;
    @Autowired
    MypageQuestionService mypageQuestionService;
    @Autowired
    MypageUpdateFormService mypageUpdateFormService;
    @Autowired
    MypageUpdateActionService mypageUpdateActionService;
    @Autowired
    MypageReplyListService mypageReplyListService;
    @Autowired
    MyscrapCountService myscrapCountService;
    @Autowired
    MyquestionCountService myquestionCountService;
    @Autowired
    MyreplyCountService myreplyCountService;
    //연결할 마이페이지 메인
    @RequestMapping("/mypageMain.my")
    public String mypageMain(Model model, HttpSession session, HttpServletRequest request,
                             @RequestParam(value = "nowPage1", required = false) String nowPage1,
                             @RequestParam(value = "cntPerPage1", required = false) String cntPerPage1,
                             @RequestParam(value = "nowPage2", required = false) String nowPage2,
                             @RequestParam(value = "cntPerPage2", required = false) String cntPerPage2,
                             @RequestParam(value = "nowPage3", required = false) String nowPage3,
                             @RequestParam(value = "cntPerPage3", required = false) String cntPerPage3,
                             @RequestParam(value = "nowPage4", required = false) String nowPage4,
                             @RequestParam(value = "cntPerPage4", required = false) String cntPerPage4,
                             @RequestParam(value = "state", defaultValue = "2", required = false) String state){

        int state1 = Integer.parseInt(state);

        if (nowPage1 == null && cntPerPage1 == null) {
            nowPage1 = "1";
            cntPerPage1 = "5";
        } else if (nowPage1 == null) {
            nowPage1 = "1";
        } else if (cntPerPage1 == null) {
            cntPerPage1 = "5";
        }

        int mem_no = (Integer)session.getAttribute("userNo");

        int myscrapCount = myscrapCountService.MyscrapCount(mem_no); //스크랩총갯수
        int myquestionCount = myquestionCountService.myquestionCount(mem_no); //질문 총갯수
        int myreplyCount = myreplyCountService.myreplyCount(mem_no);    //답변 총 갯수

        PagingVO scrapPaing = new PagingVO(myscrapCount,Integer.parseInt(nowPage1), Integer.parseInt(cntPerPage1));
        model.addAttribute("scrapPaging",scrapPaing);
        //스크랩리스트
        List<MyscrapVO> scrapList = new ArrayList<MyscrapVO>();
        scrapList = myscrapListService.myscrapList(request,session,scrapPaing);
        model.addAttribute("scrapList",scrapList);
        //스크랩북 끝
        
        
        //내가한질문 시작
        if (nowPage2 == null && cntPerPage2 == null) {
            nowPage2 = "1";
            cntPerPage2 = "5";
        } else if (nowPage2 == null) {
            nowPage2 = "1";
        } else if (cntPerPage2 == null) {
            cntPerPage2 = "5";
        }

        PagingVO questionPaging = new PagingVO(myquestionCount,Integer.parseInt(nowPage2),Integer.parseInt(cntPerPage2));
        System.out.println("start,end:"+ questionPaging.toString());
        model.addAttribute("questionPaging",questionPaging);
        List<QboardVO> questionList = mypageQuestionService.mypageQuestion(session,questionPaging);
        model.addAttribute("questionList",questionList);


        //내가한답변리스트 시작
        if (nowPage3 == null && cntPerPage3 == null) {
            nowPage3 = "1";
            cntPerPage3 = "5";
        } else if (nowPage3 == null) {
            nowPage3 = "1";
        } else if (cntPerPage3 == null) {
            cntPerPage3 = "5";
        }

        PagingVO replyPaging = new PagingVO(myreplyCount,Integer.parseInt(nowPage3),Integer.parseInt(cntPerPage3));
        model.addAttribute("replyPaging",replyPaging);
        List<ReplyBoardVO> replyList = mypageReplyListService.replyList(session,replyPaging);
        model.addAttribute("replyList",replyList);

        //회원정보객체
        CommonMemberVO commonMemberVO = mypageUpdateFormService.mypageUpdateForm(session);
        model.addAttribute("mem",commonMemberVO);

        if (state1 == 1){
            model.addAttribute("active1", "active");
            model.addAttribute("show1", "active show");
        } else if(state1 == 2){
            model.addAttribute("active2", "active");
            model.addAttribute("show2", "active show");
        } else if(state1 == 3){
            model.addAttribute("active3", "active");
            model.addAttribute("show3", "active show");
        }

        model.addAttribute("main","mypage/mypageMain");
        return "template";
    }
    /*
    @RequestMapping("/mypageMain.my")
    public String mypageMain(Model model, HttpSession session, HttpServletRequest request) {

        //내가한질문리스트
        List<QboardVO> questionList = new ArrayList<QboardVO>();
        questionList = mypageQuestionService.mypageQuestion(session);
        //내가한답변리스트
        List<ReplyBoardVO> replyList = new ArrayList<>();
        replyList = mypageReplyListService.replyList(session);
        //스크랩리스트
        List<MyscrapVO> scrapList = new ArrayList<MyscrapVO>();
        scrapList = myscrapListService.myscrapList(request,session);
        //회원정보객체
        CommonMemberVO commonMemberVO = mypageUpdateFormService.mypageUpdateForm(session);


        model.addAttribute("scrapList",scrapList);
        model.addAttribute("questionList",questionList);
        model.addAttribute("replyList",replyList);
        model.addAttribute("mem",commonMemberVO);
        model.addAttribute("main","mypage/mypageMain");
        return "template";
    }
    */



    //테스트용마이페이지 메인
    /*
    @RequestMapping("/mypageMain.my")
    public String mypageMain(Model model) {
    	model.addAttribute("main","mypage/TestmyMain");
    	return "template";
    }*/

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
        System.out.println("mem_no: "+ mem_no);
    	myscrapInsertService.myscrapInsert(mem_no, qboardNum);
    	return "redirect:javascript:history.back()";
    }
    //마이스크랩 리스트
    /*
    @RequestMapping("/myscrapList.my")
    public String myscrapList(Model model,HttpServletRequest request, HttpSession session) {
    	List<MyscrapVO> list = new ArrayList<MyscrapVO>();
    	
    	list = myscrapListService.myscrapList(request,session);
    	model.addAttribute("list",list);
    	model.addAttribute("main", "mypage/TestMyscrapList");
    	return "template";
    	
    }
    */
    /****************내*가*한*질*문*******************/
    /*
    @RequestMapping("/myQuestion.my")
    public String myQuestion(Model model,HttpSession session){
        System.out.println("1: 내가한질문 컨트롤러");
        List<QboardVO> list = new ArrayList<QboardVO>();
        System.out.println("2: 내가한질문 컨트롤러 list생성");
        list = mypageQuestionService.mypageQuestion(session);
        model.addAttribute("list",list);
        model.addAttribute("main","mypage/TestMypageQuestion");
        return "template";
    }
    */
    //회원정보 확인
    @RequestMapping("/mypageInfo.my")
    public String mypageInfo(Model model,HttpSession session){
        CommonMemberVO commonMemberVO = mypageUpdateFormService.mypageUpdateForm(session);
        model.addAttribute("mem",commonMemberVO);
        model.addAttribute("main","mypage/TestMypageInfo");
        return "template";
    }

    /****************회*원*정*보*수*정*폼***************/
    @RequestMapping("/mypageUpdateForm.my")
    public String mypageUpdateForm(Model model,HttpSession session){
        CommonMemberVO commonMemberVO = mypageUpdateFormService.mypageUpdateForm(session);
        model.addAttribute("mem",commonMemberVO);
        model.addAttribute("main","mypage/mypageUpdate");
        return "template";
    }
    //회원정보 수정 액션
    @RequestMapping("/mypageUpdateAction.my")
    public String mypagUpdateAction(HttpSession session,CommonMemberVO commonMemberVO){
        System.out.println(commonMemberVO.toString());

        mypageUpdateActionService.mypageUpdateAction(session,commonMemberVO);
        return "redirect:/mypageMain.my";

    }
}
