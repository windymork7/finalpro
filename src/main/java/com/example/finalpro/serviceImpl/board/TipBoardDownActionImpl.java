package com.example.finalpro.serviceImpl.board;

import javax.servlet.http.HttpServletRequest;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipBoardDownActionService;

@Service
public class TipBoardDownActionImpl implements TipBoardDownActionService {

    @Autowired
    BoardDAO boardDAO;
    @Autowired
    MemberDAO memberDAO;

    @Override
    public String tipBoardDownAction(HttpServletRequest request) {
        int mem_no = Integer.parseInt(request.getParameter("mem_no"));
        int new_no = Integer.parseInt(request.getParameter("new_no"));

        int radio = Integer.parseInt(request.getParameter("customRadio"));

        QboardVO vo = boardDAO.tipBoardContent(new_no);

        System.out.println("잉:" + boardDAO.tipBoardRptCheck(mem_no, new_no));
        //만약 게시글에 대한 최초신고를 하는거라면
        if (boardDAO.tipBoardRptCheck(mem_no, new_no) == 0) {
            //게시글이 처음 신고 당하는거라면 ( 조건 없어더 되는데 없애기 귀찮아서 일단 안없애놓음 )
            //if(boardDAO.tipBoardDownCheck(new_no) == 0) {
            boardDAO.tipBoardDownInsert(mem_no, new_no, radio);    //최초 게시글 행 insert
            boardDAO.tipBoardRptCntUp(new_no);                    //new테이블의 new_cnt_up컬럼 +1
            boardDAO.tipBoardRptExpUpdate(mem_no, 0);        //신고한 유저 -2 ( 나중에 +4 )
            boardDAO.tipBoardRptExpUpdate(vo.getMem_no(), -1);    //신고당한유저 -1
            memberDAO.commonMemberRpt(vo.getMem_no());              //신고 당한유저 rpt_cnt + 1;
			return "T";
            //}
        }
        return "F";
    }


}
