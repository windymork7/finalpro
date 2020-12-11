package com.example.finalpro.service.mypage;

import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.ReplyBoardVO;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MypageReplyListService {
    public List<ReplyBoardVO> replyList(HttpSession session, PagingVO pagingVO);
}
