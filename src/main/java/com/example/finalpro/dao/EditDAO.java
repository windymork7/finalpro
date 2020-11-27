package com.example.finalpro.dao;

import com.example.finalpro.vo.EditMemberVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EditDAO {
    public void editBoardInsert(EditMemberVO editMemberVO);
}
