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
    // 회원정보 수정
    public CommonMemberVO commonMemberUpdate(CommonMemberVO commonMemberVO);
    // 회원 명성 업데이트
    public void commonExpUpate(int mem_no, int exp);
    // 회원 신고시
    public void commonMemberRpt(int mem_no);


}
