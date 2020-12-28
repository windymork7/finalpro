package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.BookAddActionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookAddActionImpl implements BookAddActionService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public String bookAddAction(int bookCheck, int memCheck, int mem_no, int q_no) {

        if (memCheck != 1) {
            if (bookCheck == 0) {
                boardDAO.bookScrapCntInsert(q_no);
//                boardDAO.bookMemStateUpdate(mem_no);
                boardDAO.bookScrapUpInsert(q_no, mem_no);
                return "T";
            }
            boardDAO.bookScrapCntUp(q_no);
//            boardDAO.bookMemStateUpdate(mem_no);
            boardDAO.bookScrapUpInsert(q_no, mem_no);
            return "T";
        }
        return "F";
    }
}
