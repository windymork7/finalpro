package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.service.edit.EditBoardInsertService;
import com.example.finalpro.vo.EditMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Service
public class EditBoardInsertServiceImpl implements EditBoardInsertService {

    @Autowired
    EditDAO editDAO;

    @Override
    public void editBoardInsert(MultipartFile edit_img1, EditMemberVO editMemberVO) {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일HH시mm분ss초");
        Calendar c1 = Calendar.getInstance();
        String strToday = sdf.format(c1.getTime());

//        File dest = new File("C:/Users/Administrator/IdeaProjects/finalpro/src/main/resources/static/upload/"+strToday+"_"+edit_img1.getOriginalFilename());
        File dest = new File("C:/Users/CMH/IdeaProjects/finalpro/src/main/resources/static/upload/"+strToday+"_"+edit_img1.getOriginalFilename());

        editMemberVO.setEdit_img(strToday+"_"+edit_img1.getOriginalFilename());

        try {
            edit_img1.transferTo(dest);
        } catch (Exception e) {
            e.printStackTrace();
        }

        editDAO.editBoardInsert(editMemberVO);
    }
}
