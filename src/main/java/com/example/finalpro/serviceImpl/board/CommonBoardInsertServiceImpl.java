package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.board.CommonBoardInsertService;
import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.vo.NoticeVO;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Service
public class CommonBoardInsertServiceImpl implements CommonBoardInsertService {

    @Autowired
    BoardDAO boardDAO;

    @Autowired
    MemberDAO memberDAO;

    @Override
    public void qBoardInsert(QboardVO qboardVO) {

        boardDAO.qBoardInsert(qboardVO);
        memberDAO.commonExpUpate(qboardVO.getMem_no(),5);

    }
}