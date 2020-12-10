package com.example.finalpro.serviceImpl.contest;

import com.example.finalpro.dao.ContestDAO;
import com.example.finalpro.service.contest.ContestListService;
import com.example.finalpro.vo.ContestVO;
import com.example.finalpro.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContestListServiceImpl implements ContestListService {
    @Autowired
    ContestDAO contestDAO;

    @Override
    public List<ContestVO> contestList(PagingVO pagingVO) {

        List<ContestVO> list = contestDAO.contestList(pagingVO);

        return list;
    }
}
