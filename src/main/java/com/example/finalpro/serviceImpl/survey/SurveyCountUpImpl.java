package com.example.finalpro.serviceImpl.survey;

import com.example.finalpro.dao.SurveyDAO;
import com.example.finalpro.service.survey.SurveyCountUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class SurveyCountUpImpl implements SurveyCountUpService {

    @Autowired
    SurveyDAO surveyDAO;

    @Override
    public void surveyCountUp(HttpServletRequest request, int mem_no) {

        System.out.println(request.getParameter("count"));
        System.out.println(Integer.parseInt(request.getParameter("survey_q_no1")+1));

        for (int i = 1; i <= Integer.parseInt(request.getParameter("count")); i++) {
            int temp = Integer.parseInt(request.getParameter("survey_q_no"+i));
            surveyDAO.surveyCountUp(temp);
        }

//        surveyDAO.surveyCountUp(survey_r_no);
        surveyDAO.surveyMemUpdate(mem_no);
    }
}
