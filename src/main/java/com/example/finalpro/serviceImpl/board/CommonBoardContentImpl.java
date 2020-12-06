package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardContent;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonBoardContentImpl implements CommonBoardContent {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public QboardVO qBoardContent(int q_no, int subCa) {

        QboardVO qboardVO;

        if (boardDAO.qBoardReplyCheck(q_no, subCa) == 0){
            qboardVO = boardDAO.qBoardContent(q_no, subCa);
            qboardVO.setQ_date(qboardVO.getQ_date().substring(0,11));
            System.out.println("댓글 없는거");
            return qboardVO;
        } else {
            if (boardDAO.qBoardReplyPickCheck(q_no) != null){
                System.out.println("머야 : " + boardDAO.qBoardReplyPickCheck(q_no));
                qboardVO = boardDAO.qBoardContent(q_no, subCa);
                qboardVO.setReply_pick(1);
                qboardVO.setQ_date(qboardVO.getQ_date().substring(0,11));
                System.out.println("댓글 있는거");
                return qboardVO;
            } else{
                qboardVO = boardDAO.qBoardContent(q_no, subCa);
                qboardVO.setReply_pick(0);
                qboardVO.setQ_date(qboardVO.getQ_date().substring(0,11));
                System.out.println("댓글 있는거2");
            }
        }

        return qboardVO;

    }
}
