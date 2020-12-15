package com.example.finalpro.dao;

import java.util.List;

import com.example.finalpro.vo.PagingVO;
import org.apache.ibatis.annotations.Mapper;

import com.example.finalpro.vo.QboardVO;

@Mapper
public interface BookDAO {
	//서브카테고리 ( 자바 , 파이썬 등 )
	public List<QboardVO> subCaList(int ca_no);
	//북카테고리 ( 자바의개념, 제어문 등 )
	public List<QboardVO> bookCaList(int sub_ca_no);
	//북카테고리리스트 ( 자바의개념, 제어문안에 속해있는 게시글 목록리스트 )
	public List<QboardVO> bookCaContentList(PagingVO contentPaging);
	//서브카테고리이름구하기
	public QboardVO subCaName(int sub_ca_no);
	//북카테고리이름구하기
	public QboardVO bookCaName(int book_ca_no);
	//북카테고리 리스트 전체갯수
	public int bookCaListCount(int sub_ca_no, int book_ca_no, int ca_no);
}
