package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipBoardPickCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipBoardPickCountImpl implements TipBoardPickCountService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int tipBoardPickCount() {
        return boardDAO.tipBoardPickCount();
    }
}
