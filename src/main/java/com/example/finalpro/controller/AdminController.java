package com.example.finalpro.controller;

import com.example.finalpro.service.admin.*;
import com.example.finalpro.serviceImpl.admin.AdminMemberBlackActionImpl;
import com.example.finalpro.vo.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.lang.annotation.Repeatable;
import java.util.List;

@Controller
public class AdminController {

	@Autowired
	AdminMemberRptListService adminMemberRptListService;
	@Autowired
	AdminMemberBlackActionImpl adminMemberBlackAction;
	@Autowired
	AdminMemberBlackListService adminMemberBlackListService;
	@Autowired
	AdminQRptListService adminQRptListService;
	@Autowired
	AdminQDeleteActionService adminQDeleteActionService;
	@Autowired
	AdminBookStandByListService adminBookStandByListService;
	@Autowired
	AdminBookAddActionService adminBookAddActionService;
	@Autowired
	AdminCaListService adminCaListService;
	@Autowired
	AdminSubCaListService adminSubCaListService;
	@Autowired
	AdminBookCaListService adminBookCaListService;
	@Autowired
	AdminBookCaNameUpdateFormService adminBookCaNameUpdateFormService;
	@Autowired
	AdminBookCaNameUpdateActionService adminBookCaNameUpdateActionService;
	@Autowired
	AdminExpUpdateFormService adminExpUpdateFormService;
	@Autowired
	AdminExpUpdateActionService adminExpUpdateActionService;
	@Autowired
	AdminMemRptCountService adminMemRptCountService;
	@Autowired
	AdminMemBlackCountService adminMemBlackCountService;
	@Autowired
	AdminQRptCountService adminQRptCountService;
	@Autowired
	AdminBookStandByCountService adminBookStandByCountService;
	@Autowired
	AdminBizStandByCountService adminBizStandByCountService;
	@Autowired
	AdminBizStandByListService adminBizStandByListService;
	@Autowired
	AdminBizStateUpdateService adminBizStateUpdateService;

