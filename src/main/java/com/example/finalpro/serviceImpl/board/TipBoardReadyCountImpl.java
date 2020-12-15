package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipBoardReadyCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipBoardReadyCountImpl implements TipBoardReadyCountService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int tipBoardReadyCount() {
        return boardDAO.tipBoardReadyCount();
    }
}
