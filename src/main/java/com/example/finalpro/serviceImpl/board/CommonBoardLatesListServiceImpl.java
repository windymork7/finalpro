package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardLatesListService;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonBoardLatesListServiceImpl implements CommonBoardLatesListService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> qBoardLatesList(int subCa, PagingVO pagingVO) {

        pagingVO.setSubCa(subCa);
        List<QboardVO> latestList = boardDAO.qBoardLatesList(pagingVO);

        for (int i = 0; i < latestList.size(); i++) {

            latestList.get(i).setQ_date(latestList.get(i).getQ_date().substring(0,11));
        }


        return latestList;
    }
}
