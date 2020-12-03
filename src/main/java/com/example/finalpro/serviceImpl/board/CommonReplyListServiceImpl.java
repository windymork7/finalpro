package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonReplyListService;
import com.example.finalpro.vo.ReplyBoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonReplyListServiceImpl implements CommonReplyListService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<ReplyBoardVO> commonReplyList(ReplyBoardVO replyBoardVO) {

        List<ReplyBoardVO> replyVOList = boardDAO.replyList(replyBoardVO);

        return replyVOList;
    }
}
