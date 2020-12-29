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
	public String qBoardUpCheck(int qboardNum, int subCa, HttpServletRequest request, HttpSession session) {


		if (!session.getAttribute("userNo").equals(null)) {	//세션에 담긴 userNo가 없지 않을때

			int mem_no = (Integer) session.getAttribute("userNo"); // mem_no, q_no String -> int

			/*
			System.out.println("mem_no: " + mem_no);
			System.out.println("qbuadrNum :" + qboardNum);

			System.out.println("DAO: "+boardDAO.qBoardUpCheck(mem_no, qboardNum));*/

			if (boardDAO.qBoardUpCheck(mem_no, qboardNum) == 0) {	//up 테이블에 추천누른 정보가 없을때 ( 추천해도될때)
				System.out.println("if qboardNum: "+qboardNum);

				//return "/qboardUpAction.bo?qboardNum=" + qboardNum + "&subCa=" + subCa;
				return "0";
			}
			return "1";
		}
		return "/qboardContent.bo?qboardNum=" + qboardNum + "&subCa=" + subCa;
	}
}
