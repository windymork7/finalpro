package com.example.finalpro.service.myscrap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface MyscrapCheckService {
    public String myscrapCheck(int q_no, HttpServletRequest request, HttpSession session);
}
