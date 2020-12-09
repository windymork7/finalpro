package com.example.finalpro.dao;

import com.example.finalpro.vo.ContestVO;
import com.example.finalpro.vo.PagingVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ContestDAO {

    // 공모전 등록
    public void contestInsert(ContestVO contestVO);
    // 공모전 리스트
    public List<ContestVO> contestList(PagingVO pagingVO);
    // 공모전 해당 게시글 보기
    public ContestVO contestContent(int contest_no);
    // 공모전 게시물 수
    public int contestCount();


}
