package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardDownService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class CommonBoardDownServiceImpl implements CommonBoardDownService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public void qBoardDown(int q_no,int mem_no, int rpt_no) {
        boardDAO.qBoardDownUpdate(q_no);
        boardDAO.qBoardDownInsert(q_no,mem_no,rpt_no);

    }
}
