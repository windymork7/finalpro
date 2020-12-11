package com.example.finalpro.serviceImpl.member;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.member.CommonMemberPwFindService;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonMemberPwFindServiceImpl implements CommonMemberPwFindService {
    @Autowired
    MemberDAO memberDAO;

    @Override
    public void commonMemberPwFind(CommonMemberVO commonMemberVO) {

        memberDAO.passFind(commonMemberVO);
    }
}
