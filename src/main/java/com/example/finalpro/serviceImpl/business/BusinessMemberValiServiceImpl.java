package com.example.finalpro.serviceImpl.business;

import com.example.finalpro.dao.BusinessDAO;
import com.example.finalpro.service.business.BusinessMemberValiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BusinessMemberValiServiceImpl implements BusinessMemberValiService {
    @Autowired
    BusinessDAO businessDAO;

    @Override
    public int businessMemberVali(String biz_email, String biz_number, String biz_tel, int state) {

        if (state == 1){
            int emailCheck = businessDAO.businessEmailVali(biz_email);
            return emailCheck;
        } else if (state == 2){
            int bizNumCheck = businessDAO.businessNumVali(biz_number);
            return bizNumCheck;
        } else if (state == 3){
            int bizTelCheck = businessDAO.businessTelVali(biz_tel);
            return bizTelCheck;
        }

        return 0;
    }
}
