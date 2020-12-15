package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipBoardContentService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipBoardContentImpl implements TipBoardContentService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public QboardVO tipboardContent(int new_no) {
        return boardDAO.tipBoardContent(new_no);
    }
}
