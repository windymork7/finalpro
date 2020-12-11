package com.example.finalpro.service.member;

import com.example.finalpro.vo.CommonMemberVO;

public interface CommonMemberValiService {
    public int memberVali(String mem_email, String mem_nick, String mem_tel, int state);
}
