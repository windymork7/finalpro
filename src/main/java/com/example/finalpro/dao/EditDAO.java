package com.example.finalpro.dao;

import com.example.finalpro.vo.EditMemberVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EditDAO {
    // 에디터 글쓰기 등록
    public void editBoardInsert(EditMemberVO editMemberVO);
    // 에디터 리스트 출력
    public List<EditMemberVO> editBoardList();
    // 에디터 해당글 조회
    public EditMemberVO editBoardContent(int editBoardNum);


}
