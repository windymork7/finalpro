package com.example.finalpro.serviceImpl.faq;

import com.example.finalpro.dao.FaqDAO;
import com.example.finalpro.service.faq.FaqBoardUpdateForm;
import com.example.finalpro.vo.FaqVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaqBoardUpdateFormImpl implements FaqBoardUpdateForm {

    @Autowired
    FaqDAO faqDAO;

    @Override
    public FaqVO faqBoardUpdateForm(int faq_no) {
        FaqVO faqVO = faqDAO.faqBoardUpdateForm(faq_no);
        return faqVO;
    }
}
