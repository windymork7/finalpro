package com.example.finalpro.serviceImpl.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.NoticeDAO;
import com.example.finalpro.service.notice.NoticeBoardDelete;
import com.example.finalpro.vo.NoticeVO;

@Service
public class NoticeBoardDeleteImpl implements NoticeBoardDelete{

	@Autowired
	NoticeDAO noticeDAO;
	
	@Override
	public void noticeBoardDelete(int notice_no) {
		noticeDAO.noticeBoardDelete(notice_no);
	}
}
