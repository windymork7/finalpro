package com.example.finalpro.serviceImpl.business;

import com.example.finalpro.dao.BusinessDAO;
import com.example.finalpro.service.business.BusinessMemberLoginSevice;
import com.example.finalpro.vo.BusinessMemberVO;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class BusinessMemberLoginService implements BusinessMemberLoginSevice {

    @Autowired
    BusinessDAO businessDAO;

    @Override
    public String businessLoginProcess(HttpServletRequest request, HttpSession session) {

        String userpw = businessDAO.businessLoginProcess(request.getParameter("biz_email"));

        if (userpw.equals(request.getParameter("biz_pw"))){
            session = request.getSession();
            BusinessMemberVO businessMemberVO = businessDAO.businessMemberSelect(request.getParameter("biz_email"));
            session.setAttribute("businessNo", businessMemberVO.getBiz_no());
            session.setAttribute("businessNick", businessMemberVO.getBiz_trademark());
            return "/";
        }

        return "section";
    }
}
