package com.example.finalpro.serviceImpl.survey;

import com.example.finalpro.dao.SurveyDAO;
import com.example.finalpro.service.survey.SurveyRListService;
import com.example.finalpro.vo.SurveyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SurveyRListImpl implements SurveyRListService {

    @Autowired
    SurveyDAO surveyDAO;

    @Override
    public List<SurveyVO> surveyRList() {
        return surveyDAO.surveyRList();
    }
}
