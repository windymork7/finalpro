package com.example.finalpro.dao;

import com.example.finalpro.vo.EditMemberVO;
import com.example.finalpro.vo.PagingVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EditDAO {
    // 에디터 글쓰기 등록
    public void editBoardInsert(EditMemberVO editMemberVO);
    // 에디터 리스트 출력
    public List<EditMemberVO> editBoardList(PagingVO pagingVO);
    // 에디터 해당글 조회
    public EditMemberVO editBoardContent(int editBoardNum);
    // 에디터 조회수 업
    public void editBoardViewUp(int editBoardNum);
    // 에디터 글 삭제
    public void editBoardDelete(int editBoardNum);
    // 에디터 글 수정
    public void editBoardUpdate(EditMemberVO editMemberVO);
    // 에디터 댓글 등록
    public void editBoardReplyInsert(EditMemberVO editMemberVO);
    // 에디터 댓글 조회
    public List<EditMemberVO> editBoardReplyList(int edit_no);
    // 에디터 글 갯수
    public int editBoardCount();

}
