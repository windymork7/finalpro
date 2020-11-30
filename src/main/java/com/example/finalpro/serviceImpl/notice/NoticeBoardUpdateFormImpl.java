package com.example.finalpro.serviceImpl.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.NoticeDAO;
import com.example.finalpro.service.notice.NoticeBoardUpdateForm;
import com.example.finalpro.vo.NoticeVO;

@Service
public class NoticeBoardUpdateFormImpl implements NoticeBoardUpdateForm{
	
	@Autowired
	NoticeDAO noticeDAO;
	
	@Override
	public NoticeVO noticeBoardUpdateForm(int notice_no) {
		NoticeVO noticeVO = noticeDAO.noticeBoardUpdateForm(notice_no);
		return noticeVO;
	}

}
