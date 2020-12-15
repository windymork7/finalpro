package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipBoardCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipBoardCountImpl implements TipBoardCountService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int tipboardCount() {
        return boardDAO.tipBoardCount();
    }
}
