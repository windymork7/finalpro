package com.example.finalpro.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface CommonBoardDownCheckService {
    public String qBoardDownCheck(int qboardNum, HttpServletRequest request, HttpSession session);
}
