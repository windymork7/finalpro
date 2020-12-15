package com.example.finalpro.serviceImpl.faq;

import com.example.finalpro.dao.FaqDAO;
import com.example.finalpro.service.faq.FaqBoardInsert;
import com.example.finalpro.vo.FaqVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Service
public class FaqBoardInsertImpl implements FaqBoardInsert {

    @Autowired
    FaqDAO faqDAO;
    @Override
    public void faqBoardInsert(FaqVO faqVO) {

        faqDAO.faqBoardInsert(faqVO);
    }
}
