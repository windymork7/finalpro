package com.example.finalpro.controller;

import com.example.finalpro.service.edit.*;
import com.example.finalpro.vo.EditMemberVO;
import com.example.finalpro.vo.PagingVO;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class EditController {

    @Autowired
    EditBoardInsertService editBoardInsertService;
    @Autowired
    EditBoardListService editBoardListService;
    @Autowired
    EditBoardContentService editBoardContentService;
    @Autowired
    EditBoardDeleteSerivce editBoardDeleteSerivce;
    @Autowired
    EditBoardUpdateService editBoardUpdateService;
    @Autowired
    EditBoardReplyInsertService editBoardReplyInsertService;
    @Autowired
    EditBoardReplyListService editBoardReplyListService;
    @Autowired
    EditboardCountService editboardCountService;

    // 에디터 게시판 페이지
    @RequestMapping("/editBoardInsert.ed")
    public String editBoardInsert(Model model){

        model.addAttribute("main", "edit/et_write");
        return "template";
    }

    // 에디터 게시판 글쓰기
    @RequestMapping("/editBoardInsertProcess.ed")
    public String editBoardInsertProcess(@RequestParam MultipartFile edit_img1, EditMemberVO editMemberVO, HttpServletRequest request){

        editBoardInsertService.editBoardInsert(edit_img1, editMemberVO, request);

        return "redirect:/editBoardList.ed";
    }


    // 에디터 리스트 페이지
    @RequestMapping("/editBoardList.ed")
    public String editBoardList(PagingVO pagingVO, Model model,
                                @RequestParam(value = "nowPage", required = false) String nowPage,
                                @RequestParam(value = "cntPerPage", required = false) String cntPerPage){

        int count = editboardCountService.editBoardCount();

        if (nowPage == null && cntPerPage == null) {
            nowPage = "1";
            cntPerPage = "5";
        } else if (nowPage == null) {
            nowPage = "1";
        } else if (cntPerPage == null) {
            cntPerPage = "5";
        }

        pagingVO = new PagingVO(count, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

        model.addAttribute("paging", pagingVO);

        List<EditMemberVO> list = editBoardListService.editBoardList(pagingVO);

        model.addAttribute("list", list);
        model.addAttribute("main", "edit/et_list");
        return "template";
    }

    // 에디터 해당 게시글 조회
    @RequestMapping("/editBoardContent.ed")
    public String editBoardContent(Model model
                            , @RequestParam("editBoardNum") int editBoardNum
                            , @RequestParam(defaultValue = "0") int upda){

        System.out.println(editBoardNum);
        EditMemberVO editMemberVO = editBoardContentService.editBoardContent(editBoardNum);

        model.addAttribute("editMemberVO",editMemberVO);
        model.addAttribute("upda", upda);
        model.addAttribute("main", "edit/et");
        return "template";
    }

    // 에디터 해당 게시글 삭제
    @RequestMapping("/editBoardDelete.ed")
    public String editBoardDelete(@RequestParam int editBoardNum){

        editBoardDeleteSerivce.editBoardDelete(editBoardNum);

        return "redirect:/editBoardList.ed";
    }

    // 에디터 게시글 수정
    @RequestMapping("/editBoardUpdateProcess.ed")
    public String editBoardUpdateProcess(EditMemberVO editMemberVO){
        System.out.println(editMemberVO);

        int editBoardNum = editMemberVO.getEdit_no();
        editBoardUpdateService.editBoardUpdate(editMemberVO);

        return "redirect:/editBoardContent.ed?editBoardNum="+editBoardNum;
    }

    // 에디터 댓글 입력
    @RequestMapping("/editReplyInsert.ed")
    @ResponseBody
    public String editReplyInsert(EditMemberVO editMemberVO){

        editBoardReplyInsertService.editBoardReplyInsert(editMemberVO);

        return "success";
    }

    @RequestMapping(value = "/editReplyList.ed", produces = "application/json; charset=utf-8")
    @ResponseBody
    public ResponseEntity replyList(@RequestParam int edit_no){

        System.out.println("여기1");

        HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

        List<EditMemberVO> replyVOlist = editBoardReplyListService.editBoardReplyList(edit_no);

        if (replyVOlist.size() > 0){
            for (int i = 0; i < replyVOlist.size(); i++) {
                HashMap hm = new HashMap();
                hm.put("mem_nick", replyVOlist.get(i).getMem_nick());
                hm.put("edit_reply_content", replyVOlist.get(i).getEdit_reply_content());

                hmlist.add(hm);
            }
        }
        JSONArray jsonArray = new JSONArray(hmlist);
        return new ResponseEntity(jsonArray.toString(), responseHeaders, HttpStatus.CREATED);
    }

}
