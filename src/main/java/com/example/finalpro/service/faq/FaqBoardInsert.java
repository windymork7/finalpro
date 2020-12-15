package com.example.finalpro.service.faq;

import com.example.finalpro.vo.FaqVO;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

public interface FaqBoardInsert {
    public void faqBoardInsert(FaqVO faqVO);
}
