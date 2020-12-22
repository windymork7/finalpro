package com.example.finalpro.dao;

import com.example.finalpro.vo.BusinessMemberVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BusinessDAO {
    // 사업자 회원등록
    public void businessJoinProcess(BusinessMemberVO businessMemberVO);
    // 사업자 로그인
    public String businessLoginProcess(String businessEmail);
    // 사업자 정보 조회
    public BusinessMemberVO businessMemberSelect(String businessEmail);
    // 사업자 이메일 체크
    public int businessEmailVali(String biz_email);
    // 사업자 등록번호 체크
    public int businessNumVali(String biz_number);
    // 사업자 전화번호 체크
    public int businessTelVali(String biz_tel);
    // 사업자 승인상태
    public String businessState(String biz_email);
    

}
