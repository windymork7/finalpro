package com.example.finalpro.service.notice;

import org.springframework.web.multipart.MultipartFile;

import com.example.finalpro.vo.NoticeVO;

public interface NoticeBoardInsert {
	public void noticeBoardInsert(NoticeVO noticeVO,MultipartFile notice_file); 
}
