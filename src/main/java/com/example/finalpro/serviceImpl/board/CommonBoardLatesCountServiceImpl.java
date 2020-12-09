package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardLatesCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardLatesCountServiceImpl implements CommonBoardLatesCountService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int qBoardLatesCount(int subCa) { return boardDAO.qBoardLatesCount(subCa); }
}
