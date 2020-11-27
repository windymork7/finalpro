package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.service.board.CommonBoardInsertService;
import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardInsertServiceImpl implements CommonBoardInsertService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public void qBoardInsert(QboardVO qboardVO) {

        boardDAO.qBoardInsert(qboardVO);
    }
}
