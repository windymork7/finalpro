package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardCompleteCount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardCompleteCountImpl implements CommonBoardCompleteCount {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int qBoardCompleteCount(int subCa) { return boardDAO.qBoardCompleteCount(subCa); }
}
