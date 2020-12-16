package com.example.finalpro.serviceImpl.member;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.member.CommonMemberPwConfirmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonMemberPwConfirmServiceImpl implements CommonMemberPwConfirmService {
    @Autowired
    MemberDAO memberDAO;

    @Override
    public String passConfirm(String mem_email, String mem_pw) {

        if (memberDAO.commonMemberLogin(mem_email) == null){
            return "fail";
        }

        String userpw = memberDAO.commonMemberLogin(mem_email);

        if (userpw.equals(mem_pw)){
            return "success";
        }
        return "fail";
    }
}
