package com.example.finalpro.serviceImpl.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.NoticeDAO;
import com.example.finalpro.service.notice.NoticeBoardContent;
import com.example.finalpro.vo.NoticeVO;

@Service
public class NoticeBoardContentImpl implements NoticeBoardContent {

	@Autowired
	NoticeDAO noticeDAO;
	
	@Override
	public NoticeVO noticeBoardContent(int notice_no) {
		NoticeVO noticeVO = noticeDAO.noticeBoardContent(notice_no);
		return noticeVO;
		
	}
	
}
