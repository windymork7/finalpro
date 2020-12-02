package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardUpServiceImpl implements CommonBoardUpService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public void qBoardUp(int mem_no,int q_no){
        //boardDAO.qBoardUpCheck(mem_no,q_no);
        boardDAO.qBoardUpUpdate(q_no);
        boardDAO.qBoardUpInsert(q_no,mem_no);
    }
}
