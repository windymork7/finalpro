package com.example.finalpro.dao;

import com.example.finalpro.vo.CommonMemberVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {

    // 일반회원가입
    public void commonMemberInsert(CommonMemberVO commonMemberVO);
    // 회원로그인
    public String commonMemberLogin(String commonMemberEmail);
    // 회원정보 조회
    public CommonMemberVO commonMemberSelect(String commonMemberEmail);

}