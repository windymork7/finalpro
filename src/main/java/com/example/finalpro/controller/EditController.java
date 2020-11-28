package com.example.finalpro.controller;

import com.example.finalpro.service.edit.EditBoardContentService;
import com.example.finalpro.service.edit.EditBoardInsertService;
import com.example.finalpro.service.edit.EditBoardListService;
import com.example.finalpro.vo.EditMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class EditController {

    @Autowired
    EditBoardInsertService editBoardInsertService;

    @Autowired
    EditBoardListService editBoardListService;

    @Autowired
    EditBoardContentService editBoardContentService;

    // 에디터 게시판 페이지
    @RequestMapping("/editBoardInsert.ed")
    public String editBoardInsert(Model model){

        model.addAttribute("main", "edit/editBoardInsert");
        return "template";
    }

    // 에디터 게시판 글쓰기
    @RequestMapping("/editBoardInsertProcess.ed")
    public String editBoardInsertProcess(EditMemberVO editMemberVO){
         
        editBoardInsertService.editBoardInsert(editMemberVO);

        return "redirect:/editBoardList.ed";
    }


    // 에디터 리스트 페이지
    @RequestMapping("/editBoardList.ed")
    public String editBoardList(Model model){


        List<EditMemberVO> list = editBoardListService.editBoardList();

        model.addAttribute("list", list);
        model.addAttribute("main", "edit/editBoardList");
        return "template";
    }

    // 에디터 해당 게시글 조회
    @RequestMapping("/editBoardContent.ed")
    public String editBoardContent(Model model, @RequestParam("editBoardNum") String editBoardNum){



        EditMemberVO editMemberVO = editBoardContentService.editBoardContent(Integer.parseInt(editBoardNum));

        model.addAttribute("editMemberVO",editMemberVO);
        model.addAttribute("main", "edit/editBoardContent");
        return "template";
    }
}
