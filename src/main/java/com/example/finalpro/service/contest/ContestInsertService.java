package com.example.finalpro.service.contest;

import com.example.finalpro.vo.ContestVO;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

public interface ContestInsertService {
    public void contestInsert(MultipartFile contest_img2, ContestVO contestVO, HttpServletRequest request);
}
