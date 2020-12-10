package com.example.finalpro.service.board;

import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;

import java.util.List;

public interface CommonBoardReadyListService {
    public List<QboardVO> qBoardReadyList(int subCa, PagingVO pagingVO);
}
