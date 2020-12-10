package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardPopularityListService;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonBoardPopularityListServiceImpl implements CommonBoardPopularityListService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> qBoardPopularityList(int subCa, PagingVO pagingVO) {

        pagingVO.setSubCa(subCa);

        List<QboardVO> popularityList = boardDAO.qBoardPopularityList(pagingVO);

        for (int i = 0; i < popularityList.size(); i++) {

            popularityList.get(i).setQ_date(popularityList.get(i).getQ_date().substring(0,11));
        }

        return popularityList;
    }
}
