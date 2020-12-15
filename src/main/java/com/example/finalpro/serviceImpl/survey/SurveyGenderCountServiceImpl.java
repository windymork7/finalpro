package com.example.finalpro.serviceImpl.survey;

import com.example.finalpro.dao.SurveyDAO;
import com.example.finalpro.service.survey.SurveyGenderCountService;
import com.example.finalpro.vo.SurveyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.HashMap;
import java.util.Map;

@Service
public class SurveyGenderCountServiceImpl implements SurveyGenderCountService {
    @Autowired
    SurveyDAO surveyDAO;

    @Override
    public void surveyGenderCount(Model model) {

        int total = surveyDAO.serveyCount();

        Map<String, Integer> survey = new HashMap<>();

        for (int i = 1; i <= total; i++) {
            survey.put(""+i, surveyDAO.surveyResponseCount(i));
        }

        model.addAttribute("survey", survey);

    }
}
