package com.example.finalpro.serviceImpl.mypage;

import com.example.finalpro.dao.MypageDAO;
import com.example.finalpro.service.mypage.MypageQuestionService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class MypageQuestionImpl implements MypageQuestionService {
    @Autowired
    MypageDAO mypageDAO;

    @Override
    public List<QboardVO> mypageQuestion(HttpSession session) {
        System.out.println("내가한질문 Impl");
        int mem_no = (Integer) session.getAttribute("userNo"); // mem_no, q_no String -> int
        System.out.println("mem_no:" + mem_no);

        List<QboardVO> list = mypageDAO.myquestion(mem_no);
        return list;
    }
}
