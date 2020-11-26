package com.example.finalpro.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface CommonMemberLoginService {
    public String commonMemberLogin(HttpServletRequest request, HttpSession session);
}
