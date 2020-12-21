package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipReplyUpActionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipReplyUpActionImpl implements TipReplyUpActionService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public void tipReplyUpActionService(int mem_no, int new_reply_no) {
        boardDAO.tipReplyUpAction(mem_no,new_reply_no);
        boardDAO.tipReplyUpUpdate(new_reply_no);
    }
}
