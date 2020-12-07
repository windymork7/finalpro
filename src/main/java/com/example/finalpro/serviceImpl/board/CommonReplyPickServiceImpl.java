package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.board.CommonReplyPickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class CommonReplyPickServiceImpl implements CommonReplyPickService {
    @Autowired
    BoardDAO boardDAO;
    @Autowired
    MemberDAO memberDAO;

    @Override
    public void replyPick(HttpServletRequest request) {

        HttpSession session = request.getSession();

        int seesionNum = (int)session.getAttribute("userNo");
        System.out.println(seesionNum);
        int reply_no = Integer.parseInt(request.getParameter("replyNum"));
        int mem_no = Integer.parseInt(request.getParameter("qMemNo"));

        if (seesionNum == mem_no){
            boardDAO.replyPick(reply_no);
            memberDAO.commonExpUpate(reply_no, 15);
            boardDAO.replyAnotherPick();
        }
    }
}
