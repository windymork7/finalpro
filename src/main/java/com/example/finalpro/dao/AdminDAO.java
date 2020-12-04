package com.example.finalpro.dao;

import com.example.finalpro.vo.CommonMemberVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminDAO {
    //신고 10개 넘은 애들 리스트
    public List<CommonMemberVO> memRptList();

    // 블랙처리 액션
    public void memBlackAction(int mem_no);

    // 블랙 리스트
    public List<CommonMemberVO> memBlackList();

}
