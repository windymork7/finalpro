package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.board.TipReplyRptCheckService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

@Service
public class TipReplyRptCheckImpl implements TipReplyRptCheckService {
    @Autowired
    BoardDAO boardDAO;
    @Autowired
    MemberDAO memberDAO;
    @Override
    public int tipReplyRptCheck(HttpServletRequest request) {

        int mem_no = Integer.parseInt(request.getParameter("mem_no"));
        int new_reply_no = Integer.parseInt(request.getParameter("new_reply_no"));
        int radio = Integer.parseInt(request.getParameter("customRadio"));

        QboardVO vo = boardDAO.tipReplyContent(new_reply_no);
        System.out.println("신고햇나 안햇나:"+ boardDAO.tipReplyRptCheck(mem_no,new_reply_no));

        //만약 댓글 최초 신고라면
        if(boardDAO.tipReplyRptCheck(mem_no,new_reply_no) == 0){
            boardDAO.tipReplyRptInsert(mem_no,new_reply_no,radio);  //new_reply_down insert
            boardDAO.tipReplyRptCntUpdate(mem_no);
            boardDAO.tipReplyRptExpUpdate(mem_no,-2);   //신고 누른유저 -2
            boardDAO.tipReplyRptExpUpdate(vo.getMem_no(),-1);   //신고 당한유저 -1
            return 2;
        }

        return 3;
    }
}
