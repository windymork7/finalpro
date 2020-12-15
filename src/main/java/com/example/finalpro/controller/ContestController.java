package com.example.finalpro.controller;

import com.example.finalpro.service.contest.ContestContentService;
import com.example.finalpro.service.contest.ContestCountService;
import com.example.finalpro.service.contest.ContestInsertService;
import com.example.finalpro.service.contest.ContestListService;
import com.example.finalpro.vo.ContestVO;
import com.example.finalpro.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ContestController {

    @Autowired
    ContestInsertService contestInsertService;
    @Autowired
    ContestListService contestListService;
    @Autowired
    ContestContentService contestContentService;
    @Autowired
    ContestCountService contestCountService;


    // 공모전 리스트 페이지
    @RequestMapping("/contestList.co")
    public String contestList(PagingVO pagingVO, Model model,
                              @RequestParam(value = "nowPage", required = false) String nowPage,
                              @RequestParam(value = "cntPerPage", required = false) String cntPerPage){

        int count = contestCountService.contestCount();

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

        List<ContestVO> list = contestListService.contestList(pagingVO);

        model.addAttribute("contestList", list);
        model.addAttribute("main", "contest/contest_list");
        return "template";
    }

    // 공모전 글쓰기 페이지
    @RequestMapping("/contestInsert.co")
    public String contestInsert(Model model){

        model.addAttribute("main", "contest/contest_write");
        return "template";
    }

    // 공모전 글쓰기
    @RequestMapping("/contestInsertProcess.co")
    public String contestInsertProcess(@RequestParam MultipartFile contest_img2, ContestVO contestVO, HttpServletRequest request){

        contestInsertService.contestInsert(contest_img2, contestVO, request);

        return "redirect:contestList.co";
    }

    // 공모전 해당글 보기
    @RequestMapping("/contestContent.co")
    public String contestContent(@RequestParam int contest_no, Model model){


        ContestVO contestVO = contestContentService.contestContent(contest_no);

        model.addAttribute("contestVO", contestVO);
        model.addAttribute("main", "contest/contest");
        return "template";
    }

}
