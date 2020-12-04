package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonReplyPickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class CommonReplyPickServiceImpl implements CommonReplyPickService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public void replyPick(HttpServletRequest request) {

        HttpSession session = request.getSession();

        int seesionNum = (int)session.getAttribute("userNo");
        int reply_no = Integer.parseInt(request.getParameter("replyNum"));
        int mem_no = Integer.parseInt(request.getParameter("qMemNo"));
        System.out.println("훗5");


        if (seesionNum == mem_no){
            boardDAO.replyPick(reply_no);
            boardDAO.replyAnotherPick();
            System.out.println("훗3");
        }
    }
}
