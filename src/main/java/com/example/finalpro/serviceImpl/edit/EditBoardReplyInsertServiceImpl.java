package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.service.edit.EditBoardReplyInsertService;
import com.example.finalpro.vo.EditMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EditBoardReplyInsertServiceImpl implements EditBoardReplyInsertService {
    @Autowired
    EditDAO editDAO;

    @Override
    public void editBoardReplyInsert(EditMemberVO editMemberVO) {
        editDAO.editBoardReplyInsert(editMemberVO);
    }
}
