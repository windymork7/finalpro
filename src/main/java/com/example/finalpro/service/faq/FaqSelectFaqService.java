package com.example.finalpro.service.faq;

import com.example.finalpro.vo.FaqVO;
import com.example.finalpro.vo.PagingVO;

import java.util.List;

public interface FaqSelectFaqService {
    public List<FaqVO> selectFaq(PagingVO vo);
}
