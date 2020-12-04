<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>reply_write</title>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="https://use.fontawesome.com/b490e94c82.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


	<style>
	#c_left {
	   float: left;
	}
	
	#c_right {
	   float: right;
	}
	
	#q_right{
		float: right;
	}
	
	.fa-quora{
		color:#78c2ad
	}
	
	.card-title{
		margin-bottom: 0rem;
	}
	
	#question-text{
		font-size: 1.2em;
	}
	
	small{
		color:#78c2ad;
	}
	
	a {
		color: #fff;
		text-decoration: none;
		background-color: transparent;
	}
		
	a:hover {
		color: #fff;
		text-decoration: none;
	}
	
	</style>
</head>
<body>



   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
			  <fieldset>
                  <div>
                     <div id="c_left">
                        <legend>${qBoardVO.sub_ca_name}</legend>
                     </div>
                     <div id="c_right">
                     <a href="#">
                        <button type="button" class="btn btn-primary" onclick="location.href='/replyWriteForm.bo?qboardNum=${qBoardVO.q_no}&subCa=${qBoardVO.sub_ca_no}'">답변하기</button>
                     </a>
                        <button type="button" class="btn btn-info" data-toggle="tooltip" data-placement="top" title="추천" onclick="location.href='/qboardUpCheck.bo?qboardNum=${qBoardVO.q_no}&subCa=${qBoardVO.sub_ca_no}'">
						  <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
						</button>
						<span data-toggle="modal" data-target="#Modal_1">
                        <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="신고">
						  <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
						</button>
						</span>
                     </div>
                  </div>
                  <br>
                  
                  <hr class="my-4">
					<div class="card bg-light mb-3">
					  <div class="card-header">
					  <div class="d-flex w-100 justify-content-between">
					  	<h4 class="card-title">
					  		<i class="fa fa-quora" aria-hidden="true"></i>
					  		${qBoardVO.q_title}
					  	</h4>
					  	<small>
					    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
					    	${qBoardVO.q_up}
					    </small>
					    </div>
					    <h6 class="card-subtitle mb-2 text-muted text-right">${qBoardVO.q_date}</h6>
					    <h6 class="card-subtitle mb-2">${qBoardVO.mem_nick}</h6>
					    <p class="card-text">
					    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
					    ${qBoardVO.book_ca_name}</p>
					  </div>
					  <div class="card-body">
					    <div class="card-text" id="question-text">
					    <textarea class="form-control" rows="20" readonly>
							${qBoardVO.q_content}


<%--진로를 컴퓨터 프로그래머쪽으로 가고싶은 고1입니다.--%>
<%--가고 싶은 분야는 앱, 웹쪽으로 가고 싶고--%>
<%--선호하는 언어는 앱, 웹쪽이니까 Java 입니다.--%>
<%--제가 온라인 강의로 통해서 언어를 배우고 싶습니다만--%>
<%--저희 집에는 컴퓨터는 없고, 노트북 한대 있습니다.--%>
<%--노트북이 좋은 것도 아니고 가끔씩 인터넷만 켜도 렉걸리는 노트북인데, 심하게 걸리는건 아주 가끔이라서 쓸만 합니다.(모델명 : 노트북 컴퓨터 LGR58)--%>
<%--저는 이 노트북으로 언어를 배우는 시도조차 못할 것을 인지하고 부모님에게 설득을 하면서 컴퓨터 하나 사달라고 했는데, 지금 이 노트북으로 할 수 있으면서 왜 컴퓨터를 살려고 하니 등...전혀 설득이 되지 않습니다.--%>
<%--이 부분에 대해서 알려주시면 감사하겠습니다.--%>
						</textarea>
						<br>
						<div id="q_right">
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="신청">
						  <i class="fa fa-book" aria-hidden="true"></i>
						</button>
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="편집" onclick="editAddContent()">
						  <i class="fa fa-pencil" aria-hidden="true"></i>
						</button>
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="스크랩">
						  <i class="fa fa-bookmark-o" aria-hidden="true"></i>
						</button>
						</div>
					    </div>
					  </div>
					</div>
					
			<!-- Modal -->
               <div class="modal fade" id="Modal_1" tabindex="-1"
                  aria-labelledby="ModalLabel_1" aria-hidden="true">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="ModalLabel_1">신고 사유를 선택하세요.</h5>
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">
                          <div class="form-group">
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
      <label class="custom-control-label" for="customRadio1">신고 사유 1</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
      <label class="custom-control-label" for="customRadio2">신고 사유 2</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
      <label class="custom-control-label" for="customRadio3">신고 사유 3</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
      <label class="custom-control-label" for="customRadio3">신고 사유 4</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
      <label class="custom-control-label" for="customRadio3">신고 사유 5</label>
    </div>
  </div>
                        </div>
                        <div class="modal-footer">
                           <button type="submit" class="btn btn-primary" data-dismiss="modal">전송</button>
                           <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                        </div>
                     </div>
                  </div>
               </div>
				  <div id="editAddContentForm"></div>
				<hr class="my-4">

	<c:import url="board/comment.jsp">
        <c:param name="qboardNum" value="${qBoardVO.q_no}"/>
        <c:param name="subCa" value="${qBoardVO.sub_ca_no}"/>
    </c:import>
	<br>
				
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				
            	</fieldset>
         </div>
         
         
         
      </div>
   </div>

<script>
	var html = "";
	$(function () {
	    $('[data-toggle="tooltip"]').tooltip();
	  })

	function editAddContent(){
		html = "";

		if (${sessionScope.userGrade} >= 5){

			html += "<div class=\"card\">\n" +
					"\t  <div class=\"card-header\">\n" +
					"\t  ${sessionScope.userNick} (로고)\n" +
					"\t  </div>\n" +
					"\t  <div class=\"card-body\">\n" +
					"\t    <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +
					// "\t    \t<div class=\"btn-group-vertical\">\n" +
					// "\t\t\t<button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"추천\">\n" +
					// "\t\t\t\t<i class=\"fa fa-thumbs-o-up\" aria-hidden=\"true\"></i>\n" +
					// "\t\t\t\t20\n" +
					// "\t\t\t</button>\n" +
					// "\t\t\t<button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"채택\">\n" +
					// "\t\t\t\t<i class=\"fa fa-check\" aria-hidden=\"true\"></i>\n" +
					// "\t\t\t</button>\n" +
					// "\t\t\t<button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"신고\">\n" +
					// "\t\t\t\t<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>\n" +
					// "\t\t\t</button>\n" +
					// "\t\t</div>\n" +
					// "\t\t&nbsp;\n" +
					// "\t\t&nbsp;\n" +
					"\t   <textarea class=\"form-control\" rows=\"8\" id=\"reply_text\">\n" +
					"\t\t</textarea>\n" +
					"\t   </div>\n" +
					"<button type='button' class='btn btn-success' onclick='location.href=\"/loginForm.me\"'>전송</button>\n"+
					"<button type='reset' class='btn btn-danger'>취소</button>\n"+
					"\t  </div>\n" +
					"\t</div>";


			$("#editAddContentForm").html(html);

		}
	}
</script>

</body>
</html>