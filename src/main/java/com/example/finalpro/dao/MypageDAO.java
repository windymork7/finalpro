package com.example.finalpro.dao;

import com.example.finalpro.vo.QboardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MypageDAO {
    public List<QboardVO> myquestion(int mem_no);
}
