package com.example.finalpro.serviceImpl.contest;

import com.example.finalpro.dao.ContestDAO;
import com.example.finalpro.service.contest.ContestCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContestCountServiceImpl implements ContestCountService {
    @Autowired
    ContestDAO contestDAO;

    @Override
    public int contestCount() {

        return contestDAO.contestCount();
    }
}
