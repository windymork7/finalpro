package com.example.finalpro.dao;

import com.example.finalpro.vo.BusinessMemberVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BusinessDAO {
    // 사업자 회원등록
    public void businessJoinProcess(BusinessMemberVO businessMemberVO);

}
