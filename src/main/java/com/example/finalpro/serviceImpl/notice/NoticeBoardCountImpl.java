package com.example.finalpro.serviceImpl.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.NoticeDAO;
import com.example.finalpro.service.notice.NoticeBoardContent;
import com.example.finalpro.service.notice.NoticeBoardCountService;

@Service
public class NoticeBoardCountImpl implements NoticeBoardCountService{
	
	@Autowired
	NoticeDAO noticeDAO;

	@Override
	public int noticeBoardCount() {
		return noticeDAO.noticeBoardCount();
	}

}
