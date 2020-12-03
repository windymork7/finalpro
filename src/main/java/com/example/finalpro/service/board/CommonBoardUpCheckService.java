package com.example.finalpro.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface CommonBoardUpCheckService {
	public String qBoardUpCheck(int qboardNum, int subCa,HttpServletRequest request, HttpSession session);
}
