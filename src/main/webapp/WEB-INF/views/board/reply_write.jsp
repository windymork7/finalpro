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
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
<%--	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>


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
                        <a href="/qboardListForm.bo?subCa=${qBoardVO.sub_ca_no}"><legend>${qBoardVO.sub_ca_name}</legend></a>
                     </div>
                     <div id="c_right">
                         <c:choose>
                             <c:when test="${empty sessionScope.userNo}"></c:when>
                             <c:when test="${sessionScope.userNo ne qBoardVO.mem_no}">
                                 <c:if test="${qBoardVO.reply_pick == 0}">
                                     <button type="button" class="btn btn-primary" onclick="location.href='/replyWriteForm.bo?qboardNum=${qBoardVO.q_no}&subCa=${qBoardVO.sub_ca_no}'">답변하기</button>
                                 </c:if>
                                 <button type="button" class="btn btn-info" data-toggle="tooltip" data-placement="top" title="추천" onclick="location.href='/qboardUpCheck.bo?qboardNum=${qBoardVO.q_no}&subCa=${qBoardVO.sub_ca_no}'">
                                     <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                 </button>
                                 <span data-toggle="modal" data-target="#Modal_1">
                                <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="신고" >
                                  <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                                </button>
                                </span>
                             </c:when>
                             <c:when test="${sessionScope.userNo eq qBoardVO.mem_no}">
                                <span data-toggle="modal" data-target="#Modal_2">
                                <c:if test="${qBoardVO.reply_pick == 0 && qBoardVO.q_sos == 0}">
                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="현상금 걸기">
                                    <i class="fa fa-krw" aria-hidden="true"></i>
                                </button>
                                </c:if>
                                </span>
                             </c:when>
                         </c:choose>
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
					    <textarea class="form-control" rows="20" readonly>${qBoardVO.q_content}</textarea>
						<br>
						<div id="q_right">
                        <c:if test="${qBoardVO.q_admin_state > 0 && qBoardVO.q_admin_state < 4}">
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="신청">
						  <i class="fa fa-book" aria-hidden="true"></i>
						</button>
                        </c:if>
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="편집" onclick="editAddContent()">
						  <i class="fa fa-pencil" aria-hidden="true"></i>
						</button>
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="스크랩" onclick="location.href='/myscrapCheck.my?qboardNum=${qBoardVO.q_no}&subCa=${qBoardVO.sub_ca_no}'">
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
                        <form action="/qboardDownPopup.bo" method="post">
                            <div class="modal-body">
                                <div class="form-group">
                                <input type="hidden" name="qboardNum" value="${qBoardVO.q_no}">
                            <input type="hidden" name="subCa" value="${qBoardVO.sub_ca_no}">
                            <div class="custom-control custom-radio">
                              <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" value="1">
                              <label class="custom-control-label" for="customRadio1">주제에 맞지 않음</label>
                            </div>
                            <div class="custom-control custom-radio">
                              <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input" value="2">
                              <label class="custom-control-label" for="customRadio2">욕설</label>
                            </div>
                            <div class="custom-control custom-radio">
                              <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input" value="3">
                              <label class="custom-control-label" for="customRadio3">광고</label>
                            </div>
                            <div class="custom-control custom-radio">
                              <input type="radio" id="customRadio4" name="customRadio" class="custom-control-input" value="4">
                              <label class="custom-control-label" for="customRadio4">사칭</label>
                            </div>

                            </div>
                            </div>
                            <div class="modal-footer">
                               <button type="submit" class="btn btn-primary">전송</button>
                               <button type="button" class="btn btn-secondary">닫기</button>
                            </div>
                        </form>
                     </div>
                  </div>
               </div>
                  <div class="modal fade" id="Modal_2" tabindex="-1"
                       aria-labelledby="ModalLabel_2" aria-hidden="true">
                      <div class="modal-dialog">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <h5 class="modal-title" id="ModalLabel_2">현상금 얼마를 거시겠습니까?</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                  </button>
                              </div>
                              <div class="modal-body">
                                  <div class="form-group">
                                      <label class="col-form-label col-form-label-lg" for="inputLarge">EXP</label>
                                      <form action="/qboardExpUpdate.bo?qboardNum=${qBoardVO.q_no}&subCa=${qBoardVO.sub_ca_no}" method="post" id="ExpForm">
                                        <input class="form-control form-control-lg" type="text" id="inputLarge" name="mem_exp">
                                      </form>
                                  </div>
                              </div>
                              <div class="modal-footer">
                                  <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="expInput()">걸기</button>
                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                              </div>
                          </div>
                      </div>
                  </div>
				  <div id="editAddContentForm"></div>
				<hr class="my-4">

                  <div id="editAddContentComplete"></div>

	<c:import url="board/comment.jsp">
        <c:param name="qboardNum" value="${qBoardVO.q_no}"/>
        <c:param name="memNo" value="${qBoardVO.mem_no}"/>
        <c:param name="subCa" value="${qBoardVO.sub_ca_no}"/>
        <c:param name="userNick" value="${sessionScope.userNick}"/>
        <c:param name="userNo" value="${sessionScope.userNo}"/>
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

		if (${sessionScope.userGrade} >= 3){

			html += "<div class=\"card\">\n" +
					"\t  <div class=\"card-header\">\n" +
					"\t  ${sessionScope.userNick} (로고)\n" +
					"\t  </div>\n" +
					"\t  <div class=\"card-body\">\n" +
					"\t    <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +
					"\t   <textarea id='editText' class=\"form-control\" rows=\"8\" id=\"reply_text\">\n" +
					"\t\t</textarea>\n" +
					"\t   </div>\n" +
					"<button type='button' class='btn btn-success' onclick='editAddContentComplete()'>전송</button>\n"+
					"<button type='reset' class='btn btn-danger'>취소</button>\n"+
					"\t  </div>\n" +
					"\t</div>";


			$("#editAddContentForm").html(html);

		}
	}

	function editAddContentComplete(){

	    var editText = $("#editText").val();
	    var html = "";

	    html += "<div class=\"card\">\n" +
                "\t  <div class=\"card-header\">\n" +
                "\t  ${sessionScope.userNick} (로고)\n" +
                "\t  </div>\n" +
                "\t  <div class=\"card-body\">\n" +
                "\t    <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +
                "\t   <textarea class=\"form-control\" rows=\"8\" id=\"reply_text\">"+ editText +"\n" +
                "\t\t</textarea>\n" +
                "\t   </div>\n" +
                "\t  </div>\n" +
                "\t</div>";

        $("#editAddContentComplete").html(html);

        html = "";
        $("#editAddContentForm").html(html);


    }


	function expInput(){
	    var exp = $("#inputLarge").val();


        $.ajax(
            {
                type : 'GET',
                url : "/qboardExpInput.bo",
                dataType : "json",
                contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                success : function(memExp)
                {
                    if (exp > memExp){
                        alert("회원님이 명성이 부족합니다.");
                        $("#inputLarge").val("0");
                    } else{
                        $("#ExpForm").submit();
                    }
                },
                error : function(request, status, error)
                {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }

            });
    }
</script>

</body>
</html>