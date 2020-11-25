package com.example.finalpro.service;

import com.example.finalpro.vo.EnterpriseMemberVo;

import java.util.List;


public interface LoginService {
    List<EnterpriseMemberVo> selectListEnterpriseMember(EnterpriseMemberVo enterpriseMemberVo);
}
