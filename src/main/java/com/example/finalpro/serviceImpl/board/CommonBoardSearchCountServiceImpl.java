package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardSearchCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardSearchCountServiceImpl implements CommonBoardSearchCountService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int qBoardSearchCount(String searchTerm) { return boardDAO.qBoardSearchCount(searchTerm); }
}
