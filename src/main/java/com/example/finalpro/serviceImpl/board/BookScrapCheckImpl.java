package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.BookScrapCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookScrapCheckImpl implements BookScrapCheckService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public int bookScrapCheck(int q_no,int mem_no) {
        return boardDAO.bookScrapCheck(q_no,mem_no);
    }
}
