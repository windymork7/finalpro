package com.example.finalpro.serviceImpl.survey;

import com.example.finalpro.dao.SurveyDAO;
import com.example.finalpro.service.survey.SurveyQListService;
import com.example.finalpro.vo.SurveyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SurveyQListImpl implements SurveyQListService {

    @Autowired
    SurveyDAO surveyDAO;

    @Override
    public List<SurveyVO> surveyQList() {
        return surveyDAO.surveyQList();
    }
}
