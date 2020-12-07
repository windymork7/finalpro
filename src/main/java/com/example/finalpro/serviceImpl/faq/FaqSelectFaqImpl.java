package com.example.finalpro.serviceImpl.faq;

import com.example.finalpro.dao.FaqDAO;
import com.example.finalpro.service.faq.FaqSelectFaqService;
import com.example.finalpro.vo.FaqVO;
import com.example.finalpro.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FaqSelectFaqImpl implements FaqSelectFaqService {

    @Autowired
    FaqDAO faqDAO;

    @Override
    public List<FaqVO> selectFaq(PagingVO vo) {
        return faqDAO.selectFaq(vo);
    }
}
