package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipReplyUpListService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TipReplyUpListImpl implements TipReplyUpListService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> tipReplyUpList(int new_no) {
        return boardDAO.tipReplyUpList(new_no);
    }
}
