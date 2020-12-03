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
    MemberDAO memberDAO;

    @Override
    public String commonMemberLogin(HttpServletRequest request, HttpSession session) {

        String userpw = memberDAO.commonMemberLogin(request.getParameter("mem_email"));

        if (userpw.equals(request.getParameter("mem_pw"))){
            session = request.getSession();
            CommonMemberVO commonMemberVO = new CommonMemberVO();
            commonMemberVO = memberDAO.commonMemberSelect(request.getParameter("mem_email"));
            session.setAttribute("userNo", commonMemberVO.getMem_no());
            session.setAttribute("userNick", commonMemberVO.getMem_nick());
            session.setAttribute("userGrade", commonMemberVO.getGrade_no());
//            return "qBoardInsertForm.bo";
            return "/";
        }

        return "section";
    }
}
