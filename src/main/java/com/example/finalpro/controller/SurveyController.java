package com.example.finalpro.controller;

import com.example.finalpro.service.survey.SurveyCountUpService;
import com.example.finalpro.service.survey.SurveyGenderCountService;
import com.example.finalpro.service.survey.SurveyQListService;
import com.example.finalpro.service.survey.SurveyRListService;
import com.example.finalpro.vo.SurveyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SurveyController {

    @Autowired
    SurveyQListService surveyQListService;
    @Autowired
    SurveyRListService surveyRListService;
    @Autowired
    SurveyCountUpService surveyCountUpService;
    @Autowired
    SurveyGenderCountService surveyGenderCountService;

    // 설문조사 페이지
    @RequestMapping("/surveyForm.su")
    public String surveyForm(Model model){

        List<SurveyVO> qlist = surveyQListService.surveyQList();
        List<SurveyVO> rlist = surveyRListService.surveyRList();

        model.addAttribute("qlist",qlist);
        model.addAttribute("rlist",rlist);
        model.addAttribute("main","survey/surveyForm");
        return "template";
    }

    // 설문조사 카운터 업
    @RequestMapping("/surveyCountUp.su")
    public String servuyCountUp(HttpSession session, HttpServletRequest request){
        int mem_no = (Integer)session.getAttribute("userNo");

        //for (int i=0; i<survey_q_no.size();i++)
        //  System.out.println("라디오배열: "+survey_q_no.get(i).toString() );

        //surveyCountUpService.surveyCountUp(survey_q_no.get(0),mem_no);
        surveyCountUpService.surveyCountUp(request,mem_no);

        return "redirect:/surveyView.su";
    }
    @RequestMapping("/surveyView.su")
    public String surveyView(Model model){

        surveyGenderCountService.surveyGenderCount(model);

        model.addAttribute("main","survey/surveyView");
        return "template";
    }
}
