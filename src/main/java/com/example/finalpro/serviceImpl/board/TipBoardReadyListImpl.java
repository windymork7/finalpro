package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipBoardReadyListService;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TipBoardReadyListImpl implements TipBoardReadyListService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> tipBoardReadyList(PagingVO pagingVO) {
        List<QboardVO> list = boardDAO.tipBoardReadyList(pagingVO);
        for (int i = 0; i < list.size(); i++) {

            list.get(i).setNew_date(list.get(i).getNew_date().substring(0,11));
        }
        return list;
    }
}
