package com.example.finalpro.controller;

import com.example.finalpro.service.faq.*;
import com.example.finalpro.vo.FaqVO;
import com.example.finalpro.vo.NoticeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.ArrayList;
import java.util.List;

@Controller
public class FaqController {

    @Autowired
    FaqBoardList faqBoardList;
    @Autowired
    FaqBoardContent faqBoardContent;
    @Autowired
    FaqBoardDelete faqBoardDelete;
    @Autowired
    FaqBoardInsert faqBoardInsert;
    @Autowired
    FaqBoardUpdateForm faqBoardUpdateForm;
    @Autowired
    FaqBoardUpdate faqBoardUpdate;
    //리스트
    @RequestMapping("faqListForm.fa")
    public String faqBoardList(Model model){

        List<FaqVO> list = new ArrayList<>();
        list = faqBoardList.faqBoardList();

        model.addAttribute("list",list);
        model.addAttribute("main","faq/TestFaqList");
        return "template";
    }
    //내용
    @RequestMapping("faqBoardContent.fa")
    public String faqBoardContent(@RequestParam("faq_no") String faq_no, Model model){
        FaqVO faqVO = faqBoardContent.faqBoardContent(Integer.parseInt(faq_no));

        model.addAttribute("faqVO",faqVO);
        model.addAttribute("main","faq/TestFaqContent");
        return "template";
    }
    //삭제
    @RequestMapping("faqBoardDelete.fa")
    public String faqBoardDelete(@RequestParam("faq_no") String faq_no,Model model){

        faqBoardDelete.faqBoardDelete(Integer.parseInt(faq_no));

        model.addAttribute("faq_no",faq_no);
        model.addAttribute("main","faq/TestFaqList");
        return "redirect:faqListForm.fa";
    }
    //쓰기폼
    @RequestMapping("faqBoardInsertForm.fa")
    public String faqBoardInsertForm(Model model){
        model.addAttribute("main","faq/TestFaqWriteForm");
        return "template";
    }
    //쓰기 액션
    @RequestMapping("faqBoardInsert.fa")
    public String faqBoardInsert(FaqVO faqVO, Model model){
        faqBoardInsert.faqBoardInsert(faqVO);
//        model.addAttribute("main","faq/TestFaqList");
        return "redirect:faqListForm.fa";
    }
    //수정폼
    @RequestMapping("faqBoardUpdateForm.fa")
    public String faqBoardUpdateForm(@RequestParam("faq_no")String faq_no,Model model){
        FaqVO faqVO = faqBoardUpdateForm.faqBoardUpdateForm(Integer.parseInt(faq_no));


        model.addAttribute("faqVO",faqVO);
        model.addAttribute("main","faq/TestFaqUpdateForm");
        return "template";
    }
    //수정
    @RequestMapping("faqBoardUpdate.fa")
    public String faqBoardUpdate(@RequestParam("faq_no")String faq_no, FaqVO faqVO, Model model){
        faqBoardUpdate.faqBoardUpdate(faqVO);

        model.addAttribute("main","faq/TestFaqList");
        return "redirect:faqListForm.fa";
    }

}
