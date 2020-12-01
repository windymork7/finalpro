package com.example.finalpro.dao;

import com.example.finalpro.vo.FaqVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FaqDAO {

    //FAQ목록
    public List<FaqVO> faqBoardList();

    //FAQ내용
    public FaqVO faqBoardContent(int faq_no);

    //쓰기
    public void faqBoardInsert(FaqVO faqVO);

    //삭제
    public void faqBoardDelete(int faq_no);

    //수정폼
    public FaqVO faqBoardUpdateForm(int faq_no);

    //수정액션
    public void faqBoardUpdate(FaqVO faqVO);
}

