package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.EditQboardReplyInsertService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EditQboardReplyInsertServiceImpl implements EditQboardReplyInsertService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public void editBoardInsert(QboardVO qboardVO) {
        boardDAO.editQboardReplyInsert(qboardVO);
    }
}
