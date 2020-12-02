package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardContent;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardContentImpl implements CommonBoardContent {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public QboardVO qBoardContent(int q_no) {

        QboardVO qboardVO = boardDAO.qBoardContent(q_no);

        qboardVO.setQ_date(qboardVO.getQ_date().substring(0,11));

        return qboardVO;
    }
}
