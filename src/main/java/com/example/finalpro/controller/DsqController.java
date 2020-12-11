package com.example.finalpro.controller;

import com.example.finalpro.service.board.*;
import com.example.finalpro.service.member.CommonMemberExpSelect;
import com.example.finalpro.vo.PagingVO;
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
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.filechooser.FileSystemView;
import java.io.File;
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
    public String boardInsertProcess(Model model, @RequestParam MultipartFile q_file1, QboardVO qboardVO){

        System.out.println("QboardVO : " + qboardVO.toString());
        commonBoardInsertService.qBoardInsert(q_file1, qboardVO);

        int subCa = qboardVO.getSub_ca_no();

        return "redirect:qboardListForm.bo?subCa="+subCa;
    }

    // 내가 작업하려고 만든 테스트용 메소드 ( 게시판 조회 )
//    @RequestMapping("/qboardListForm.bo")
//    public String boardListForm(@RequestParam(defaultValue = "1") int subCa, Model model){
//
//
//        List<QboardVO> completeList = commonBoardListService.qBoardList(subCa);
//        List<QboardVO> readyList = commonBoardReadyListService.qBoardReadyList(subCa);
//        List<QboardVO> latestList = commonBoardLatesListService.qBoardLatesList(subCa);
//        List<QboardVO> popularityList = commonBoardPopularityListService.qBoardPopularityList(subCa);
//        List<QboardVO> expList = commonBoardExpListSerivce.qboardExpList(subCa);
//
//        model.addAttribute("completeList",completeList);
//        model.addAttribute("readyList", readyList);
//        model.addAttribute("latestList", latestList);
//        model.addAttribute("popularityList", popularityList);
//        model.addAttribute("expList", expList);
//
//        model.addAttribute("subCa", subCa);
//        model.addAttribute("main", "board/board_list");
//        return "template";
//    }

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
        commonBoardUpService.qBoardUp(mem_no,q_no, subCa);

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
    public String qboardSearchList(Model model){



        return "template";
    }

}
