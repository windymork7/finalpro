package com.example.finalpro.controller;

import com.example.finalpro.service.board.*;
import com.example.finalpro.service.member.CommonMemberExpSelect;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import com.example.finalpro.vo.ReplyBoardVO;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class DsqController {

    @Autowired
    EditQboardReplyListService editQboardReplyListService;
    @Autowired
    EditQboardReplyInsertService editQboardReplyInsertService;
    @Autowired
    CommonBoardExpUpdateService commonBoardExpUpdateService;
    @Autowired
    CommonMemberExpSelect commonMemberExpSelect;
    @Autowired
    CommonBoardExpListSerivce commonBoardExpListSerivce;
    @Autowired
    CommonBoardPopularityListService commonBoardPopularityListService;
    @Autowired
    CommonBoardLatesListService commonBoardLatesListService;
    @Autowired
    CommonBoardReadyListService commonBoardReadyListService;
    @Autowired
    CommonReplyDownService commonReplyDownService;
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
    @Autowired
    CommonBoardCompleteCount commonBoardCompleteCount;
    @Autowired
    CommonBoardReadyCountService commonBoardReadyCountService;
    @Autowired
    CommonBoardLatesCountService commonBoardLatesCountService;
    @Autowired
    CommonBoardPopularityCountService commonBoardPopularityCountService;
    @Autowired
    CommonBoardExpCountService commonBoardExpCountService;
    @Autowired
    CommonBoardSearchService commonBoardSearchService;
    @Autowired
    CommonBoardSearchCountService commonBoardSearchCountService;
    @Autowired
    TipBoardPickCountService tipBoardPickCountService;
    @Autowired
    TipBoardPickListService tipBoardPickListService;
    @Autowired
    TipBoardReadyCountService tipBoardReadyCountService;
    @Autowired
    TipBoardReadyListService tipBoardReadyListService;
    @Autowired
    TipBoardPopularityListService tipBoardPopularityListService;
    @Autowired
    TipBoardLatesListService tipBoardLatesListService;
    @Autowired
    TipBoardCountService tipBoardCountService;
    @Autowired
    TipBoardContentService tipBoardContentService;
    @Autowired
    TipBoardDownActionService tipBoardDownActionService;
    @Autowired
    TipBoardUpActionService tipBoardUpActionService;
    @Autowired
    TipBoardWriteActionService tipBoardWriteActionService;
    @Autowired
    BookScrapCheckService bookScrapCheckService;
    @Autowired
    BookMemCheckService bookMemCheckService;
    @Autowired
    BookAddActionService bookAddActionService;
    @Autowired
    TipReplyWriteActionService tipReplyWriteActionService;
    @Autowired
    CommonReplyLateListService commonReplyLateListService;
    @Autowired
    TipReplyUpListService tipReplyUpListService;
    @Autowired
    TipReplyLateListService tipReplyLateListService;
    @Autowired
    TipReplyUpCheckService tipReplyUpCheckService;
    @Autowired
    TipReplyUpActionService tipReplyUpActionService;
    @Autowired
    TipReplyRptCheckService tipReplyRptCheckService;
    @Autowired
    TipReplyPickActionService tipReplyPickActionService;
    @Autowired
    EditNewReplyInsertService editNewReplyInsertService;
    @Autowired
    EditNewReplyListService editNewReplyListService;
    // Q게시판 등록 페이지 이동
    @RequestMapping("/qBoardInsertForm.bo")
    public String qBoardInsertForm(@RequestParam int subCa, Model model){

        List<QboardVO> list = commonBoardBookCateSelectService.bookCategory(subCa);
        String subcategory = commonSubCateService.subCategory(subCa);

        System.out.println("여여여: "+list.get(0).getBook_ca_name());
        model.addAttribute("setBook",list.get(0).getBook_ca_name());    //유효성 처리중 시간부족으로 인해 첫번째 책 카테고리 이름 박아놓음
        model.addAttribute("setBookNo",list.get(0).getBook_ca_no());
        model.addAttribute("Book", list);
        model.addAttribute("subCategory", subcategory);
        model.addAttribute("main", "board/dsq_board_write");
        return "template";
    }

    // q게시판 등록 프로세스.
    @RequestMapping("/qboardInsertProcess.bo")
    public String boardInsertProcess(Model model, @RequestParam MultipartFile q_file1, QboardVO qboardVO, HttpServletRequest request){

        System.out.println("QboardVO : " + qboardVO.toString());
        commonBoardInsertService.qBoardInsert(q_file1, qboardVO, request);

        int subCa = qboardVO.getSub_ca_no();

        return "redirect:qboardListForm.bo?subCa="+subCa;
    }


    @RequestMapping("/qboardListForm.bo")
    public String boardListForm(@RequestParam(defaultValue = "1") int subCa, Model model,
                                @RequestParam(value = "nowPage1", required = false) String nowPage1,
                                @RequestParam(value = "cntPerPage1", required = false) String cntPerPage1,
                                @RequestParam(value = "nowPage2", required = false) String nowPage2,
                                @RequestParam(value = "cntPerPage2", required = false) String cntPerPage2,
                                @RequestParam(value = "nowPage3", required = false) String nowPage3,
                                @RequestParam(value = "cntPerPage3", required = false) String cntPerPage3,
                                @RequestParam(value = "nowPage4", required = false) String nowPage4,
                                @RequestParam(value = "cntPerPage4", required = false) String cntPerPage4,
                                @RequestParam(value = "nowPage5", required = false) String nowPage5,
                                @RequestParam(value = "cntPerPage5", required = false) String cntPerPage5,
                                @RequestParam(value = "state", defaultValue = "1", required = false) String state){


         int state1 = Integer.parseInt(state);

         if (nowPage1 == null && cntPerPage1 == null) {
             nowPage1 = "1";
             cntPerPage1 = "5";
         } else if (nowPage1 == null) {
             nowPage1 = "1";
         } else if (cntPerPage1 == null) {
             cntPerPage1 = "5";
         }

         int completeCount = commonBoardCompleteCount.qBoardCompleteCount(subCa);
         PagingVO completePaging = new PagingVO(completeCount, Integer.parseInt(nowPage1), Integer.parseInt(cntPerPage1));
         model.addAttribute("completePaging", completePaging);
         List<QboardVO> completeList = commonBoardListService.qBoardList(subCa, completePaging);
         model.addAttribute("completeList", completeList);


         if (nowPage2 == null && cntPerPage2 == null) {
             nowPage2 = "1";
             cntPerPage2 = "5";
         } else if (nowPage2 == null) {
             nowPage2 = "1";
         } else if (cntPerPage2 == null) {
             cntPerPage2 = "5";
         }


         int readyCount = commonBoardReadyCountService.qBoardReadyCount(subCa);
         PagingVO readyPaging = new PagingVO(readyCount, Integer.parseInt(nowPage2), Integer.parseInt(cntPerPage2));
         model.addAttribute("readyPaging", readyPaging);
         List<QboardVO> readyList = commonBoardReadyListService.qBoardReadyList(subCa, readyPaging);
         model.addAttribute("readyList", readyList);

         if (nowPage3 == null && cntPerPage3 == null) {
             nowPage3 = "1";
             cntPerPage3 = "5";
         } else if (nowPage3 == null) {
             nowPage3 = "1";
         } else if (cntPerPage3 == null) {
             cntPerPage3 = "5";
         }

         int latesCount = commonBoardLatesCountService.qBoardLatesCount(subCa);
         PagingVO latesPaging = new PagingVO(latesCount, Integer.parseInt(nowPage3), Integer.parseInt(cntPerPage3));
         model.addAttribute("latesPaging", latesPaging);
         List<QboardVO> latestList = commonBoardLatesListService.qBoardLatesList(subCa, latesPaging);
         model.addAttribute("latestList", latestList);

         if (nowPage4 == null && cntPerPage4 == null) {
             nowPage4 = "1";
             cntPerPage4 = "5";
         } else if (nowPage4 == null) {
             nowPage4 = "1";
         } else if (cntPerPage4 == null) {
             cntPerPage4 = "5";
         }

         int popuCount = commonBoardPopularityCountService.qBoardPopularityCount(subCa);
         PagingVO popuPaging = new PagingVO(popuCount, Integer.parseInt(nowPage4), Integer.parseInt(cntPerPage4));
         model.addAttribute("popuPaging", popuPaging);
         List<QboardVO> popularityList = commonBoardPopularityListService.qBoardPopularityList(subCa, popuPaging);
         model.addAttribute("popularityList", popularityList);

         if (nowPage5 == null && cntPerPage5 == null) {
             nowPage5 = "1";
             cntPerPage5 = "5";
         } else if (nowPage5 == null) {
             nowPage5 = "1";
         } else if (cntPerPage5 == null) {
             cntPerPage5 = "5";
         }

         int expCount = commonBoardExpCountService.qBoardExpCount(subCa);

         PagingVO expPaging = new PagingVO(expCount, Integer.parseInt(nowPage5), Integer.parseInt(cntPerPage5));
         model.addAttribute("expPaging", expPaging);
         List<QboardVO> expList = commonBoardExpListSerivce.qboardExpList(subCa, expPaging);
         model.addAttribute("expList", expList);

         if (state1 == 1){
             model.addAttribute("active1", "active");
             model.addAttribute("show1", "active show");
         } else if(state1 == 2){
             model.addAttribute("active2", "active");
             model.addAttribute("show2", "active show");
         } else if(state1 == 3){
             model.addAttribute("active3", "active");
             model.addAttribute("show3", "active show");
         } else if(state1 == 4){
             model.addAttribute("active4", "active");
             model.addAttribute("show4", "active show");
         } else if(state1 == 5){
             model.addAttribute("active5", "active");
             model.addAttribute("show5", "active show");
         }



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

    // 댓글 리스트 ( 인기순 )
    @RequestMapping(value = "/replyList.bo", produces = "application/json; charset=utf-8")
    @ResponseBody
    public ResponseEntity replyList(@ModelAttribute("ReplyBoardVO") ReplyBoardVO replyBoardVO, HttpSession session){
//        System.out.println("replyBoardVO : " + replyBoardVO);
//        System.out.println("sessionNick : " + (String)session.getAttribute("userNick"));

        HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

        List<ReplyBoardVO> replyVOlist = commonReplyListService.commonReplyList(replyBoardVO);

        System.out.println("replyVOlist");
        System.out.println("replyVOlist: "+ replyVOlist.get(0).getGrade_no());
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
                hm.put("grade_no",replyVOlist.get(i).getGrade_no());
                hmlist.add(hm);
            }
        }
        JSONArray jsonArray = new JSONArray(hmlist);
        return new ResponseEntity(jsonArray.toString(), responseHeaders, HttpStatus.CREATED);
    }

    // 댓글 리스트 ( 최신순 )
    @RequestMapping(value = "/replyLateList.bo", produces = "application/json; charset=utf-8")
    @ResponseBody
    public ResponseEntity replyLateList(@ModelAttribute("ReplyBoardVO") ReplyBoardVO replyBoardVO, HttpSession session){
//        System.out.println("replyBoardVO : " + replyBoardVO);
//        System.out.println("sessionNick : " + (String)session.getAttribute("userNick"));

        HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

        List<ReplyBoardVO> replyVOlist = commonReplyLateListService.commonReplyLateList(replyBoardVO);

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
                hm.put("grade_no",replyVOlist.get(i).getGrade_no());
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

    	//return "redirect:"+page;
        return "redirect:/qboardUpAction.bo?qboardNum=" + qboardNum + "&subCa=" + subCa+"&check="+page;
    }
    // 게시판 추천 액션
    @RequestMapping("/qboardUpAction.bo")
    public String qboardUp(@RequestParam("qboardNum")int qboardNum,
                           @RequestParam("subCa") int subCa,
                           @RequestParam("check") int check, HttpSession session){

        System.out.println("업액션컨트롤러");

        int q_no = qboardNum;
        int mem_no = (Integer)session.getAttribute("userNo");

        if (check == 0) {
            commonBoardUpService.qBoardUp(mem_no, q_no, subCa);
            return "redirect:/tipReplyAlert.bo?check=0";
        }else if (check!=0){
            return "redirect:/tipReplyAlert.bo?check=1";
        }

        return "redirect:/qboardContent.bo?qboardNum="+qboardNum + "&subCa=" + subCa;
    }

    // 댓글 추천 체크
    @RequestMapping("/replyUpCheck.bo")
    public String replyUpCheck(HttpServletRequest request, HttpSession session){

        String qboardNum = request.getParameter("qboardNum");
        String subCa = request.getParameter("subCa");


        int check = commonReplyUpCheckService.replyUpCheck(request, session);
        if(check == 0){
            return "redirect:/tipReplyAlert.bo?check=0";
        }
        else if(check !=0){
            return "redirect:/tipReplyAlert.bo?check=1";
        }

        return "redirect:/qboardContent.bo?qboardNum="+qboardNum+"&subCa="+subCa;
    }

    // 댓글 체택
    @RequestMapping("/replyPick.bo")
    public String replyPick(HttpServletRequest request){

        String qboardNum = request.getParameter("qboardNum");
        String subCa = request.getParameter("subCa");
        System.out.println("reply_pick : " + request.getParameter("qMemNo"));

        commonReplyPickService.replyPick(request);

        return "redirect:/qboardContent.bo?qboardNum="+qboardNum+"&subCa="+subCa;
//        return "template";
    }

    
    // 댓글 신고
    @RequestMapping("/replyDownPopup.bo")
    public String replyDownPopup(HttpServletRequest request){

        String qboardNum = request.getParameter("qboardNum");
        String subCa = request.getParameter("subCa");
        System.out.println("답글번호 :"+ request.getParameter("reply_no"));

        commonReplyDownService.replyDown(request);

        return "redirect:/qboardContent.bo?qboardNum="+qboardNum+"&subCa="+subCa;
    }


    //신고 체크
    //@RequestMapping("/qboardDownCheck.bo")
    //public String
    //신고 팝업
    @RequestMapping("/qboardDownPopup.bo")
    public String qboardDownPopup(HttpServletRequest request){

        String qboardNum = request.getParameter("qboardNum");
        String subCa = request.getParameter("subCa");

        commonBoardDownService.qBoardDown(request);

        return "redirect:/qboardContent.bo?qboardNum="+qboardNum+"&subCa="+subCa;
    }


    // 현상금 걸기
    @RequestMapping("/qboardExpInput.bo")
    @ResponseBody
    public int qboardExpInput(HttpSession session){

        int userNo = (Integer)session.getAttribute("userNo");
        System.out.println("userNo : " + userNo);

        int memberExp = commonMemberExpSelect.memberExp(userNo);

        return memberExp;
    }

    // 게시글 현상금 업데이트
    @RequestMapping("/qboardExpUpdate.bo")
    public String qboardExpUpdate(HttpServletRequest request){



        String qboardNum = request.getParameter("qboardNum");
        System.out.println("q_no : " + qboardNum);
        String subCa = request.getParameter("subCa");
        System.out.println("sub_ca : " + subCa);

        int exp = Integer.parseInt(request.getParameter("mem_exp"));
        System.out.println("exp : " + exp);

        commonBoardExpUpdateService.qBoardExpUpdate(Integer.parseInt(qboardNum), exp);



        return "redirect:/qboardContent.bo?qboardNum="+qboardNum+"&subCa="+subCa;
    }


    // 게시판 에디터 답변 글쓰기
    @RequestMapping("/editInput.bo")
    @ResponseBody
    public String editInput(QboardVO qboardVO){

        editQboardReplyInsertService.editBoardInsert(qboardVO);

        return "success";
    }


    // 게시판 에디터 리스트
    @RequestMapping(value = "/editList.bo", produces = "application/json; charset=utf-8")
    @ResponseBody
    public ResponseEntity replyList(QboardVO qboardVO){

        System.out.println("이건? : " + qboardVO);

        HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

        List<QboardVO> editList = editQboardReplyListService.editBoardReply(qboardVO);
        System.out.println("살려줘 : "+editList);

        if (editList.size() > 0){
            for (int i = 0; i < editList.size(); i++) {
                HashMap hm = new HashMap();
                hm.put("reply_no", editList.get(i).getReply_no());
                hm.put("q_no", editList.get(i).getQ_no());
                hm.put("mem_no", editList.get(i).getMem_no());
                hm.put("mem_nick", editList.get(i).getMem_nick());
                hm.put("reply_pick", editList.get(i).getReply_pick());
                hm.put("edit_reply_content", editList.get(i).getReply_Edit_Content());

                hmlist.add(hm);
            }
        }
        JSONArray jsonArray = new JSONArray(hmlist);
        return new ResponseEntity(jsonArray.toString(), responseHeaders, HttpStatus.CREATED);
    }

    // 게시판 검색 리스트
    @RequestMapping("/qboardSearchList.bo")
    public String qboardSearchList(@RequestParam(value = "nowPage", required = false) String nowPage,
                                   @RequestParam(value = "cntPerPage", required = false) String cntPerPage,
                                   @RequestParam(required = false) String searchTerm, Model model){

        if (nowPage == null && cntPerPage == null) {
            nowPage = "1";
            cntPerPage = "5";
        } else if (nowPage == null) {
            nowPage = "1";
        } else if (cntPerPage == null) {
            cntPerPage = "5";
        }

        int searchCount = commonBoardSearchCountService.qBoardSearchCount(searchTerm);

        PagingVO searchPaging = new PagingVO(searchCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
        model.addAttribute("searchPaging", searchPaging);
        List<QboardVO> searchList = commonBoardSearchService.qboardSearchList(searchTerm, searchPaging);

        model.addAttribute("searchTerm", searchTerm);
        model.addAttribute("searchList", searchList);
        model.addAttribute("main", "board/search");
        return "template";
    }

    //스크랩북 신청
    @RequestMapping("/bookAddAction.bo")
    public String bookAddAction(HttpSession session,@RequestParam int qboardNum,@RequestParam int subCa){
        int q_no = qboardNum;
        int mem_no = (Integer) session.getAttribute("userNo");

        int bookCheck = bookScrapCheckService.bookScrapCheck(q_no,mem_no);
        int memCheck = bookMemCheckService.bookMemCheck(q_no,mem_no);

        String result =bookAddActionService.bookAddAction(bookCheck,memCheck,mem_no, q_no);

        return "redirect:/qboardContent.bo?qboardNum="+qboardNum+"&subCa="+subCa;


    }

    // 중복추천, 신고 alert창
    /*
    @RequestMapping(value = "/bookFail.bo")
    public String qboardRptFail(Model model,@RequestParam int new_no,@RequestParam int updown){
        model.addAttribute("main","board/TestFail");
        model.addAttribute("updown",updown);
        return "template";
    }
    */


    /***********여기부터새터**************/
    @RequestMapping("/qboardTipForm.bo")
    public String qboardTipForm( Model model,
                                 @RequestParam(value = "nowPage1", required = false) String nowPage1,
                                 @RequestParam(value = "cntPerPage1", required = false) String cntPerPage1,
                                 @RequestParam(value = "nowPage2", required = false) String nowPage2,
                                 @RequestParam(value = "cntPerPage2", required = false) String cntPerPage2,
                                 @RequestParam(value = "nowPage3", required = false) String nowPage3,
                                 @RequestParam(value = "cntPerPage3", required = false) String cntPerPage3,
                                 @RequestParam(value = "nowPage4", required = false) String nowPage4,
                                 @RequestParam(value = "cntPerPage4", required = false) String cntPerPage4,
                                @RequestParam(value = "state", defaultValue = "1", required = false) String state){

        //답변완료 글 카운트
        int pickCount= tipBoardPickCountService.tipBoardPickCount();
        //답변대기 글 카운트
        int readyCount= tipBoardReadyCountService.tipBoardReadyCount();
        //전체 글 카운트
        int allCount= tipBoardCountService.tipboardCount();
        int state1 = Integer.parseInt(state);

        /*****답변완료********/
        if (nowPage1 == null && cntPerPage1 == null) {
            nowPage1 = "1";
            cntPerPage1 = "5";
        } else if (nowPage1 == null) {
            nowPage1 = "1";
        } else if (cntPerPage1 == null) {
            cntPerPage1 = "5";
        }

        PagingVO pickPaging = new PagingVO(pickCount,Integer.parseInt(nowPage1),Integer.parseInt(cntPerPage1));
        List<QboardVO> pickList = tipBoardPickListService.tipBoardPickList(pickPaging);

        for(int i=0;i< pickList.size();i++) {
            System.out.println("cnt: " +pickCount);
            System.out.println("pickList: " + pickList.get(i).toString());
        }
        model.addAttribute("pickPaging",pickPaging);
        model.addAttribute("pickList",pickList);

        /************답변대기********/
        if (nowPage2 == null && cntPerPage2 == null) {
            nowPage2 = "1";
            cntPerPage2 = "5";
        } else if (nowPage2 == null) {
            nowPage2 = "1";
        } else if (cntPerPage2 == null) {
            cntPerPage2 = "5";
        }
        PagingVO readyPaging = new PagingVO(readyCount,Integer.parseInt(nowPage2),Integer.parseInt(cntPerPage2));
        List<QboardVO> readyList = tipBoardReadyListService.tipBoardReadyList(readyPaging);

        model.addAttribute("readyPaging",readyPaging);
        model.addAttribute("readyList",readyList);


        /********최신순********/
        if (nowPage3 == null && cntPerPage3 == null) {
            nowPage3 = "1";
            cntPerPage3 = "5";
        } else if (nowPage3 == null) {
            nowPage3 = "1";
        } else if (cntPerPage3 == null) {
            cntPerPage3 = "5";
        }
        PagingVO latePaging = new PagingVO(allCount,Integer.parseInt(nowPage3),Integer.parseInt(cntPerPage3));
        List<QboardVO> lateList = tipBoardLatesListService.tipBoardLatesList(latePaging);
        model.addAttribute("latePaging",latePaging);
        model.addAttribute("lateList",lateList);


        /********인기순******/
        if(nowPage4 == null && cntPerPage4 == null){
            nowPage4 = "1";
            cntPerPage4 ="5";
        } else if (nowPage4 == null){
            nowPage4 = "1";
        } else if (cntPerPage4 == null){
            cntPerPage4 = "5";
        }
        PagingVO populPaging = new PagingVO(allCount,Integer.parseInt(nowPage4),Integer.parseInt(cntPerPage4));
        List<QboardVO> populList = tipBoardPopularityListService.tipBoardPopularityList(populPaging);
        model.addAttribute("populPaging",populPaging);
        model.addAttribute("populList",populList);

        if (state1 == 1){
            model.addAttribute("active1", "active");
            model.addAttribute("show1", "active show");
        } else if(state1 == 2){
            model.addAttribute("active2", "active");
            model.addAttribute("show2", "active show");
        } else if(state1 == 3){
            model.addAttribute("active3", "active");
            model.addAttribute("show3", "active show");
        } else if(state1 == 4){
            model.addAttribute("active4", "active");
            model.addAttribute("show4", "active show");
        }

        model.addAttribute("main", "board/dsq_new_list");
        return "template";
    }

    //검색팁 내용보기
    @RequestMapping("qboardTipContent.bo")
    public String qboardTipContent(Model model,@RequestParam("new_no") int new_no){
        QboardVO tipVO = tipBoardContentService.tipboardContent(new_no);
        tipVO.setNew_date(tipVO.getNew_date().substring(0,11));
        List<QboardVO> replyLateList = tipReplyLateListService.tipReplyLateList(new_no);
        List<QboardVO> replyUpList = tipReplyUpListService.tipReplyUpList(new_no);
        model.addAttribute("tipVO",tipVO);
        model.addAttribute("replyLateList",replyLateList);

        model.addAttribute("replyUpList",replyUpList);
        model.addAttribute("main","board/dsq_new_content");

        return "template";
    }
    
    //신고
    @RequestMapping("/qboardTipDownAction.bo")
//  @ResponseBody
    public String qboardTipDownPopup(HttpServletRequest request) {
        System.out.println("다운");
        String new_no = request.getParameter("new_no");

        String result = tipBoardDownActionService.tipBoardDownAction(request);
        System.out.println("result: " + result);
        if (result.equals("T")) {
            //신고 완료
            return "redirect:/qboardTipContent.bo?new_no=" + new_no;
        }
        //신고 실패 ( alert창을 띄워주고 신고는 update 2 )
        return "redirect:/qboardRptFail.bo?new_no=" + new_no + "&updown=" + 2;
    }
    //추천
    @RequestMapping("/qboardTipUpAction.bo")
    public String qboardTipUpAction(HttpServletRequest request){
        System.out.println("업");
        String new_no = request.getParameter("new_no");
        String result = tipBoardUpActionService.tipBoardUpAction(request);
        if(result.equals("T")) {
            //추천 완료
            return "redirect:/qboardTipContent.bo?new_no=" + new_no;
        }
        //추천 실패 ( alert창을 띄워주고 추천은 update 1 )
        return "redirect:/qboardRptFail.bo?new_no="+new_no+"&updown="+1;
    }

    // 중복추천, 신고 alert창
    @RequestMapping(value = "/qboardRptFail.bo")
    public String qboardRptFail(Model model,@RequestParam int new_no,@RequestParam int updown){
        model.addAttribute("main","board/tipFail");
        model.addAttribute("updown",updown);
        return "template";
    }

    //글 쓰기 폼
    @RequestMapping("/qboardTipWriteForm.bo")
    public String qboardTipWriteForm(Model model){
        model.addAttribute("main","board/dsq_new_writeForm");
        return "template";
    }
    //글쓰기 액션
    @RequestMapping(value = "/qboardTipWriteAction.bo")
    public String qboardTipWriteAction(QboardVO vo, @RequestParam MultipartFile q_file1, HttpServletRequest request, HttpSession session){

        int mem_no = (Integer)session.getAttribute("userNo");
        vo.setMem_no(mem_no);
        System.out.println("vo:"+vo.toString());
        tipBoardWriteActionService.tipBoardWriteAction(q_file1,vo,request);
        return "redirect:/qboardTipForm.bo?state=2";
    }
    //답글 쓰기 폼
    @RequestMapping("/tipReplyWriteForm.bo")
    public String tipReplyWriteForm(@RequestParam("new_no") int new_no,QboardVO vo,Model model){
        System.out.println("답글쓰기폼");
        vo = tipBoardContentService.tipboardContent(new_no);
        model.addAttribute("main","board/dsq_new_reply_writeForm");
        model.addAttribute("vo",vo);
        return "template";
    }

    //댓글 쓰기 액션
    @RequestMapping("/tipReplyWriteAction.bo")
    public String tipReplyWriteAction(QboardVO vo,HttpSession session){
        System.out.println("리플라이라이트액션");
        int mem_no = (Integer)session.getAttribute("userNo");
        int new_no = vo.getNew_no();
        vo.setMem_no(mem_no);
        tipReplyWriteActionService.tipReplyWriteAction(vo);
        System.out.println("작업완료");
        return "redirect:/qboardTipContent.bo?new_no="+new_no;
    }

    //새터 댓글 추천 유효성 및 액션
    @RequestMapping("/tipReplyUp.bo")
    public String tipReplyUp(@RequestParam("mem_no") int mem_no,@RequestParam("new_reply_no") int new_reply_no,Model model) {
        System.out.println("새터댓글추천");

        int check = tipReplyUpCheckService.TipReplyUpCheck(mem_no, new_reply_no);
        System.out.println("check : " + check);

        //0 추천 true
        if (check == 0) {
            tipReplyUpActionService.tipReplyUpActionService(mem_no, new_reply_no);
            return "redirect:/tipReplyAlert.bo?check=0";
        //0 아니면 추천 False
        } else if (check != 0) {
            return "redirect:/tipReplyAlert.bo?check=1";
        }
        return "template";
    }

    //새터 댓글 신고 유효성 및 액션
    @RequestMapping("/tipReplyRpt.bo")
    public String tipReplyRpt(HttpServletRequest request){
        int check = tipReplyRptCheckService.tipReplyRptCheck(request);
        //신고 true
        System.out.println("신고 check:"+ check);
        if(check == 2){
            return "redirect:/tipReplyAlert.bo?check=2";
        }else if(check == 3){   //신고 False
            return "redirect:/tipReplyAlert.bo?check=3";
        }
        return "template";
    }
    //새터 추천,신고 알러트창
    @RequestMapping("tipReplyAlert.bo")
    public String tipReplyAlert(@RequestParam("check") int check,Model model) {
        model.addAttribute("main", "board/replyAlert");
        model.addAttribute("check",check);

        return "template";
    }
    //새터 채택
    @RequestMapping("tipReplyPick.bo")
    public String tipReplyPick(@RequestParam("new_no") int new_no, @RequestParam("new_reply_no") int new_reply_no,HttpSession session){
        tipReplyPickActionService.tipReplyPickAction(session,new_no,new_reply_no);

        return "redirect:/qboardTipContent.bo?new_no="+new_no;
    }
    // 새터 게시판 에디터 답변 글쓰기
    @RequestMapping("/neweditInput.bo")
    @ResponseBody
    public String neweditInput(QboardVO qboardVO,HttpSession session){

        System.out.println("여기오나요: ");
        System.out.println(qboardVO.toString());
        editNewReplyInsertService.editNewReplyInsert(qboardVO,session);

        return "success";
    }
    // 새터 에디터 리스트
    @RequestMapping(value = "/neweditList.bo", produces = "application/json; charset=utf-8")
    @ResponseBody
    public ResponseEntity editreplyList(QboardVO qboardVO){

        System.out.println("이건? : " + qboardVO);

        HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

        List<QboardVO> neweditList = editNewReplyListService.editNewReplyList(qboardVO);
        System.out.println("새터에딧리스트 : "+neweditList);

        if (neweditList.size() > 0){
            for (int i = 0; i < neweditList.size(); i++) {
                HashMap hm = new HashMap();
                hm.put("reply_no", neweditList.get(i).getNew_reply_edit_no());
                hm.put("q_no", neweditList.get(i).getNew_no());
                hm.put("mem_no", neweditList.get(i).getMem_no());
                hm.put("mem_nick", neweditList.get(i).getMem_nick());
                hm.put("reply_pick", neweditList.get(i).getNew_reply_pick());
                hm.put("new_reply_edit_content", neweditList.get(i).getNew_reply_edit_content());

                hmlist.add(hm);
            }
        }
        JSONArray jsonArray = new JSONArray(hmlist);
        return new ResponseEntity(jsonArray.toString(), responseHeaders, HttpStatus.CREATED);
    }
}

