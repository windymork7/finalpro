package com.example.finalpro.service.mypage;

import com.example.finalpro.vo.CommonMemberVO;

import javax.servlet.http.HttpSession;

public interface MypageUpdateActionService {
    public void mypageUpdateAction(HttpSession session,CommonMemberVO commonMemberVO);
}
