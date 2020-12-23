package com.example.finalpro.serviceImpl.admin;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminBizStateUpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminBizStateUpdateImpl implements AdminBizStateUpdateService {
    @Autowired
    AdminDAO adminDAO;

    @Override
    public void bizStateUpdate(String biz_no) {
        adminDAO.bizStateUpdate(biz_no);
    }
}
