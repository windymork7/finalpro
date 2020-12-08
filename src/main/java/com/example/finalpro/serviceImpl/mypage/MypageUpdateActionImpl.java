package com.example.finalpro.serviceImpl.mypage;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.mypage.MypageUpdateActionService;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class MypageUpdateActionImpl implements MypageUpdateActionService {

    @Autowired
    MemberDAO memberDAO;

    @Override
    public void mypageUpdateAction(HttpSession session, CommonMemberVO commonMemberVO) {
        int mem_no = (Integer)session.getAttribute("userNo");
        System.out.println("회원수정폼정보값 toString:"+commonMemberVO.toString());
        System.out.println("회원수정액션 mem_no:"+mem_no);
        commonMemberVO.setMem_no(mem_no);
        memberDAO.commonMemberUpdate(commonMemberVO);
    }
}