	// 어드민 메인페이지
	@RequestMapping("/adminMain.ad")
    public String adminMain(Model model,
				            @RequestParam(value = "nowPage1", required = false) String nowPage1,
				            @RequestParam(value = "cntPerPage1", required = false) String cntPerPage1,
				            @RequestParam(value = "nowPage2", required = false) String nowPage2,
				            @RequestParam(value = "cntPerPage2", required = false) String cntPerPage2,
				            @RequestParam(value = "nowPage3", required = false) String nowPage3,
				            @RequestParam(value = "cntPerPage3", required = false) String cntPerPage3,
				            @RequestParam(value = "nowPage4", required = false) String nowPage4,
				            @RequestParam(value = "cntPerPage4", required = false) String cntPerPage4,
							@RequestParam(value = "nowPage5", required = false) String nowPage5,
							@RequestParam(value = "cntPerPage5", required = false) String cntPerPage5,
				            @RequestParam(value = "state", defaultValue = "1", required = false) String state){
		
		int state1 = Integer.parseInt(state);
		int memRptCnt = adminMemRptCountService.memRptCount();
		int memBlackCnt = adminMemBlackCountService.memBlackCount();
		int qRptCnt = adminQRptCountService.qRptCount();
		int bookStandByCnt = adminBookStandByCountService.adminBookStandByCount();
		int bizStandByCnt = adminBizStandByCountService.bizStandByCount();

        //멤버 신고 10개리스트
        if (nowPage1 == null && cntPerPage1 == null) {
            nowPage1 = "1";
            cntPerPage1 = "10";
        } else if (nowPage1 == null) {
            nowPage1 = "1";
        } else if (cntPerPage1 == null) {
            cntPerPage1 = "10";
        }
	
        PagingVO memRptPaging = new PagingVO(memRptCnt,Integer.parseInt(nowPage1),Integer.parseInt(cntPerPage1));
        List<CommonMemberVO> memRptlist = adminMemberRptListService.memRptList(memRptPaging);
        model.addAttribute("memRptPaging",memRptPaging);
        model.addAttribute("memRptList",memRptlist);
        /******************/
        
        
        //블랙리스트
        if (nowPage2 == null && cntPerPage2 == null) {
            nowPage2 = "1";
            cntPerPage2 = "10";
        } else if (nowPage2 == null) {
            nowPage2 = "1";
        } else if (cntPerPage2 == null) {
            cntPerPage2 = "10";
        }

        PagingVO memBlackPaging = new PagingVO(memBlackCnt,Integer.parseInt(nowPage2),Integer.parseInt(cntPerPage2));
        System.out.println("start,end:"+ memBlackPaging.toString());
        model.addAttribute("memBlackPaging",memBlackPaging);
        List<CommonMemberVO> memBlackList = adminMemberBlackListService.memBlackList(memBlackPaging);
        model.addAttribute("memBlackList",memBlackList);
        /******************/
        
        
        //신고10개넘은 글 리스트
        if (nowPage3 == null && cntPerPage3 == null) {
            nowPage3 = "1";
            cntPerPage3 = "10";
        } else if (nowPage3 == null) {
            nowPage3 = "1";
        } else if (cntPerPage3 == null) {
            cntPerPage3 = "10";
        }
        
        PagingVO qRptPaging = new PagingVO(qRptCnt,Integer.parseInt(nowPage3),Integer.parseInt(cntPerPage3));
        model.addAttribute("qRptPaging",qRptPaging);
        List<QboardVO> qRptList = adminQRptListService.qRptList(qRptPaging);
        model.addAttribute("qRptList",qRptList);
        /********************/
        
        
        //승인대기 글 리스트
        if (nowPage4 == null && cntPerPage4 == null) {
            nowPage4 = "1";
            cntPerPage4 = "10";
        } else if (nowPage4 == null) {
            nowPage4 = "1";
        } else if (cntPerPage4 == null) {
            cntPerPage4 = "10";
        }        
        
        PagingVO bookStandByPaging = new PagingVO(bookStandByCnt,Integer.parseInt(nowPage4),Integer.parseInt(cntPerPage4));
        model.addAttribute("bookStandByPaging",bookStandByPaging);
        List<QboardVO> bookStandByList = adminBookStandByListService.bookStandByList(bookStandByPaging); 
        model.addAttribute("bookStandByList",bookStandByList);

        //승인 대기중 기업회원 리스트
		if(nowPage5 == null && cntPerPage5 == null){
			nowPage5 = "1";
			cntPerPage5 = "10";
		}else if(nowPage5 == null){
			nowPage5="1";
		}else if(cntPerPage5==null){
			cntPerPage5 = "10";
		}
		PagingVO bizPaging = new PagingVO(bizStandByCnt,Integer.parseInt(nowPage5),Integer.parseInt(cntPerPage5));
		model.addAttribute("bizPaging",bizPaging);
		List<BusinessMemberVO> bizList = adminBizStandByListService.bizStandByList(bizPaging);
		model.addAttribute("bizList",bizList);
        
        if (state1 == 1){
            model.addAttribute("active1", "active");
            model.addAttribute("show1", "active show");
        } else if(state1 == 2){
            model.addAttribute("active2", "active");
            model.addAttribute("show2", "active show");
        } else if(state1 == 3){
            model.addAttribute("active3", "active");
            model.addAttribute("show3", "active show");
        } else if(state1 == 4){
			model.addAttribute("active4", "active");
			model.addAttribute("show4", "active show");
		} else if(state1 == 5){
			model.addAttribute("active5", "active");
			model.addAttribute("show5", "active show");
		}

        model.addAttribute("main","admin/adminMain");
        return "template";
    }

	/*
	// 신고 10개넘은애들 리스트
	@RequestMapping("/memRptList.ad")
	public String memRptList(Model model) {
		List<CommonMemberVO> list = adminMemberRptListService.memRptList();
		model.addAttribute("list", list);
		model.addAttribute("main", "admin/TestMemRptList");
		return "template";
	}
    */
	// 제재 액션
	@RequestMapping("/memBlackAction.ad")
	public String memBlackAction(@RequestParam("memNo") int mem_no) {
		adminMemberBlackAction.memBlackAction(mem_no);
		return "redirect:/adminMain.ad?state=2";
	}
	// 신고 10개 넘은 게시판 삭제 액션
	@RequestMapping("/qDeleteAction.ad")
	public String qDeleteAction(@RequestParam("qNo") int qNo) {
		adminQDeleteActionService.qDeleteAction(qNo);
		return "redirect:/adminMain.ad?state=3";
	}
	
