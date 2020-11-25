package com.example.finalpro.member.serviceImpl;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.member.service.CommonMemberLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class CommonMemberLoginServiceImpl implements CommonMemberLoginService {

    @Autowired
    MemberDAO memberDAO;

    @Override
    public String commonMemberLogin(HttpServletRequest request, HttpSession session) {

        String userpw = memberDAO.commonMemberLogin(request.getParameter("MEM_EMAIL"));
        if (userpw.equals(request.getParameter("MEM_PW"))){
            return "dsqMain";
        }

        return "section";
    }
}
