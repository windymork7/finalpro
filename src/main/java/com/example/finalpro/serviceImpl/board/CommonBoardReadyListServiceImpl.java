package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardReadyListService;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonBoardReadyListServiceImpl implements CommonBoardReadyListService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> qBoardReadyList(int subCa, PagingVO pagingVO) {


        pagingVO.setSubCa(subCa);

        List<QboardVO> readyList = boardDAO.qBoardReadyList(pagingVO);
        System.out.println("readyList : " + readyList);

        for (int i = 0; i < readyList.size(); i++) {

            readyList.get(i).setQ_date(readyList.get(i).getQ_date().substring(0,11));
        }

        return readyList;
    }
}
