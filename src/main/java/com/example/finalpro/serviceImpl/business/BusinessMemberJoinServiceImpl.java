package com.example.finalpro.serviceImpl.business;

import com.example.finalpro.dao.BusinessDAO;
import com.example.finalpro.service.business.BusinessMemberJoinService;
import com.example.finalpro.vo.BusinessMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BusinessMemberJoinServiceImpl implements BusinessMemberJoinService {

    @Autowired
    BusinessDAO businessDAO;

    @Override
    public void businessJoinProcess(BusinessMemberVO businessMemberVO) {

        businessDAO.businessJoinProcess(businessMemberVO);

    }
}
