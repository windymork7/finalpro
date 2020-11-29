package com.example.finalpro.serviceImpl.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.NoticeDAO;
import com.example.finalpro.service.notice.NoticeBoardInsert;
import com.example.finalpro.vo.NoticeVO;

@Service
public class NoticeBoardInsertImpl implements NoticeBoardInsert {

	@Autowired
	NoticeDAO noticeDAO;
	
	@Override
	public void noticeBoardInsert(NoticeVO noticeVO) {
		noticeDAO.noticeBoardInsert(noticeVO);
	}
}
