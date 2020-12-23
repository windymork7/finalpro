package com.example.finalpro.serviceImpl.admin;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminMemberBlackActionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminMemberBlackActionImpl implements AdminMemberBlackActionService {

    @Autowired
    AdminDAO adminDAO;
    
    @Override
    public void memBlackAction(int mem_no) {
        adminDAO.memBlackAction(mem_no);
    }
}
