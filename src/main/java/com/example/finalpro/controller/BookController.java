package com.example.finalpro.controller;

import java.util.List;

import com.example.finalpro.service.book.*;
import com.example.finalpro.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.finalpro.vo.QboardVO;

@Controller
public class BookController {

	@Autowired
	BookSubCaListService bookSubCaListService;
	@Autowired
	BookBookCaContentListService bookBookCaContentListService;
	@Autowired
	BookSubCaNameService bookSubCaNameService;
	@Autowired
	BookBookCaListService bookBookCaListSerivce;
	@Autowired
	BookBookCaNameService bookBookCaNameService;
	@Autowired
    BookBookCaCountService bookBookCaCountService;


    // 문제풀이
    @RequestMapping("/todayProblem.bp")
    public String todayProblem(Model model){

        model.addAttribute("main", "book/sb_Quiz");
        return "template";
    }
    
    // 자바 문제 파일
    @RequestMapping("/JavaProblem.bp")
    public String scriptMoonJae(){return "json/JavaProblem";}
    
    // C 문제 파일
    @RequestMapping("/CProblem.bp")
    public String cProblem(){ return "json/CProblem";}

    // Oracle 문제 파일
    @RequestMapping("/OracleProblem.bp")
    public String oracleProblem(){ return "json/OracleProblem";}

    // Python 문제 파일
    @RequestMapping("/PythonProblem.bp")
    public String pythonProblem(){ return "json/PythonProblem";}

    
  
    

    //스크랩북 메인
    @RequestMapping("/scrapBookMain.bs")
    public String scrapBookMain(Model model,@RequestParam int ca_no ,@RequestParam(defaultValue = "1") int subCa,@RequestParam(defaultValue = "1") int bookCa,
                                @RequestParam(value = "nowPage", required = false) String nowPage,
                                @RequestParam(value = "cntPerPage", required = false) String cntPerPage){

        int count = bookBookCaCountService.bookCaListCount(subCa, bookCa, ca_no);

        if (nowPage == null && cntPerPage == null) {
            nowPage = "1";
            cntPerPage = "5";
        } else if (nowPage == null) {
            nowPage = "1";
        } else if (cntPerPage == null) {
            cntPerPage = "5";
        }

        PagingVO contentPaging = new PagingVO(count, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
        model.addAttribute("contentPaging", contentPaging);

        List<QboardVO> subCaList = bookSubCaListService.subCaList(ca_no);
        List<QboardVO> bookCaList = bookBookCaListSerivce.bookCaList(ca_no);
        List<QboardVO> contentlist = bookBookCaContentListService.bookCaContentList(subCa,bookCa,ca_no, contentPaging);

        QboardVO subVO = bookSubCaNameService.subCaName(subCa);
        QboardVO bookVO = bookBookCaNameService.bookCaName(bookCa);


        model.addAttribute("subCaList",subCaList);
        model.addAttribute("bookCaList",bookCaList);
        model.addAttribute("contentList",contentlist);
        model.addAttribute("bookVO",bookVO);
        model.addAttribute("subVO",subVO);
        model.addAttribute("main","book/scrapBook");
        return "template";
    }


    //스크랩북 큰 카테고리 ( 자바, 파이선 등 리스트 )
    @RequestMapping("/bookSubCaList.bs")
    public String bookSubCaList(Model model,@RequestParam int ca_no) {



    	List<QboardVO> list = bookSubCaListService.subCaList(ca_no);
    	
    	model.addAttribute("main","book/TestBookSubCaList");
    	model.addAttribute("list",list);
    	return "template";
    }
    //스크랩북 책 카테고리 ( **의 개념, 제어문 출력문 등등 리스트)
    @RequestMapping("/bookBookCaList.bs")
    public String bookBookCaList(Model model, @RequestParam int subCa) {

    	List<QboardVO> list = bookBookCaListSerivce.bookCaList(subCa);
    	QboardVO qboardVO = bookSubCaNameService.subCaName(subCa);

    	model.addAttribute("qboardVO",qboardVO);
    	model.addAttribute("list",list);
    	model.addAttribute("main","book/TestBookBookCaList");
    	return "template";
    }
    
    //스크랩북 책 카테고리리스트 안에 속해있는 게시글 목록 리스트
    /*
    @RequestMapping("/bookBookCaContentList.bs")
    public String bookBookCaContentList(Model model,@RequestParam int subCa,@RequestParam int bookCa) {
    	List<QboardVO> list = bookBookCaContentListService.bookCaContentList(subCa,bookCa);
    	QboardVO qboardVO = bookBookCaNameService.bookCaName(bookCa);

    	model.addAttribute("qboardVO",qboardVO);
        model.addAttribute("list",list);
    	model.addAttribute("main","book/TestBookBookCaContentList");
    	return "template";
    }*/

}
