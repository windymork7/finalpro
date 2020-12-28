<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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

    .fa-pencil-square{
        color:#ffce67;
    }

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
    .nav-tabs {
        color: #5a5a5a;
        border-bottom: 1px solid #eceeef;
    }

    .nav-tabs .nav-item {
        color: #5a5a5a;
        margin-bottom: -1px;
    }

    .nav-tabs .nav-link {
        color: #5a5a5a;
        border: 1px solid transparent;
        border-top-left-radius: 0.4rem;
        border-top-right-radius: 0.4rem;
    }

    .nav-tabs .nav-link:hover, .nav-tabs .nav-link:focus {
        color: #78c2ad;
        border-color: #f7f7f9 #f7f7f9 #eceeef;
    }

    .nav-tabs .nav-link.active, .nav-tabs .nav-item.show .nav-link {
        color: #78c2ad;
        background-color: #fff;
        border-color: #eceeef #eceeef #fff;
    }

    #sidebox { position:absolute; }
	
	</style>
</head>
<body>

    <c:set var="length" value="${fn:length(qBoardVO.q_file)}"/>
    <c:set var="q_file3" value="${fn:substring(qBoardVO.q_file, length-3, length)}"/>
    <c:set var="q_file4" value="${fn:substring(qBoardVO.q_file, length-4, length)}"/>


   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
			  <fieldset>
                  <div>
                     <div id="c_left">
<%--                        <a href="/qboardListForm.bo?subCa=${qBoardVO.sub_ca_no}"><legend>${qBoardVO.sub_ca_name}</legend></a>--%>
                        <a href="#" onclick="location.href='/qboardListForm.bo?subCa=${qBoardVO.sub_ca_no}'"><legend>${qBoardVO.sub_ca_name}</legend></a>
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
                          <c:choose>
                              <c:when test="${qBoardVO.grade_no eq 1}">
                                  <span class="badge badge-light"></span>
                                  <div class="text-muted">
                                      <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${qBoardVO.mem_nick}</i>
                                  </div></h6>
                              </c:when>
                              <c:when test="${qBoardVO.grade_no eq 2}">
                                  <span class="badge badge-warning"></span>
                                  <div class="text-warning">
                                      <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${qBoardVO.mem_nick}</i>
                                  </div></h6>
                              </c:when>
                              <c:when test="${qBoardVO.grade_no eq 3}">
                                  <span class="badge badge-primary"></span>
                                  <div class="text-primary">
                                      <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${qBoardVO.mem_nick}</i>
                                  </div></h6>
                              </c:when>
                              <c:when test="${qBoardVO.grade_no eq 4}">
                                  <span class="badge badge-secondary"></span>
                                  <div class="text-secondary">
                                      <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${qBoardVO.mem_nick}</i>
                                  </div></h6>
                              </c:when>
                              <c:when test="${qBoardVO.grade_no eq 5}">
                                  <span class="badge badge-danger"></span>
                                  <div class="text-danger">
                                      <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${qBoardVO.mem_nick}</i>
                                  </div></h6>
                              </c:when>
                          </c:choose>
					    <p class="card-text">
					    <br><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
					    ${qBoardVO.book_ca_name}</p>
					  </div>
					  <div class="card-body">
					    <div class="card-text" id="question-text">
                        <c:if test="${not empty qBoardVO.q_file}">
<%--                            <a href="${pageContext.request.contextPath}/upload/${qBoardVO.q_file}">${qBoardVO.q_file}</a>--%>
                            <c:if test="${q_file3 == 'jpg' || q_file3 == 'gif' || q_file3 == 'png' || q_file4 == 'jpeg'}">
                                <a href="${pageContext.request.contextPath}/upload/${qBoardVO.q_file}"><img src="upload/${qBoardVO.q_file}" width="65%"></a><br><br>
                            </c:if>
                        </c:if>

					    <textarea class="form-control" rows="20" readonly>${qBoardVO.q_content}</textarea>
						<br>
						<div id="q_right">
                        <c:if test="${qBoardVO.q_admin_state > 0 && qBoardVO.q_admin_state < 4}">
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="신청" onclick="location.href='bookAddAction.bo?qboardNum=${qBoardVO.q_no}&subCa=${qBoardVO.sub_ca_no}'">
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

                  <div id="editAddContentComplete"></div>

                  <div style="height: 20px"></div>
                  <hr class="my-4">


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
          <div class="col-sm-1 offset-sm-2">
              <div id="sidebox">
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <p><i class="fa fa-chevron-up fa-2x text-primary" aria-hidden="true" id="topBtn"></i></p>
                  <p><i class="fa fa-chevron-down fa-2x text-primary" aria-hidden="true" id="bottomBtn"></i></p>
              </div>
          </div>
      </div>
         
         
      </div>
   </div>

