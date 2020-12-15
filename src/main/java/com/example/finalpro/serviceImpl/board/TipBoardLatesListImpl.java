package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.TipBoardLatesListService;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TipBoardLatesListImpl implements TipBoardLatesListService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> tipBoardLatesList(PagingVO pagingVO) {
        List<QboardVO> list = boardDAO.tipBoardLatesList(pagingVO);
        for (int i = 0; i < list.size(); i++) {

            list.get(i).setNew_date(list.get(i).getNew_date().substring(0,11));
        }
        return list;
    }
}
