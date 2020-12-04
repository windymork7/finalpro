package com.example.finalpro.serviceImpl.admin;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminMemberRptListService;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminMemberRptListImpl implements AdminMemberRptListService {

    @Autowired
    AdminDAO adminDAO;

    @Override
    public List<CommonMemberVO> memRptList() {
        List<CommonMemberVO> list = adminDAO.memRptList();
        return list;
    }
}
