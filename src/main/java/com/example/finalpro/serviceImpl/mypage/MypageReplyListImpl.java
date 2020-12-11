package com.example.finalpro.serviceImpl.mypage;

import com.example.finalpro.dao.MypageDAO;
import com.example.finalpro.service.mypage.MypageReplyListService;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import com.example.finalpro.vo.ReplyBoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class MypageReplyListImpl implements MypageReplyListService {

    @Autowired
    MypageDAO mypageDAO;

    @Override
    public List<ReplyBoardVO> replyList(HttpSession session, PagingVO pagingVO) {
        int mem_no = (Integer) session.getAttribute("userNo"); // mem_no, q_no String -> int
        pagingVO.setMem_no(mem_no);
        List<ReplyBoardVO> list = mypageDAO.myreply(pagingVO);

        for (int i = 0; i < list.size(); i++) {

            list.get(i).setQ_date(list.get(i).getQ_date().substring(0,11));
        }
        return list;
    }
}
