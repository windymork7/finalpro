package com.example.finalpro.controller;

import com.example.finalpro.service.edit.EditBoardInsertService;
import com.example.finalpro.vo.EditMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EditController {

    @Autowired
    EditBoardInsertService editBoardInsertService;

    // 에디터 게시판 페이지
    @RequestMapping("/editBoardInsert.ed")
    public String editBoardInsert(Model model){

        model.addAttribute("main", "edit/editBoardInsert");
        return "template";
    }

    // 에디터 게시판 글쓰기
    @RequestMapping("/editBoardInsertProcess.ed")
    public String editBoardInsertProcess(Model model, EditMemberVO editMemberVO){
         
        editBoardInsertService.editBoardInsert(editMemberVO);

        return "template";
    }
}
