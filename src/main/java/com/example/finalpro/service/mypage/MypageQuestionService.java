package com.example.finalpro.service.mypage;

import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MypageQuestionService {
    public List<QboardVO> mypageQuestion(HttpSession session, PagingVO pagingVO);
}
