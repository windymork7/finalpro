package com.example.finalpro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	
	@RequestMapping("/noticeListForm.no")
	public String noticeListForm(Model model) {
		
		model.addAttribute("main","notice/TestNotice");
		return "template";
	}

}
