package com.example.finalpro.serviceImpl.contest;

import com.example.finalpro.dao.ContestDAO;
import com.example.finalpro.service.contest.ContestContentService;
import com.example.finalpro.vo.ContestVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContestContentServiceImpl implements ContestContentService {
    @Autowired
    ContestDAO contestDAO;

    @Override
    public ContestVO contestContent(int contest_no) {

        ContestVO contestVO = contestDAO.contestContent(contest_no);

        return contestVO;
    }
}
