package com.example.finalpro.serviceImpl.mypage;

import com.example.finalpro.dao.MypageDAO;
import com.example.finalpro.service.mypage.MyquestionCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyQuestionCountImpl implements MyquestionCountService {

    @Autowired
    MypageDAO mypageDAO;

    @Override
    public int myquestionCount(int mem_no) {
        return mypageDAO.myquestionCount(mem_no);
    }
}
