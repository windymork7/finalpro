package com.example.finalpro.dao;

import com.example.finalpro.vo.BusinessMemberVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BusinessDAO {

    public void businessJoinProcess(BusinessMemberVO businessMemberVO);

}
