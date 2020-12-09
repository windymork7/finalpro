package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardReadyCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardReadyCountServiceImpl implements CommonBoardReadyCountService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int qBoardReadyCount(int subCa) { return boardDAO.qBoardReadyCount(subCa); }
}
