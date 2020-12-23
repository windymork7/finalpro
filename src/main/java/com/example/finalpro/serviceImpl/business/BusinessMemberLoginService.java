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

    //형이하신거
    @Override
    public String businessLoginProcess(HttpServletRequest request, HttpSession session) {

        System.out.println("여기?");
        boolean check = true;
        if (check) {
            System.out.println("체크는 트루");
            if (null == (businessDAO.businessLoginProcess(request.getParameter("biz_email")))) {
                check = false;
                System.out.println("체크는 펄스");
                return "fail";
            }

        }
        System.out.println(check);

        if (check) {
            System.out.println("여기 안오지?");
            String userpw = businessDAO.businessLoginProcess(request.getParameter("biz_email"));
            String state = businessDAO.businessState(request.getParameter("biz_email"));
            System.out.println("biz_email: "+request.getParameter("biz_email"));
            System.out.println("state " + state);

            if (userpw.equals(request.getParameter("biz_pw"))) {
                if (!state.equals("0")) {
                    session = request.getSession();
                    BusinessMemberVO businessMemberVO = businessDAO.businessMemberSelect(request.getParameter("biz_email"));
                    session.setAttribute("businessNo", businessMemberVO.getBiz_no());
                    session.setAttribute("businessNick", businessMemberVO.getBiz_trademark());
                    return "success";
                }
                return "state_fail";
            }
        }
        return "fail";
    }
}

// 내가 작업 하던거
	/*
        String userpw = businessDAO.businessLoginProcess(request.getParameter("biz_email"));
       // String state = businessDAO.businessState("biz_email");	//사업자 승인상태  0이면 로그인 불가 
        if (userpw.equals(request.getParameter("biz_pw"))){
        //	if(state.equals("0")) {
	            session = request.getSession();
	            BusinessMemberVO businessMemberVO = businessDAO.businessMemberSelect(request.getParameter("biz_email"));
	            session.setAttribute("businessNo", businessMemberVO.getBiz_no());
	            session.setAttribute("businessNick", businessMemberVO.getBiz_trademark());
	            return "success";
        //	}
        //	return "state_fail";
        }

        return "fail";
    }
}
*/