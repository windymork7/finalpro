package com.example.finalpro.serviceImpl.member;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.member.CommonMemberExpSelect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonMemberExpSelectImpl implements CommonMemberExpSelect {

    @Autowired
    MemberDAO memberDAO;

    @Override
    public int memberExp(int mem_no) {

        int memberExp = memberDAO.commonMemberExp(mem_no);

        return memberExp;
    }
}
