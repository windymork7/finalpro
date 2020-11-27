package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardListService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class CommonBoardListServiceImpl implements CommonBoardListService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<QboardVO> qBoardList() {

        SimpleDateFormat format1 = new SimpleDateFormat("yyyy.mm.dd");

        List<QboardVO> list = boardDAO.qBoardList();

        for (int i = 0; i < list.size(); i++) {

            list.get(i).setQ_date(list.get(i).getQ_date().substring(0,11));
        }




        return list;
    }
}