package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardExpCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardExpCountServiceImpl implements CommonBoardExpCountService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int qBoardExpCount(int subCa) { return boardDAO.qBoardExpCount(subCa); }}
