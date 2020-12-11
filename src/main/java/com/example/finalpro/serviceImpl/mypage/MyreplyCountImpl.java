package com.example.finalpro.serviceImpl.mypage;

import com.example.finalpro.dao.MypageDAO;
import com.example.finalpro.service.mypage.MyreplyCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyreplyCountImpl implements MyreplyCountService {

    @Autowired
    MypageDAO mypageDAO;

    @Override
    public int myreplyCount(int mem_no) {
        return mypageDAO.myreplyCount(mem_no);
    }
}
