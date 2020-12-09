package com.example.finalpro.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.finalpro.service.faq.FaqBoardContent;
import com.example.finalpro.service.faq.FaqBoardList;
import com.example.finalpro.service.notice.NoticeBoardContent;
import com.example.finalpro.service.notice.NoticeBoardDelete;
import com.example.finalpro.service.notice.NoticeBoardInsert;
import com.example.finalpro.service.notice.NoticeBoardList;
import com.example.finalpro.service.notice.NoticeBoardUpdateAction;
import com.example.finalpro.service.notice.NoticeBoardUpdateForm;
import com.example.finalpro.vo.FaqVO;
import com.example.finalpro.vo.NoticeVO;

@Controller
public class CustomerController {

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
	
	//FAQ
	@Autowired
	FaqBoardList faqBoardList;
	@Autowired
	FaqBoardContent faqBoardContent;
	
	//가이드라인
	@RequestMapping("/guideLine.cu")
	public String guideLine(Model model) {
		model.addAttribute("main","customer/cs_guideline");
		return "template";
	}
	
	//공지사항목록
	@RequestMapping("/noticeList.cu")
	public String noticeList(Model model) {
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		list = noticeBoardList.noticeBoardList();
		
		for(int i=0;i<list.size();i++)
			System.out.println(list.get(i).toString());

		model.addAttribute("list",list);
		model.addAttribute("main","customer/cs_notice_list");
		
		return "template";
	}
	//내용
	@RequestMapping("/noticeContent.cu")
	public String noticeContent(@RequestParam("notice_no") String notice_no, Model model) {
		
		NoticeVO noticeVO = noticeBoardContent.noticeBoardContent(Integer.parseInt(notice_no));
		
		model.addAttribute("noticeVO",noticeVO);
		model.addAttribute("main","customer/cs_notice");
		return "template";
	}
	
	
	
	//FAQ 목록
	@RequestMapping("/faqList.cu")
	public String faqList(Model model) {
		List<FaqVO> list = new ArrayList<FaqVO>();
		list = faqBoardList.faqBoardList();

		for(int i=0;i<list.size();i++)
			System.out.println(list.get(i).toString());
		
		model.addAttribute("list",list);
		model.addAttribute("main","customer/cs_faq_list");
		return "template";
	}
	//FAQ 내용
	 @RequestMapping("faqContent.cu")
	 public String faqContent(@RequestParam("faq_no") String faq_no,Model model) {
	        FaqVO faqVO = faqBoardContent.faqBoardContent(Integer.parseInt(faq_no));
	        System.out.println(faqVO.toString());
	        model.addAttribute("faqVO",faqVO);
	        model.addAttribute("main","customer/cs_faq");
	        return "template";
		 
	 }
	
    /*
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
	
	*/
	
	

	
	
}
