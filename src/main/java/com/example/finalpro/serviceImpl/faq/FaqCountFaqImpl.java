package com.example.finalpro.serviceImpl.faq;

import com.example.finalpro.dao.FaqDAO;
import com.example.finalpro.service.faq.FaqCountFaqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaqCountFaqImpl implements FaqCountFaqService {
    @Autowired
    FaqDAO faqDAO;

    @Override
    public int countFaq() {
        return faqDAO.countFaq();
    }
}
