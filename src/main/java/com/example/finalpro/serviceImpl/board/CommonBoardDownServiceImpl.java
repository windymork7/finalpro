package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.board.CommonBoardDownService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class CommonBoardDownServiceImpl implements CommonBoardDownService {

    @Autowired
    BoardDAO boardDAO;
    @Autowired
    MemberDAO memberDAO;

    @Override
    public void qBoardDown(HttpServletRequest request) {

        HttpSession session = request.getSession();
        int mem_no = (Integer)session.getAttribute("userNo");
        int q_no = Integer.parseInt(request.getParameter("qboardNum"));
        int radio = Integer.parseInt(request.getParameter("customRadio"));



        System.out.println(boardDAO.qBoardDownCheck(mem_no, q_no));

        if (boardDAO.qBoardDownCheck(mem_no, q_no) == 0){
            boardDAO.qBoardDownUpdate(q_no);
            boardDAO.qBoardDownInsert(q_no, mem_no, radio);
            QboardVO qboardVO = boardDAO.qBoardContent(q_no, Integer.parseInt(request.getParameter("subCa")));
            memberDAO.commonExpUpate(qboardVO.getMem_no(), -5);
            memberDAO.commonExpUpate(mem_no, -2);
            memberDAO.commonMemberRpt(qboardVO.getMem_no());
        }


//        boardDAO.qBoardDownUpdate(q_no);
//        boardDAO.qBoardDownInsert(q_no,mem_no,rpt_no);
    }
}
