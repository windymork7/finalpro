package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonReplyLateListService;
import com.example.finalpro.vo.ReplyBoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonReplyLateListImpl implements CommonReplyLateListService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<ReplyBoardVO> commonReplyLateList(ReplyBoardVO replyBoardVO) {

        List<ReplyBoardVO> replyVOList = boardDAO.replyLateList(replyBoardVO);

        return replyVOList;
    }
}
