package com.example.finalpro.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface CommonReplyUpCheckService {
    public int replyUpCheck(HttpServletRequest request, HttpSession session);
}
