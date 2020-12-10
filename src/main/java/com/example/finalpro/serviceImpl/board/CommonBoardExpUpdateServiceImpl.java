package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardExpUpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardExpUpdateServiceImpl implements CommonBoardExpUpdateService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public void qBoardExpUpdate(int q_no, int exp) {
        boardDAO.qBoardExpUpdate(q_no, exp);
    }
}
