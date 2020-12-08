package com.example.finalpro.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.example.finalpro.service.mypage.MypageQuestionService;
import com.example.finalpro.service.mypage.MypageReplyListService;
import com.example.finalpro.service.mypage.MypageUpdateActionService;
import com.example.finalpro.service.mypage.MypageUpdateFormService;
import com.example.finalpro.vo.CommonMemberVO;
import com.example.finalpro.vo.QboardVO;
import com.example.finalpro.vo.ReplyBoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.finalpro.service.myscrap.MyscrapCheckService;
import com.example.finalpro.service.myscrap.MyscrapInsertService;
import com.example.finalpro.service.myscrap.MyscrapListService;
import com.example.finalpro.vo.MyscrapVO;

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

    //연결할 마이페이지 메인
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
    /****************내*가*한*질*문*******************/
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
        return "redirect:mypageInfo.my";

    }
}
