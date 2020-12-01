package com.example.finalpro.serviceImpl.faq;

import com.example.finalpro.dao.FaqDAO;
import com.example.finalpro.service.faq.FaqBoardList;
import com.example.finalpro.vo.FaqVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.List;

@Service
public class FaqBoardListImpl implements FaqBoardList {

    @Autowired
    FaqDAO faqDAO;

    @Override
    public List<FaqVO> faqBoardList(){

        SimpleDateFormat format1 = new SimpleDateFormat("yyyy.mm.dd");
        List<FaqVO> list = faqDAO.faqBoardList();

        for ( int i =0; i<list.size();i++){
            list.get(i).setFaq_date(list.get(i).getFaq_date().substring(0,11));
//            System.out.println(list.get(i).toString());
        }
        return list;
    }
}
