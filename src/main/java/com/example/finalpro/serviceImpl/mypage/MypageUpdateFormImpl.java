package com.example.finalpro.serviceImpl.mypage;

import com.example.finalpro.dao.MypageDAO;
import com.example.finalpro.service.mypage.MypageUpdateFormService;
import com.example.finalpro.vo.CommonMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class MypageUpdateFormImpl implements MypageUpdateFormService {

    @Autowired
    MypageDAO mypageDAO;

    @Override
    public CommonMemberVO mypageUpdateForm(HttpSession session) {
        int mem_no = (Integer)session.getAttribute("userNo");
        System.out.println("마이페이지수정폼(리스트) mem_no: "+mem_no);

        CommonMemberVO commonMemberVO = mypageDAO.mypageUpdateForm(mem_no);
        commonMemberVO.setMem_date(commonMemberVO.getMem_date().substring(0,11));
        return commonMemberVO;
    }
}
