package com.example.finalpro.service.board;

import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;

import java.awt.print.Pageable;
import java.util.List;

public interface TipBoardPickListService {
    public List<QboardVO> tipBoardPickList(PagingVO pagingVO);
}
