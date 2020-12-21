package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipReplyPickActionService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class TipReplyPickActionImpl implements TipReplyPickActionService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public void tipReplyPickAction(HttpSession session, int new_no, int new_reply_no) {
//        int mem_no = (Integer)session.getAttribute("userNo");
        System.out.println("여기까지는 ??");
        QboardVO vo = boardDAO.tipReplyContent(new_reply_no);


        System.out.println("vo.getMem_no "+vo.getMem_no());
        int mem_no = vo.getMem_no();
        boardDAO.tipReplyPickAction(new_reply_no);
        boardDAO.tipReplyPickDownAction(new_no);
        boardDAO.tipReplyPickExpUp(mem_no);
    }
}
