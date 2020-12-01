package com.example.finalpro.serviceImpl.faq;

import com.example.finalpro.dao.FaqDAO;
import com.example.finalpro.service.faq.FaqBoardUpdate;
import com.example.finalpro.vo.FaqVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaqBoardUpdateImpl implements FaqBoardUpdate {

    @Autowired
    FaqDAO faqDAO;

    @Override
    public void faqBoardUpdate(FaqVO faqVO) {
        faqDAO.faqBoardUpdate(faqVO);

    }
}
