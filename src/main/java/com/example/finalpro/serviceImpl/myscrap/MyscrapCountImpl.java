package com.example.finalpro.serviceImpl.myscrap;

import com.example.finalpro.dao.MyscrapDAO;
import com.example.finalpro.service.myscrap.MyscrapCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyscrapCountImpl implements MyscrapCountService {

    @Autowired
    MyscrapDAO myscrapDAO;

    @Override
    public int MyscrapCount(int mem_no) {
        return myscrapDAO.myscrapCount(mem_no);
    }
}
