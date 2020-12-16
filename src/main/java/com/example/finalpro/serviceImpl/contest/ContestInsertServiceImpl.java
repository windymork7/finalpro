package com.example.finalpro.serviceImpl.contest;

import com.example.finalpro.dao.ContestDAO;
import com.example.finalpro.service.contest.ContestInsertService;
import com.example.finalpro.vo.ContestVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Service
public class ContestInsertServiceImpl implements ContestInsertService {
    @Autowired
    ContestDAO contestDAO;

    @Override
    public void contestInsert(MultipartFile contest_img2, ContestVO contestVO, HttpServletRequest request) {

        String contextPath = request.getSession().getServletContext().getRealPath("/");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일HH시mm분ss초");
        Calendar c1 = Calendar.getInstance();
        String strToday = sdf.format(c1.getTime());

        File dest = new File(contextPath + "../resources/static/upload/"+strToday+"_"+contest_img2.getOriginalFilename());
//        File dest = new File("C:/Users/CMH/IdeaProjects/finalpro/src/main/resources/static/upload/"+strToday+"_"+edit_img1.getOriginalFilename());

        if (!(contest_img2.getOriginalFilename().equals(""))){
            contestVO.setContest_img(strToday+"_"+contest_img2.getOriginalFilename());
        } else{
            contestVO.setContest_img("");
        }


        try {
            contest_img2.transferTo(dest);
        } catch (Exception e) {
            e.printStackTrace();
        }

//        for (int i = 0; i < 30; i++) {
            contestDAO.contestInsert(contestVO);
//        }

    }
}
