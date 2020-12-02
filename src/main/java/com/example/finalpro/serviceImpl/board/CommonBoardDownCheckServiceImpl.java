package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonBoardDownCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class CommonBoardDownCheckServiceImpl implements CommonBoardDownCheckService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public String qBoardDownCheck(int qboardNum, HttpServletRequest request, HttpSession session) {

        if(!session.getAttribute("userNo").equals(null)){
            int mem_no = (Integer) session.getAttribute("userNo"); // mem_no, q_no String -> int

            if(boardDAO.qBoardDownCheck(mem_no,qboardNum)==0){
                return "/qboardDownAction.bo?qboardNum"+qboardNum;
            }
        }
        return "/qboardListForm.bo";
    }
}
