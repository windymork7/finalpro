package com.example.finalpro.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.finalpro.service.notice.*;
import com.example.finalpro.vo.NoticeVO;


@Controller
public class NoticeController {

	
	@Autowired
	NoticeBoardList noticeBoardList;
	
	@Autowired
	NoticeBoardContent noticeBoardContent;
	
	@Autowired
	NoticeBoardInsert noticeBoardInsert;
	
	@Autowired
	NoticeBoardDelete noticeBoardDelete;
	
	@Autowired
	NoticeBoardUpdateAction noticeBoardUpdate;
	
	@Autowired
	NoticeBoardUpdateForm noticeBoardUpdateForm;
	//목록
	@RequestMapping("/noticeListForm.no")
	public String noticeListForm(Model model) {
		
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		list = noticeBoardList.noticeBoardList();

		model.addAttribute("list",list);
		model.addAttribute("main","notice/TestNoticeList");
		return "template";
	}
    
	//내용
	@RequestMapping("/noticeContent.no")
	public String noticeContent(@RequestParam("noticeNo") String noticeNo, Model model) {
		
		NoticeVO noticeVO = noticeBoardContent.noticeBoardContent(Integer.parseInt(noticeNo));
		
		model.addAttribute("noticeVO",noticeVO);
		model.addAttribute("main","notice/TestNoticeContent");
		return "template";
	}
	

	
	//글쓰기 폼
	@RequestMapping("/noticeWriteForm.no")
	public String noticeWriteView(Model model) {
		model.addAttribute("main","notice/TestNoticeWriteForm");
		return "template";
	}
	
	//글쓰기 액션
	@RequestMapping("/noticeWriteAction.no")
	public String noticeWriteAction(Model model, NoticeVO noticeVO) {
		
		noticeBoardInsert.noticeBoardInsert(noticeVO);
		model.addAttribute("main","dsqMain");
		return "template";
	}
	
	//수정폼
    @RequestMapping("/noticeUpdateForm.no")
    public String noticeUpdateView(@RequestParam("noticeNo") String noticeNo, Model model) {
    	
    	System.out.println("수정폼 noticeNo: "+ noticeNo);
    	NoticeVO noticeVO = noticeBoardUpdateForm.noticeBoardUpdateForm(Integer.parseInt(noticeNo));
    	
    	
    	model.addAttribute("noticeVO",noticeVO);
    	model.addAttribute("main","notice/TestNoticeUpdateForm");
    	return "template";
    }
    
	//글쑤정 액션
	@RequestMapping("/noticeUpdate.no")
    public String noticeUpdateAction(@RequestParam("notice_no") String notice_no, Model model,NoticeVO noticeVO) {
    	
		System.out.println("noticeNo: "+ Integer.parseInt(notice_no));
		System.out.println("noticeVO.toString: "+ noticeVO.toString());
		noticeBoardUpdate.noticeBoardUpdate(noticeVO);
    	
		//model.addAttribute("noticeNo", noticeNo);
    	model.addAttribute("main","dsqMain");
    	return "template";
    }
	
	//삭제
	@RequestMapping("/noticeDelete.no")
	public String noticeDeleteAction(@RequestParam("noticeNo") String noticeNo, Model model) {
		
		noticeBoardDelete.noticeBoardDelete(Integer.parseInt(noticeNo));
		
		model.addAttribute("main","dsqMain");
		return "template";
	}
	

	//수정액션
	/*
    @RequestMapping("/noticeUpdate.no")
    public String noticeUpdateAction(@RequestParam("noticeNo") String noticeNo, Model model,NoticeVO noticeVO) {
    	System.out.println("noticeNo: "+ noticeNo);
    	noticeBoardUpdate.noticeBoardUpdate(Integer.parseInt(noticeNo));
    	
    	model.addAttribute("noticeNo",noticeNo);
    	model.addAttribute("main","notice/TestNoticeUpdateForm");
    	return "template";
    }*/
	

}
