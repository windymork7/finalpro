package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.EditQboardReplyListService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EditQboardReplyListServiceImpl implements EditQboardReplyListService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> editBoardReply(QboardVO qboardVO) {

        List<QboardVO> editList = boardDAO.editBoardReplyList(qboardVO);
        System.out.println("여기22");
        System.out.println(editList);

        return editList;
    }
}
