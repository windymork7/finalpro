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
    // 회원 명성 조회
    public int commonMemberExp(int mem_no);
    // 회원 이메일 유효성 검사
    public int emailVali(String mem_email);
    // 회원 닉네임 유효성 검사
    public int nickVali(String mem_nick);
    // 회원 이메일 찾기
    public String emailFind(String tel);
    // 회원 비밀번호 찾기 및 수정
    public void passFind(CommonMemberVO commonMemberVO);
    // 회원 계정 확인
    public int accountTelFind(String tel);
    // 회원 비밀번호 계정 확인
    public int accoutPwFind(String mem_email, String mem_tel);

    //제재당한 게시글 신고 했던 유저들 exp update
    public void memRptExpReturn(int q_no);
    

}
