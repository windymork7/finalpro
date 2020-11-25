package com.example.finalpro.service;

import com.example.finalpro.dao.LoginDao;
import com.example.finalpro.vo.EnterpriseMemberVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    LoginDao loginDao;

    @Override
    public List<EnterpriseMemberVo> selectListEnterpriseMember(EnterpriseMemberVo enterpriseMemberVo) {
        return loginDao.selectListEnterpriseMember(enterpriseMemberVo);
    }
}
