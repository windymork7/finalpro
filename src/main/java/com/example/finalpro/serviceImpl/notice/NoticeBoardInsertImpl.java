package com.example.finalpro.serviceImpl.notice;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.finalpro.dao.NoticeDAO;
import com.example.finalpro.service.notice.NoticeBoardInsert;
import com.example.finalpro.vo.NoticeVO;

@Service
public class NoticeBoardInsertImpl implements NoticeBoardInsert {

	@Autowired
	NoticeDAO noticeDAO;
	
	@Override
	public void noticeBoardInsert(NoticeVO noticeVO,MultipartFile notice_file) {
		System.out.println("notice_file: "+notice_file);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일HH시mm분ss초");
		Calendar c1 = Calendar.getInstance();
        String strToday = sdf.format(c1.getTime());
        
        File dest = new File("E:/학원/finalworkspace/finalpro/src/main/resources/static/upload/"+strToday+"_"+notice_file.getOriginalFilename());
		
        if (!(notice_file.getOriginalFilename().equals(""))){
        	noticeVO.setNotice_file(strToday+"_"+notice_file.getOriginalFilename());
        } else{
        	noticeVO.setNotice_file("");
        }
        
        try {
        	notice_file.transferTo(dest);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        noticeDAO.noticeBoardInsert(noticeVO);
	}
}
