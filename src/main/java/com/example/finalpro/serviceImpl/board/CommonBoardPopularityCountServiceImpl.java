package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardPopularityCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardPopularityCountServiceImpl implements CommonBoardPopularityCountService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int qBoardPopularityCount(int subCa) { return boardDAO.qBoardPopularityCount(subCa); }}
