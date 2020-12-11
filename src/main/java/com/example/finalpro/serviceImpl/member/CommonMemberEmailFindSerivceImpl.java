package com.example.finalpro.serviceImpl.member;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.member.CommonMemberEmailFindSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonMemberEmailFindSerivceImpl implements CommonMemberEmailFindSerivce {
    @Autowired
    MemberDAO memberDAO;

    @Override
    public String emailFind(String tel) {

        String email = memberDAO.emailFind(tel);

        return email;
    }
}
