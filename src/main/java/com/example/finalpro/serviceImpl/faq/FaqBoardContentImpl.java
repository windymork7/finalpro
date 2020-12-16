package com.example.finalpro.serviceImpl.faq;
import com.example.finalpro.dao.FaqDAO;
import com.example.finalpro.service.faq.FaqBoardContent;
import com.example.finalpro.vo.FaqVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaqBoardContentImpl implements FaqBoardContent {

    @Autowired
    FaqDAO faqDAO;

    @Override
    public FaqVO faqBoardContent(int faq_no){
        FaqVO faqVO = faqDAO.faqBoardContent(faq_no);
        faqVO.setFaq_date(faqVO.getFaq_date().substring(0, 11));
        return faqVO;
    }

}
