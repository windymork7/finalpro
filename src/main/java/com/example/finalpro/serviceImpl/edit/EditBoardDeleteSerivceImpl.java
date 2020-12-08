package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.service.edit.EditBoardDeleteSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EditBoardDeleteSerivceImpl implements EditBoardDeleteSerivce {
    @Autowired
    EditDAO editDAO;

    @Override
    public void editBoardDelete(int editBoardNum) {
        editDAO.editBoardDelete(editBoardNum);
    }
}
