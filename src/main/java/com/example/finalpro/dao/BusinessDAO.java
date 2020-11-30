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
    

}
