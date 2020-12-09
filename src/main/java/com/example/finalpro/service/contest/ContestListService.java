package com.example.finalpro.service.contest;

import com.example.finalpro.vo.ContestVO;
import com.example.finalpro.vo.PagingVO;

import java.util.List;

public interface ContestListService {
    public List<ContestVO> contestList(PagingVO pagingVO);
}
