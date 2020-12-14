package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardSearchService;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonBoardSearchServiceImpl implements CommonBoardSearchService {
    @Autowired
    BoardDAO boardDAO;


    @Override
    public List<QboardVO> qboardSearchList(String seachTerm, PagingVO searchPaging) {

        searchPaging.setSearchTerm(seachTerm);
        System.out.println(searchPaging);
        List<QboardVO> searchList = boardDAO.qBoardSearchList(searchPaging);

        for (int i = 0; i < searchList.size(); i++) {

            searchList.get(i).setQ_date(searchList.get(i).getQ_date().substring(0,11));
        }

        return searchList;
    }
}
