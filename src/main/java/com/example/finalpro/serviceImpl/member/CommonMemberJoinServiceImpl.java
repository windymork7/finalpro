package com.example.finalpro.serviceImpl.member;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.member.CommonMemberJoinService;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonMemberJoinServiceImpl implements CommonMemberJoinService {

    @Autowired
    MemberDAO memberDAO;

    @Override
    public void commonMemberInsert(CommonMemberVO commonMemberVO) {
        memberDAO.commonMemberInsert(commonMemberVO);

    }
}
