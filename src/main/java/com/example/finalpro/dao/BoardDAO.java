package com.example.finalpro.dao;

import com.example.finalpro.vo.QboardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardDAO {
    // q게시글 쓰기
    public void qBoardInsert(QboardVO qboardVO);
    // q게시글 조회
    public List<QboardVO> qBoardList();
    // 해당 게시글 조회
    public QboardVO qBoardContent(int q_no);



}
