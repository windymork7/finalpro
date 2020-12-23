package com.example.finalpro.service.admin;

import com.example.finalpro.vo.BusinessMemberVO;
import com.example.finalpro.vo.PagingVO;

import java.util.List;

public interface AdminBizStandByListService {
    public List<BusinessMemberVO> bizStandByList(PagingVO pagingVO);
}
