package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardExpListSerivce;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonBoardExpListSerivceImpl implements CommonBoardExpListSerivce {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> qboardExpList(int subCa, PagingVO pagingVO) {

        pagingVO.setSubCa(subCa);
        List<QboardVO> expList = boardDAO.qboardExpList(pagingVO);

        for (int i = 0; i < expList.size(); i++) {

            expList.get(i).setQ_date(expList.get(i).getQ_date().substring(0,11));
        }

        return expList;
    }
}
