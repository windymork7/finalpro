package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.service.edit.EditBoardListService;
import com.example.finalpro.vo.EditMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EditBoardListServiceImpl implements EditBoardListService {

    @Autowired
    EditDAO editDAO;

    @Override
    public List<EditMemberVO> editBoardList() {

        List<EditMemberVO> list = editDAO.editBoardList();

        return list;
    }
}
