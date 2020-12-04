package com.example.finalpro.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.finalpro.service.reply.QReplyListService;
import com.example.finalpro.vo.QReplyVO;

//답글컨트롤러 ( dsq 게시판 )
@Controller
public class DsqReplyController {
	QReplyVO qReplyVO;
	@Autowired
	QReplyListService qReplyListService;
	
	//답글 리스트 ( default값은 게시판이랑 합치면서 제거 )
	@RequestMapping("/qReplyList.re")
	public String qReplyList(@RequestParam(defaultValue = "3") int q_no, Model model) {
		System.out.println("답글리스트컨트롤러 q_no: "+q_no);
		
		List<QReplyVO> list = qReplyListService.qReplyList(q_no);
		//System.out.println("답글리스트 toString: "+qReplyVO.toString());
		model.addAttribute("list",list);
		model.addAttribute("main","qreply/TestQReplyList");
		return "template";
	}
}
