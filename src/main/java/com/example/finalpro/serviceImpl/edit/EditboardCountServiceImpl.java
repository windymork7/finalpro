package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.service.edit.EditboardCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EditboardCountServiceImpl implements EditboardCountService {
    @Autowired
    EditDAO editDAO;

    @Override
    public int editBoardCount() { return editDAO.editBoardCount(); }
}
