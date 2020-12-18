package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipReplyWriteActionService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipReplyWriteActionImpl implements TipReplyWriteActionService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public void tipReplyWriteAction(QboardVO qboardVO) {
        boardDAO.tipReplyWriteAction(qboardVO);

    }
}
