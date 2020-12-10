package com.example.finalpro.service.board;

import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface CommonBoardListService {
    public List<QboardVO> qBoardList(int subCa, PagingVO pagingVO);

}
