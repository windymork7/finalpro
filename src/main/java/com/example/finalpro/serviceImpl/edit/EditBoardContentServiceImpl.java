package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.service.edit.EditBoardContentService;
import com.example.finalpro.vo.EditMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EditBoardContentServiceImpl implements EditBoardContentService {

    @Autowired
    EditDAO editDAO;

    @Override
    public EditMemberVO editBoardContent(int editBoardNum) {

        editDAO.editBoardViewUp(editBoardNum);
        EditMemberVO editMemberVO = editDAO.editBoardContent(editBoardNum);
        editMemberVO.setEdit_date(editMemberVO.getEdit_date().substring(0,11));

        return editMemberVO;
    }
}
