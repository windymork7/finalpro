package com.example.finalpro.serviceImpl.faq;

import com.example.finalpro.dao.FaqDAO;
import com.example.finalpro.service.faq.FaqBoardDelete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaqBoardDeleteImpl implements FaqBoardDelete {

    @Autowired
    FaqDAO faqDAO;

    @Override
    public void faqBoardDelete(int faq_no){
        faqDAO.faqBoardDelete(faq_no);
    }
}
