package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.EditNewReplyInsertService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EditNewReplyInsertImpl implements EditNewReplyInsertService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public void editNewReplyInsert(QboardVO qboardVO) {
        boardDAO.editNewReplyInsert(qboardVO);
    }
}
