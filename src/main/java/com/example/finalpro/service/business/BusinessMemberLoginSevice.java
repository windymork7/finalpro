package com.example.finalpro.service.business;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface BusinessMemberLoginSevice {
    public String businessLoginProcess(HttpServletRequest request, HttpSession session);
}
