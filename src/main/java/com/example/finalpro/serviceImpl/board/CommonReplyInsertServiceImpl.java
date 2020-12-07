package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.board.CommonReplyInsertService;
import com.example.finalpro.vo.ReplyBoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonReplyInsertServiceImpl implements CommonReplyInsertService {
    @Autowired
    BoardDAO boardDAO;
    @Autowired
    MemberDAO memberDAO;

    @Override
    public void replyInsertProcess(ReplyBoardVO replyBoardVO) {

        boardDAO.replyInsertProcess(replyBoardVO);
        memberDAO.commonExpUpate(replyBoardVO.getMem_no(), 3);

    }
}
