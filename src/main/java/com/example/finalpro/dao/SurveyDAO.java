package com.example.finalpro.dao;

import com.example.finalpro.vo.SurveyVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface SurveyDAO {
    public List<SurveyVO> surveyQList();    //문항리스트
    public List<SurveyVO> surveyRList();    //답리스트
    public void surveyCountUp(int survey_r_no); //답변에 카운트 + 1
    public void surveyMemUpdate(int mem_no);    //설문완료한 멤버상태 +1

    // 설문 갯수
    public int serveyCount();
    // 설문지 성비
    public Integer surveyResponseCount(int gender);



}

