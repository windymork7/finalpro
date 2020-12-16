package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.board.TipBoardWriteActionService;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Service
public class TipBoardWriteActionImpl implements TipBoardWriteActionService {

    @Autowired
    BoardDAO boardDAO;
    @Autowired
    MemberDAO memberDAO;    //commonExpUpdate에 글쓰면 +3 mem_no 넣어

    @Override
    public void tipBoardWriteAction(MultipartFile new_file, QboardVO vo, HttpServletRequest request) {
        String contextPath = request.getSession().getServletContext().getRealPath("/");
        System.out.println("contextPath"+contextPath);
        System.out.println("new_file: "+new_file);

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일HH시mm분ss초");
        Calendar c1 = Calendar.getInstance();
        String strToday = sdf.format(c1.getTime());

        File dest = new File(contextPath + "../resources/static/upload/" + strToday + "_" + new_file.getOriginalFilename());

        if (!(new_file.getOriginalFilename().equals(""))) {
            vo.setNew_file(strToday + "_" + new_file.getOriginalFilename());
        } else {
            vo.setNew_file("");
        }

        try {
            new_file.transferTo(dest);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("mem_no: "+ vo.getMem_no());
        boardDAO.tipBoardWriteAction(vo);
        memberDAO.commonExpUpate(vo.getMem_no(),3);
    }
}
