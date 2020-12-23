package com.example.finalpro.serviceImpl.admin;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminBizStandByCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminBizStandByCountImpl implements AdminBizStandByCountService {
    @Autowired
    AdminDAO adminDAO;

    @Override
    public int bizStandByCount() {
        return adminDAO.bizStandByCount();
    }
}
