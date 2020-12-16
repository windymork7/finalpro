package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.edit.EditBoardInsertService;
import com.example.finalpro.vo.EditMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Service
public class EditBoardInsertServiceImpl implements EditBoardInsertService {

    @Autowired
    EditDAO editDAO;
    @Autowired
    MemberDAO memberDAO;

    @Override
    public void editBoardInsert(MultipartFile edit_img1, EditMemberVO editMemberVO, HttpServletRequest request) {

        String contextPath = request.getSession().getServletContext().getRealPath("/");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일HH시mm분ss초");
        Calendar c1 = Calendar.getInstance();
        String strToday = sdf.format(c1.getTime());

        File dest = new File(contextPath + "../resources/static/upload/"+strToday+"_"+edit_img1.getOriginalFilename());
//        File dest = new File("C:/Users/CMH/IdeaProjects/finalpro/src/main/resources/static/upload/"+strToday+"_"+edit_img1.getOriginalFilename());

        if (!(edit_img1.getOriginalFilename().equals(""))){
            editMemberVO.setEdit_img(strToday+"_"+edit_img1.getOriginalFilename());
        } else{
            editMemberVO.setEdit_img("");
        }

        try {
            edit_img1.transferTo(dest);
        } catch (Exception e) {
            e.printStackTrace();
        }



//        for (int i=0; i< 30; i++) {
            editDAO.editBoardInsert(editMemberVO);
//        }
        memberDAO.commonExpUpate(editMemberVO.getMem_no(), 20);
    }
}
