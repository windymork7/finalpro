package com.example.finalpro.dao;

import org.apache.ibatis.annotations.Mapper;
import com.example.finalpro.vo.NoticeVO;
import com.example.finalpro.vo.PagingVO;

import java.util.*;

@Mapper
public interface NoticeDAO {
	
	//게시판 목록
	public List<NoticeVO> noticeBoardList(PagingVO vo);
	//게시판 내용
	public NoticeVO noticeBoardContent(int notice_no);
	//글쓰기
	public void noticeBoardInsert(NoticeVO noticeVO);
	//글삭제
	public void noticeBoardDelete(int notice_no);
	//글수정
	public void noticeBoardUpdate(NoticeVO noticeVO);
	//글수정폼
	public NoticeVO noticeBoardUpdateForm(int Notice_no);
	//총글갯스
	public int noticeBoardCount();
}
