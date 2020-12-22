package com.example.finalpro.serviceImpl.member;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.member.CommonMemberLoginService;
import com.example.finalpro.vo.CommonMemberVO;
import oracle.sql.DATE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.ParseException;

@Service
public class CommonMemberLoginServiceImpl implements CommonMemberLoginService {

    @Autowired
    MemberDAO memberDAO;

    @Override
    public String commonMemberLogin(HttpServletRequest request, HttpSession session) {

//        if (memberDAO.commonMemberLogin(request.getParameter("mem_email")).equals(null)) {
//            return "/loginForm.me";
//        }
//
        System.out.println(request.getParameter("mem_email"));
        System.out.println(request.getParameter("mem_pw"));

        if (memberDAO.commonMemberLogin(request.getParameter("mem_email")) == null){
            return "fail";
        }

        if(memberDAO.commonMemberLogin(request.getParameter("mem_email")).isEmpty()){
            return "fail";
        } else{
            String userpw = memberDAO.commonMemberLogin(request.getParameter("mem_email"));

            if (userpw.equals(request.getParameter("mem_pw"))) {
                session = request.getSession();
                CommonMemberVO commonMemberVO = new CommonMemberVO();
                commonMemberVO = memberDAO.commonMemberSelect(request.getParameter("mem_email"));
                System.out.println("멤버로그인블랙데이트: " + commonMemberVO.getMem_date() + commonMemberVO.getMem_black_date() + commonMemberVO.getSysdate());

                SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
                String tempBlackDate = commonMemberVO.getMem_black_date().substring(0, 10);
                String tempSysdate = commonMemberVO.getSysdate().substring(0, 10);
                try {
                    Date blackDate = format.parse(tempBlackDate);
                    Date sysdate = format.parse(tempSysdate);
                    System.out.println(blackDate);
                    System.out.println(sysdate);
                    System.out.println("mem_survey "+ commonMemberVO.getMem_survey());
                    if(sysdate.equals(blackDate) || sysdate.after(blackDate)) {
                        session.setAttribute("userNo", commonMemberVO.getMem_no());
                        session.setAttribute("userNick", commonMemberVO.getMem_nick());
                        session.setAttribute("userGrade", commonMemberVO.getGrade_no());
                        session.setAttribute("mem_survey",commonMemberVO.getMem_survey());
                        System.out.println("날짜트루");
                        return "success";
                    }
                    return "black";
                } catch (Exception e) {
                    System.out.println(e);
                }
                return "fail";
            }
        }

        return "fail";
    }
}