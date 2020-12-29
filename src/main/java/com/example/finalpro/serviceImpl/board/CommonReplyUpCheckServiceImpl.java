package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.board.CommonReplyUpCheckService;
import com.example.finalpro.vo.ReplyBoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class CommonReplyUpCheckServiceImpl implements CommonReplyUpCheckService {
    @Autowired
    BoardDAO boardDAO;
    @Autowired
    MemberDAO memberDAO;

    @Override
    public int replyUpCheck(HttpServletRequest request, HttpSession session) {

        int replyNo = Integer.parseInt(request.getParameter("replyNum"));

        if ((session.getAttribute("userNo") != null)){
            int mem_no = (Integer)session.getAttribute("userNo");

            if (boardDAO.replyUpCheck(mem_no, replyNo) != 0){
                return 1;
            } else{
                boardDAO.replyUpUpdate(replyNo);
                boardDAO.replyUpInsert(replyNo, mem_no);
                ReplyBoardVO replyBoardVO = boardDAO.replyContent(replyNo);
                memberDAO.commonExpUpate(replyBoardVO.getMem_no(), 10);
                return 0;
            }
        }

        return 1;
    }
}
