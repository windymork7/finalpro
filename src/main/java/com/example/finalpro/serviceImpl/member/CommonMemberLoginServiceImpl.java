package com.example.finalpro.serviceImpl.member;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.member.CommonMemberLoginService;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class CommonMemberLoginServiceImpl implements CommonMemberLoginService {

    @Autowired
    MemberDAO memberDAO;//gittest

    @Override
    public String commonMemberLogin(HttpServletRequest request, HttpSession session) {

        String userpw = memberDAO.commonMemberLogin(request.getParameter("MEM_EMAIL"));

        if (userpw.equals(request.getParameter("MEM_PW"))){
            session = request.getSession();
            CommonMemberVO commonMemberVO = new CommonMemberVO();
            commonMemberVO = memberDAO.commonMemberSelect(request.getParameter("MEM_EMAIL"));
            session.setAttribute("userNo", commonMemberVO.getMem_no());
            session.setAttribute("userNick", commonMemberVO.getMem_nick());
//            return "qBoardInsertForm.bo";
            return "/qBoardInsertForm.bo";
        }

        return "section";
    }
}
