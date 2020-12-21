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
//        System.out.println("에디터 인서트 impl "+qboardVO.toString());
        System.out.println(qboardVO.getMem_no());
        System.out.println(qboardVO.getNew_no());
        System.out.println(qboardVO.getNew_reply_edit_content());
        boardDAO.editQboardReplyInsert(qboardVO);
    }
}
