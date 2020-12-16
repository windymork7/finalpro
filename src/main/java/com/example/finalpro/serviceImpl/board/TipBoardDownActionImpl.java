package com.example.finalpro.serviceImpl.board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipBoardDownActionService;

@Service
public class TipBoardDownActionImpl implements TipBoardDownActionService{
	
	@Autowired
	BoardDAO boardDAO;

	@Override
	public void tipBoardDownAction(HttpServletRequest request) {
		int mem_no = Integer.parseInt(request.getParameter("mem_no"));
		int new_no = Integer.parseInt(request.getParameter("new_no"));
		
		int radio = Integer.parseInt(request.getParameter("customRadio"));
		
		System.out.println("잉:"+boardDAO.tipBoardRptCheck(mem_no, new_no));
		//만약 게시글에 대한 최초신고를 하는거라면 
		if(boardDAO.tipBoardRptCheck(mem_no, new_no) == 0) {
			
		}
	}
	
	

}
