package com.example.finalpro.controller;

import com.example.finalpro.service.board.CommonBoardContent;
import com.example.finalpro.service.board.CommonBoardInsertService;
import com.example.finalpro.service.board.CommonBoardListService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class DsqController {

    @Autowired
    CommonBoardInsertService commonBoardInsertService;

    @Autowired
    CommonBoardListService commonBoardListService;

    @Autowired
    CommonBoardContent commonBoardContent;

    // Q게시판 등록 페이지 이동
    @RequestMapping("/qBoardInsertForm.bo")
    public String qBoardInsertForm(Model model){

        model.addAttribute("main", "board/TestBoard");
        return "template";
    }

    // q게시판 등록 프로세스.
    @RequestMapping("/qboardInsertProcess.bo")
    public String boardInsertProcess(Model model, QboardVO qboardVO){

        commonBoardInsertService.qBoardInsert(qboardVO);

        model.addAttribute("main","dsqMain");
        return "template";
    }

    // 게시판 조회 페이지
    @RequestMapping("/qboardListForm.bo")
    public String boardListForm(Model model){

        List<QboardVO> list = new ArrayList<QboardVO>();

        list = commonBoardListService.qBoardList();

        model.addAttribute("list",list);
        model.addAttribute("main","board/TestBoardList");
        return "template";
    }

    @RequestMapping("/qboardContent.bo")
    public String qboardContent(@RequestParam("qboardNum") String qboardNum, Model model){

        QboardVO qboardVO = commonBoardContent.qBoardContent(Integer.parseInt(qboardNum));

        model.addAttribute("qBoardVO", qboardVO);
        model.addAttribute("main", "board/TestBoardContent");
        return "template";
    }


}
