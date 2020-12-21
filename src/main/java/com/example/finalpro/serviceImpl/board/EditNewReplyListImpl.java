package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.EditNewReplyListService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EditNewReplyListImpl implements EditNewReplyListService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> editNewReplyList(QboardVO qboardVO) {
        return boardDAO.editNewReplyList(qboardVO);
    }
}
