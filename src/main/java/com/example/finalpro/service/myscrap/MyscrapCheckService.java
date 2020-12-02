package com.example.finalpro.service.myscrap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface MyscrapCheckService {
    public String myscrapCheck(int scrap_no, HttpServletRequest request, HttpSession session);
}
