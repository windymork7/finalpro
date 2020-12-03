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
    public String myscrapCheck(int q_no, HttpServletRequest request, HttpSession session) {
        int mem_no =  (Integer) session.getAttribute("userNo"); // mem_no, q_no String -> int
        System.out.println("mem_no:"+ mem_no);
        System.out.println("Q_NO:"+ q_no);
        System.out.println("체크:"+myscrapDAO.myscrapCheck(q_no,mem_no));
        if(myscrapDAO.myscrapCheck(q_no,mem_no)==0) {  //집가서 쿼리문 작성
        	
            return "/myscrapInsert.my?qboardNum="+q_no; //추가하는 my 컨트롤러로
        }
        String referer = request.getHeader("Referer");
        //return "myscrapList.my?qboardNum="+q_no;	//마이스크랩 리스트
        return referer;
    }
}
