package com.example.finalpro.serviceImpl.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.NoticeDAO;
import com.example.finalpro.service.notice.NoticeBoardUpdateAction;
import com.example.finalpro.vo.NoticeVO;

@Service
public class NoticeBoardUpdateActionImpl implements NoticeBoardUpdateAction {

	@Autowired
	NoticeDAO noticeDAO;
	
	@Override
	public void noticeBoardUpdate(NoticeVO noticeVO) {
		noticeDAO.noticeBoardUpdate(noticeVO);
	}
}
