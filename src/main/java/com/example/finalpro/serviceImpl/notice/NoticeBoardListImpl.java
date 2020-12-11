package com.example.finalpro.serviceImpl.notice;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.finalpro.dao.NoticeDAO;
import com.example.finalpro.service.notice.NoticeBoardList;
import com.example.finalpro.vo.NoticeVO;
import com.example.finalpro.vo.PagingVO;

@Service
public class NoticeBoardListImpl implements NoticeBoardList{
	
	@Autowired
	NoticeDAO noticeDAO;
	
	@Override
	public List<NoticeVO> noticeBoardList(PagingVO vo){
	
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.mm.dd");
		List<NoticeVO> list = noticeDAO.noticeBoardList(vo);
		
		for ( int i = 0; i < list.size(); i++) {
			list.get(i).setNotice_date(list.get(i).getNotice_date().substring(0,11));
		}
		return list;
		
	}

}
