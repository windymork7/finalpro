package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.service.board.CommonSubCateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonSubCateServiceImpl implements CommonSubCateService {
    @Autowired
    BoardDAO board;

    @Override
    public String subCategory(int subCa) {

        String subcategory = board.subCategory(subCa);

        return subcategory;
    }
}
