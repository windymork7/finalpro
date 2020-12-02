package com.example.finalpro.serviceImpl.myscrap;

import com.example.finalpro.dao.MyscrapDAO;
import com.example.finalpro.service.myscrap.MyscrapCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class MyscrapCheckImpl implements MyscrapCheckService {

    @Autowired
    MyscrapDAO myscrapDAO;

    @Override
    public String myscrapCheck(int scrap_no, HttpServletRequest request, HttpSession session) {
        int mem_no =  (Integer) session.getAttribute("userNo"); // mem_no, q_no String -> int
        if(myscrapDAO.myscrapCheck(scrap_no,mem_no)==0) {  //집가서 쿼리문 작성
            return ""; //추가하는 my 컨트롤러로
        }
        return "";//이전페이지로
    }
}
