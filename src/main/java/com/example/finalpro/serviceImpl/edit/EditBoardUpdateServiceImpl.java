package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.service.edit.EditBoardUpdateService;
import com.example.finalpro.vo.EditMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EditBoardUpdateServiceImpl implements EditBoardUpdateService {
    @Autowired
    EditDAO editDAO;

    @Override
    public void editBoardUpdate(EditMemberVO editMemberVO) {
        editDAO.editBoardUpdate(editMemberVO);
    }
}
