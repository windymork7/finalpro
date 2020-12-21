package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipReplyUpCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipReplyUpCheckImpl implements TipReplyUpCheckService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public int TipReplyUpCheck(int mem_no, int new_reply_no) {
        return boardDAO.tipReplyUpCheck(mem_no,new_reply_no);
    }
}
