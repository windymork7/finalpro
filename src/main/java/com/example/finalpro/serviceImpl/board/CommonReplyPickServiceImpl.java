package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.board.CommonReplyPickService;
import com.example.finalpro.vo.QboardVO;
import com.example.finalpro.vo.ReplyBoardVO;
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

        int seesionNum = (int)session.getAttribute("userNo");   // 세션에 있는 사람 번호
        int reply_no = Integer.parseInt(request.getParameter("replyNum"));  // 댓글 번호
        int mem_no = Integer.parseInt(request.getParameter("qMemNo"));  // 게시글 쓴 사람
        int q_no = Integer.parseInt(request.getParameter("qboardNum")); // 게시글 번호
        int subCa = Integer.parseInt(request.getParameter("subCa"));    // 카테고리 번호

        if (seesionNum == mem_no){
            boardDAO.replyPick(reply_no);
            boardDAO.replyAnotherPick();
            QboardVO qboardVO = boardDAO.qBoardContent(q_no, subCa);
            ReplyBoardVO replyVO = boardDAO.replyContent(reply_no);

            if (qboardVO.getQ_sos() == 1){
                System.out.println(qboardVO.toString());
                memberDAO.commonExpUpate(mem_no, -(qboardVO.getQ_exp()));
                System.out.println("머가 나오냐 : " + qboardVO.getQ_exp());
                System.out.println("replyVO : " + replyVO.getMem_no());
                memberDAO.commonExpUpate(replyVO.getMem_no(), 15 + qboardVO.getQ_exp());
                System.out.println("되라2");
            }else{
                memberDAO.commonExpUpate(replyVO.getMem_no(), 15);
                System.out.println("여기인가");
            }
        }
    }
}
