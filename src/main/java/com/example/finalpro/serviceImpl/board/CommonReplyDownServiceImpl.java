package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonReplyDownService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class CommonReplyDownServiceImpl implements CommonReplyDownService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public void replyDown(HttpServletRequest request) {

        HttpSession session = request.getSession();

        int radio = Integer.parseInt(request.getParameter("customRadio"));
        int mem_no = (Integer)session.getAttribute("userNo");
        int reply_no = Integer.parseInt(request.getParameter("reply_no"));

        if(boardDAO.replyDownCheck(reply_no, mem_no) == 0){
            boardDAO.replyDownUpdate(reply_no);
            boardDAO.replyDownInsert(reply_no, mem_no, radio);
        }


    }
}
