package com.example.finalpro.serviceImpl.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardUpCheckService;

@Service
public class CommonBoardUpCheckServiceImpl implements CommonBoardUpCheckService {

	@Autowired
	BoardDAO boardDAO;

	@Override
	public String qBoardUpCheck(int qboardNum, HttpServletRequest request, HttpSession session) {

		int mem_no = (Integer) session.getAttribute("userNo"); // mem_no, q_no String -> int
		// int q_no = qboardNum;

		System.out.println("mem_no"+ mem_no);
		if (Integer.parseInt(boardDAO.qBoardUpCheck(mem_no, qboardNum)) == 0) {
			return "/qboardListForm.bo";
		}

		else if (Integer.parseInt(boardDAO.qBoardUpCheck(mem_no, qboardNum)) == mem_no) {
			return "/qboardListForm.bo";
		}
		return "qboardUpAction.bo";

		/*
		 * int userCheck = Integer.parseInt(boardDAO.qBoardUpCheck(mem_no,qboardNum));
		 * //매개변수에 세션에있는 mem_no, qboardNum을 넣어줌 System.out.println("mem_no:"+ mem_no);
		 * System.out.println("userCheck:"+ userCheck); if(userCheck == mem_no) {
		 * System.out.println("참"); return "/qboardListForm.bo"; //참이면 qboardUpAction.bo
		 * 거짓이면 qboardListForm.bo }
		 */
	}

}
