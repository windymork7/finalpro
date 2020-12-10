package com.example.finalpro.service.edit;

import com.example.finalpro.vo.EditMemberVO;
import com.example.finalpro.vo.PagingVO;

import java.util.List;

public interface EditBoardListService {
    public List<EditMemberVO> editBoardList(PagingVO pagingVO);
}
