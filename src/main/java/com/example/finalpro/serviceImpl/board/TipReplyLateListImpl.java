package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipReplyLateListService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TipReplyLateListImpl implements TipReplyLateListService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> tipReplyLateList(int new_no) {
        return boardDAO.tipReplyLateList(new_no);
    }
}
