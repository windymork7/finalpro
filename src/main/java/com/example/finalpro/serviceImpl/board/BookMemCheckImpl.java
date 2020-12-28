package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.BookMemCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookMemCheckImpl implements BookMemCheckService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public int bookMemCheck(int q_no , int mem_no) {
        return boardDAO.bookMemCheck(q_no, mem_no);
    }
}
