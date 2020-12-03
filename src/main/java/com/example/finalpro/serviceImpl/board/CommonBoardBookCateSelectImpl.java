package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardBookCateSelectService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonBoardBookCateSelectImpl implements CommonBoardBookCateSelectService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> bookCategory(int subCa) {

        List<QboardVO> list = boardDAO.bookCategory(subCa);

        return list;
    }
}
