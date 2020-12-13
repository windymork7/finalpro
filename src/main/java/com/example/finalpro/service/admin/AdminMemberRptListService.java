package com.example.finalpro.service.admin;

import com.example.finalpro.vo.CommonMemberVO;
import com.example.finalpro.vo.PagingVO;

import java.util.List;

public interface AdminMemberRptListService {
    public List<CommonMemberVO> memRptList(PagingVO pagingVO);
}
