package com.example.finalpro.serviceImpl.mypage;

import com.example.finalpro.dao.MypageDAO;
import com.example.finalpro.service.mypage.MypageQuestionService;
import com.example.finalpro.vo.PagingVO;
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
    public List<QboardVO> mypageQuestion(HttpSession session, PagingVO pagingVO) {
        int mem_no = (Integer) session.getAttribute("userNo"); // mem_no, q_no String -> int

        pagingVO.setMem_no(mem_no);
        List<QboardVO> list = mypageDAO.myquestion(pagingVO);
        for (int i = 0; i < list.size(); i++) {

            list.get(i).setQ_date(list.get(i).getQ_date().substring(0,11));
        }

        return list;
    }
}
