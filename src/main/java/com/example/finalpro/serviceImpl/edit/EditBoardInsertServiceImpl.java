package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.service.edit.EditBoardInsertService;
import com.example.finalpro.vo.EditMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EditBoardInsertServiceImpl implements EditBoardInsertService {

    @Autowired
    EditDAO editDAO;

    @Override
    public void editBoardInsert(EditMemberVO editMemberVO) {

        editDAO.editBoardInsert(editMemberVO);
    }
}
