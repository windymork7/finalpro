package com.example.finalpro.service.notice;

import java.util.*;
import com.example.finalpro.vo.NoticeVO;
import com.example.finalpro.vo.PagingVO;

//공지사항 리스트 인터페이스
public interface NoticeBoardList {
	public List<NoticeVO> noticeBoardList(PagingVO vo);
	
}