	// 책스크랩 추가
	@RequestMapping("/bookAddAction.ad")
	public String bookaddAction(@RequestParam("qNo") int q_no, @RequestParam("caNo") int ca_no,
			@RequestParam("subCa") int sub_ca_no, @RequestParam("bookCaNo") int book_ca_no, Model model) {
		adminBookAddActionService.bookAddActionService(q_no, ca_no, sub_ca_no, book_ca_no);
		return "redirect:/adminMain.ad?state=4";
	}
	//기업회원 승인
	@RequestMapping("bizStateUpdate.ad")
	public String bizStateUpdate(@RequestParam String biz_no){
		adminBizStateUpdateService.bizStateUpdate(biz_no);
		return "redirect:/adminMain.ad?state=5";
	}

	/*
	// 블랙 리스트
	@RequestMapping("/memBlackList.ad")
	public String memBlackList(Model model) {
		List<CommonMemberVO> list = adminMemberBlackListService.memBlackList();
		model.addAttribute("list", list);
		model.addAttribute("main", "admin/TestMemBlackList");
		return "template";
	}

	// 신고 10개넘은 게시판 리스트
	@RequestMapping("/qRptList.ad")
	public String qRptList(Model model) {
		List<QboardVO> list = adminQRptListService.qRptList();
		model.addAttribute("list", list);
		model.addAttribute("main", "admin/TestQRptList");
		return "template";
	}


	 */

	/*
	// 책스크랩 신청 목록
	@RequestMapping("/bookStandByList.ad")
	public String bookStandByList(Model model) {
		List<QboardVO> list = adminBookStandByListService.bookStandByList();
		model.addAttribute("list", list);
		model.addAttribute("main", "admin/TestBookStandByList");
		return "template";
	}
	// 카테고리관리(메인)
	@RequestMapping("/caManegementMain.ad")
	public String caManegementMain(Model model) {
		List<CategoryVO> list = adminCaListService.caList();
		model.addAttribute("list", list);
		model.addAttribute("main", "admin/TestCaManegementMain");
		return "template";
	}

	// 서브카테고리관리리스트
	@RequestMapping("/subCaList.ad")
	public String subCaList(Model model, @RequestParam("ca_no") int ca_no) {
		List<CategoryVO> list = adminSubCaListService.subCaList(ca_no);
		model.addAttribute("list", list);
		model.addAttribute("main", "admin/TestSubCaList");
		return "template";
	}

	// 책카테고리리스트
	@RequestMapping("/bookCaList.ad")
	public String bookCaList(Model model, @RequestParam("subCa") int subCa) {
		List<CategoryVO> list = adminBookCaListService.bookCaList(subCa);

		model.addAttribute("list", list);
		model.addAttribute("main", "admin/TestBookCaList");
		return "template";
	}

	// 책카테고리수정폼
	@RequestMapping("/bookCaNameUpdateForm.ad")
	public String bookCaNameUpdateForm(Model model, @RequestParam("book_ca_no") int book_ca_no) {

		CategoryVO categoryVO = adminBookCaNameUpdateFormService.bookCaNameUpdateForm(book_ca_no);
		model.addAttribute("categoryVO", categoryVO);
		model.addAttribute("main", "admin/TestBookCaNameUpdateForm");
		;

		return "template";
	}

	// 책카테고리 수정액션
	@RequestMapping("bookCaNameUpdateAction.ad")
	public String bookCaNameUpdateAction(@RequestParam("book_ca_name") String book_ca_name,
			@RequestParam("book_ca_no") int book_ca_no) {
		adminBookCaNameUpdateActionService.bookCaNameUpdateAction(book_ca_no, book_ca_name);

		return "redirect:/adminMain.ad";
	}

	// 심심해서만들어본 관리자 명성 수정폼
	@RequestMapping("adminExpUpdateForm.ad")
	public String adminExpUpdateForm(Model model, CommonMemberVO memVO) {

		memVO = adminExpUpdateFormService.adminExpUpdateForm();
		model.addAttribute("admin", memVO);
		model.addAttribute("main", "admin/TestAdminExpUpdateForm");
		return "template";
	}

	// 심심해서만들어본 관리자 명성 수정액션
	@RequestMapping("adminExpUpdateAction.ad")
	public String adminExpUpdateAction(@RequestParam("mem_exp") int mem_exp) {
		adminExpUpdateActionService.adminExpUpdateAction(mem_exp);
		return "redirect:/adminExpUpdateForm.ad";
	}
	*/
}

