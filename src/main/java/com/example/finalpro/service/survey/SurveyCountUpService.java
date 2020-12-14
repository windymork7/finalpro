package com.example.finalpro.service.survey;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface SurveyCountUpService {
    public void surveyCountUp(HttpServletRequest request, int mem_no);
}
