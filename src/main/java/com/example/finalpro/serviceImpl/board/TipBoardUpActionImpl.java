package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.board.TipBoardUpActionService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

@Service
public class TipBoardUpActionImpl implements TipBoardUpActionService {

    @Autowired
    BoardDAO boardDAO;
    @Autowired
    MemberDAO memberDAO;

    @Override
    public String tipBoardUpAction(HttpServletRequest request) {
        System.out.println("업액션");
        int mem_no = Integer.parseInt(request.getParameter("mem_no"));
        int new_no = Integer.parseInt(request.getParameter("new_no"));

        QboardVO vo = boardDAO.tipBoardContent(new_no);

        //만약 게시글에 처음추천하는 유저라면
        if(boardDAO.tipBoardUpCheck(mem_no,new_no) == 0){
            boardDAO.tipBoardUpInsert(mem_no,new_no);
            boardDAO.tipBoardUpCntUp(new_no);
            boardDAO.tipBoardUpExpUpdate(vo.getMem_no());
            return "T";
        }
        return "F";
    }
}