<script>
	var html = "";
	$(function () {
	    $('[data-toggle="tooltip"]').tooltip();
	  })

    $(document).ready(function(){
        editList();
    });

	function editAddContent(){
		html = "";

		if (${sessionScope.userGrade} >= 3){

			html += "<div class=\"card\">\n" +
					"\t  <div class=\"card-header\">\n" +
					"\t  ${sessionScope.userNick}\n" +
					"\t  </div>\n" +
					"\t  <div class=\"card-body\">\n" +
					"\t    <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +
					"\t   <textarea id='editText' name='edit_reply_content' class=\"form-control\" rows=\"8\" id=\"reply_text\">\n" +
					"</textarea>\n" +
					"\t   </div><br>\n" +
					"<button type='button' class='btn btn-primary' onclick='editAddContentInsert()'>전송</button>\n"+
					"<button type='reset' class='btn btn-secondary'>취소</button>\n"+
					"\t  </div>\n" +
					"\t</div>" +
                    "<br>";

			$("#editAddContentForm").html(html);

		}
	}


    function editList(){

        var html = "";

        $.ajax(
            {
                type : 'GET',
                url : "/editList.bo",
                dataType : "json",
                data : {
                    "q_no" : ${qBoardVO.q_no},
                },
                contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                success : function(data)
                {
                    // alert(data);


                    for (var i = 0; i < data.length; i++) {
                        html += "<div class=\"card\">\n" +
                            "\t  <div class=\"card-header\">\n" +
                            "\t<i class=\"fa fa-pencil-square fa-lg\" aria-hidden=\"true\"></i>\n" +
                            "\t  "+ data[i].mem_nick +"\n" +
                            "\t  </div>\n" +
                            "\t  <div class=\"card-body\">\n" +
                            "\t    <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +
                            "\t   <textarea class=\"form-control\" rows=\"8\" id=\"reply_text\" readonly>"+ data[i].edit_reply_content +"\n" +
                            "\t\t</textarea>\n" +
                            "\t   </div>\n" +
                            "\t  </div>\n" +
                            "\t</div>" +
                            "<br>";

                        $("#editAddContentComplete").html(html);

                    }


                },
                error : function(request, status, error)
                {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }

            });
    }

	function editAddContentInsert(){

	    var editText = $("#editText").val();
	    var html = "";

        $.ajax(
            {
                type : 'GET',
                url : "/editInput.bo",
                data : {
                    "q_no" : ${qBoardVO.q_no},
                    "mem_no" : ${sessionScope.userNo},
                    "reply_Edit_Content" : editText
                },
                contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                success : function()
                {
                    alert("에디터 글이 등록되었습니다.");
                    $("#editAddContentForm").html(html);
                    editList();

                },
                error : function(request, status, error)
                {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }

            });


	    <%--html += "<div class=\"card\">\n" +--%>
        <%--        "\t  <div class=\"card-header\">\n" +--%>
        <%--        "\t  ${sessionScope.userNick} (로고)\n" +--%>
        <%--        "\t  </div>\n" +--%>
        <%--        "\t  <div class=\"card-body\">\n" +--%>
        <%--        "\t    <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +--%>
        <%--        "\t   <textarea class=\"form-control\" rows=\"8\" id=\"reply_text\">"+ editText +"\n" +--%>
        <%--        "\t\t</textarea>\n" +--%>
        <%--        "\t   </div>\n" +--%>
        <%--        "\t  </div>\n" +--%>
        <%--        "\t</div>";--%>


        // $("#editAddContentComplete").html(html);

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

    $(window).scroll(function(){
        var scrollTop = $(document).scrollTop();
        if (scrollTop < 230) {
            scrollTop = 230;
        }
        $("#sidebox").stop();
        $("#sidebox").animate( { "top" : scrollTop });
    });

    var topEle = $('#topBtn');
    var delay = 1000;
    topEle.on('click', function() {
        $('html, body').stop().animate({scrollTop: 0}, delay);
    });

    var topEle = $('#bottomBtn');
    var delay = 1000;
    topEle.on('click', function() {
        $("html, body").animate({ scrollTop: $(document).height() }, delay);
    });

</script>



</body>
</html>