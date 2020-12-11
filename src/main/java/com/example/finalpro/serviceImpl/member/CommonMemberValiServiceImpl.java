package com.example.finalpro.serviceImpl.member;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.member.CommonMemberValiService;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonMemberValiServiceImpl implements CommonMemberValiService {
    @Autowired
    MemberDAO memberDAO;

    @Override
    public int memberVali(String mem_email, String mem_nick, String mem_tel, int state) {

        if (state == 1){
            int emailCheck = memberDAO.emailVali(mem_email);
            return emailCheck;
        } else if (state == 2){
            int nickCheck = memberDAO.nickVali(mem_nick);
            return nickCheck;
        } else if (state == 3){
            int accountCheck = memberDAO.accountTelFind(mem_tel);
            return accountCheck;
        } else if (state == 4){
            int accountCheck = memberDAO.accoutPwFind(mem_email, mem_tel);
            return accountCheck;
        }

        return 0;
    }
}
