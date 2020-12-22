<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>NULL</title>
</head>
<!-- 부트스트랩 css 추가 .-->
<link rel="stylesheet" href="css/bootstrap.css">
<style>
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
</style>
<!-- 해외 부트스트랩 js -->
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--<script--%>
<%--        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"--%>
<%--        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script--%>
<%--        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"--%>
<%--        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"--%>
<%--        crossorigin="anonymous"></script>--%>
<body>

<%--<button type="button" onclick="getCommentLateList()">최신순</button>--%>
<%--<button type="button" onclick="getCommentList()">인기순</button>--%>
<ul class="nav nav-tabs">
    <li class="nav-item ml-auto">
        <a class="nav-link active" data-toggle="tab" onclick="getCommentLateList()" href="#">최신순</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" data-toggle="tab" onclick="getCommentList()" href="#">인기순</a>
    </li>
</ul>
<br>
<div id="commentListForm"></div>


<input type="hidden" id="qboardNum" value="${param.qboardNum}">
<input type="hidden" id="memNo" value="${param.memNo}">
<input type="hidden" id="subCa" value="${param.subCa}">
<input type="hidden" id="sessionNick" value="${param.userNick}">
<input type="hidden" id="sessionNo" value="${param.userNo}">
</body>
<script>
    $(document).ready(function(){
        getCommentList();
    });

    function getCommentList(){

        var qboardNum = $("#qboardNum").val();
        var subCa = $("#subCa").val();
        var sessionNick = $("#sessionNick").val();
        var qMemNo = $("#memNo").val();
        var sessionNo = $("#sessionNo").val();



        console.log("처음 : "+sessionNick);

        $.ajax(
            {
                type : 'GET',
                url : "/replyList.bo",
                dataType : "json",
                data : {
                    "q_no" : qboardNum,
                },
                contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                success : function(data)
                {
                    // alert(data.length);
                    var html = "";


                    for (var i = 0; i < data.length; i++) {

                            console.log(data[i].reply_no);



                        html += "<div class=\"card\">\n" +
                            "    <div class=\"card-header\">\n" +
                            "        " + data[i].mem_nick +"\n" +
                            "    </div>\n" +
                            "    <div class=\"card-body\">\n" +
                            "        <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +
                            "            <div class=\"btn-group-vertical\">\n" +
                            "                <button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"추천\" onclick='location.href=\"/replyUpCheck.bo?replyNum="+data[i].reply_no+"&subCa="+subCa+"&qboardNum="+qboardNum+"\"'>\n" +
                            "                    <i class=\"fa fa-thumbs-o-up\" aria-hidden=\"true\"></i>\n" +
                            "                    "+ data[i].reply_up +"\n" +
                            "                </button>\n";
                            if(data[i].reply_pick == 0 && qMemNo == sessionNo){
                                html += "                <button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"채택\" onclick='location.href=\"/replyPick.bo?replyNum="+data[i].reply_no+"&qMemNo="+qMemNo+"&subCa="+subCa+"&qboardNum="+qboardNum+"\"'>\n" +
                                "                    <i class=\"fa fa-check\" aria-hidden=\"true\"></i>\n" +
                                "                </button>\n";
                            } else if(data[i].reply_pick == 1){
                                html += "                <button type=\"button\" class=\"btn btn-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"채택\" >\n" +
                                "                    <i class=\"fa fa-check\" aria-hidden=\"true\"></i>\n" +
                                "                </button>\n";
                            } else if(data[i].reply_pick !== -1){}
                            if(data[i].mem_nick != sessionNick){
                                html += "                <button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"신고\">\n" +
                                    "<span data-toggle=\"modal\" data-target=\"#Modal_0\">" +
                                    // "<span data-toggle=\"modal\" data-target=\"#et\">" +
                                    "                    <i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>\n" +
                                    "</span>" +
                                    "                </button>\n";
                            }
                            html += "            </div>\n" +
                            "            &nbsp;\n" +
                            "            &nbsp;\n" +
                            "            <textarea class=\"form-control\" rows=\"8\" id=\"reply_text\" readonly>\n" +
                            ""+ data[i].reply_content+"\n" +
                            "</textarea>\n" +
                            "        </div>\n" +
                            "    </div>\n" +
                            "</div>" +
                            "<br>" +
                            "<div class=\"modal fade\" id=\"Modal_3\" tabindex=\"-1\"\n" +
                            // "<div class=\"modal fade\" id=\"et\" tabindex=\"-1\"\n" +
                                "                  aria-labelledby=\"ModalLabel_3\" aria-hidden=\"true\">\n" +
                                "                  <div class=\"modal-dialog\">\n" +
                                "                     <div class=\"modal-content\">\n" +
                                "                        <div class=\"modal-header\">\n" +
                                "                           <h5 class=\"modal-title\" id=\"ModalLabel_1\">신고 사유를 선택하세요.</h5>\n" +
                                "                           <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n" +
                                "                              <span aria-hidden=\"true\">&times;</span>\n" +
                                "                           </button>\n" +
                                "                        </div>\n" +
                                "                        <form action=\"/replyDownPopup.bo\" method=\"post\">\n" +
                                "                            <div class=\"modal-body\">\n" +
                                "                                <div class=\"form-group\">\n" +
                                "                                <input type=\"hidden\" name=\"qboardNum\" value='"+ qboardNum +"'>\n" +
                                "                            <input type=\"hidden\" name=\"subCa\" value='"+ subCa+"'>\n" +
                                "                            <input type=\"hidden\" id=\"reply_no\" name=\"reply_no\" value='"+ data[i].reply_no+"'>\n" +
                                "                            <div class=\"custom-control custom-radio\">\n" +
                                "                              <input type=\"radio\" id=\"customRadio5\" name=\"customRadio\" class=\"custom-control-input\" value=\"1\">\n" +
                                "                              <label class=\"custom-control-label\" for=\"customRadio5\">주제에 맞지 않음</label>\n"+
                                "                            </div>\n" +
                                "                            <div class=\"custom-control custom-radio\">\n" +
                                "                              <input type=\"radio\" id=\"customRadio6\" name=\"customRadio\" class=\"custom-control-input\" value=\"2\">\n" +
                                "                              <label class=\"custom-control-label\" for=\"customRadio6\">욕설</label>\n" +
                                "                            </div>\n" +
                                "                            <div class=\"custom-control custom-radio\">\n" +
                                "                              <input type=\"radio\" id=\"customRadio7\" name=\"customRadio\" class=\"custom-control-input\" value=\"3\">\n" +
                                "                              <label class=\"custom-control-label\" for=\"customRadio7\">광고</label>\n" +
                                "                            </div>\n" +
                                "                            <div class=\"custom-control custom-radio\">\n" +
                                "                              <input type=\"radio\" id=\"customRadio8\" name=\"customRadio\" class=\"custom-control-input\" value=\"4\">\n" +
                                "                              <label class=\"custom-control-label\" for=\"customRadio8\">사칭</label>\n" +
                                "                            </div>\n" +
                                "\n" +
                                "                            </div>\n" +
                                "                            </div>\n" +
                                "                            <div class=\"modal-footer\">\n" +
                                "                               <button type=\"button\" onclick=\"formsub(" + i + ")\" class=\"btn btn-primary\">전송</button>\n" +
                                "                               <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">닫기</button>\n" +
                                "                            </div>\n" +
                                "                        </form>\n" +
                                "                     </div>\n" +
                                "                  </div>\n" +
                                "               </div>";


                        $("#commentListForm").html(html);
                    }
                },
                error : function(request, status, error)
                {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }

            });

    }

    function getCommentLateList(){

        var qboardNum = $("#qboardNum").val();
        var subCa = $("#subCa").val();
        var sessionNick = $("#sessionNick").val();
        var qMemNo = $("#memNo").val();
        var sessionNo = $("#sessionNo").val();



        console.log("처음 : "+sessionNick);

        $.ajax(
            {
                type : 'GET',
                url : "/replyLateList.bo",
                dataType : "json",
                data : {
                    "q_no" : qboardNum,
                },
                contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                success : function(data)
                {
                    // alert(data.length);
                    //alert(data);
                    var html = "";


                    for (var i = 0; i < data.length; i++) {

                        console.log(data[i].reply_no);



                        html += "<div class=\"card\">\n" +
                            "    <div class=\"card-header\">\n" +
                            "        " + data[i].mem_nick +"\n" +
                            "    </div>\n" +
                            "    <div class=\"card-body\">\n" +
                            "        <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +
                            "            <div class=\"btn-group-vertical\">\n" +
                            "                <button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"추천\" onclick='location.href=\"/replyUpCheck.bo?replyNum="+data[i].reply_no+"&subCa="+subCa+"&qboardNum="+qboardNum+"\"'>\n" +
                            "                    <i class=\"fa fa-thumbs-o-up\" aria-hidden=\"true\"></i>\n" +
                            "                    "+ data[i].reply_up +"\n" +
                            "                </button>\n";
                        if(data[i].reply_pick == 0 && qMemNo == sessionNo){
                            html += "                <button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"채택\" onclick='location.href=\"/replyPick.bo?replyNum="+data[i].reply_no+"&qMemNo="+qMemNo+"&subCa="+subCa+"&qboardNum="+qboardNum+"\"'>\n" +
                                "                    <i class=\"fa fa-check\" aria-hidden=\"true\"></i>\n" +
                                "                </button>\n";
                        } else if(data[i].reply_pick == 1){
                            html += "                <button type=\"button\" class=\"btn btn-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"채택\">\n" +
                                "                    <i class=\"fa fa-check\" aria-hidden=\"true\"></i>\n" +
                                "                </button>\n";
                        } else if(data[i].reply_pick !== -1){}
                        if(data[i].mem_nick != sessionNick){
                            html += "                <button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"신고\">\n" +
                                "<span data-toggle=\"modal\" data-target=\"#Modal_3\">" +
                                "                    <i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>\n" +
                                "</span>" +
                                "                </button>\n";
                        }
                        html += "            </div>\n" +
                            "            &nbsp;\n" +
                            "            &nbsp;\n" +
                            "            <textarea class=\"form-control\" rows=\"8\" id=\"reply_text\" readonly>\n" +
                            ""+ data[i].reply_content+"\n" +
                            "</textarea>\n" +
                            "        </div>\n" +
                            "    </div>\n" +
                            "</div>" +
                            "<br>" +
                            "<div class=\"modal fade\" id=\"Modal_3\" tabindex=\"-1\"\n" +
                            "                  aria-labelledby=\"ModalLabel_3\" aria-hidden=\"true\">\n" +
                            "                  <div class=\"modal-dialog\">\n" +
                            "                     <div class=\"modal-content\">\n" +
                            "                        <div class=\"modal-header\">\n" +
                            "                           <h5 class=\"modal-title\" id=\"ModalLabel_1\">신고 사유를 선택하세요.</h5>\n" +
                            "                           <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n" +
                            "                              <span aria-hidden=\"true\">&times;</span>\n" +
                            "                           </button>\n" +
                            "                        </div>\n" +
                            "                        <form action=\"/replyDownPopup.bo\" method=\"post\">\n" +
                            "                            <div class=\"modal-body\">\n" +
                            "                                <div class=\"form-group\">\n" +
                            "                                <input type=\"hidden\" name=\"qboardNum\" value='"+ qboardNum +"'>\n" +
                            "                            <input type=\"hidden\" name=\"subCa\" value='"+ subCa+"'>\n" +
                            "                            <input type=\"hidden\" name=\"reply_no\" value='"+ data[i].reply_no+"'>\n" +
                            "                            <div class=\"custom-control custom-radio\">\n" +
                            "                              <input type=\"radio\" id=\"customRadio5\" name=\"customRadio\" class=\"custom-control-input\" value=\"1\">\n" +
                            "                              <label class=\"custom-control-label\" for=\"customRadio5\">주제에 맞지 않음</label>\n" +
                            "                            </div>\n" +
                            "                            <div class=\"custom-control custom-radio\">\n" +
                            "                              <input type=\"radio\" id=\"customRadio6\" name=\"customRadio\" class=\"custom-control-input\" value=\"2\">\n" +
                            "                              <label class=\"custom-control-label\" for=\"customRadio6\">욕설</label>\n" +
                            "                            </div>\n" +
                            "                            <div class=\"custom-control custom-radio\">\n" +
                            "                              <input type=\"radio\" id=\"customRadio7\" name=\"customRadio\" class=\"custom-control-input\" value=\"3\">\n" +
                            "                              <label class=\"custom-control-label\" for=\"customRadio7\">광고</label>\n" +
                            "                            </div>\n" +
                            "                            <div class=\"custom-control custom-radio\">\n" +
                            "                              <input type=\"radio\" id=\"customRadio8\" name=\"customRadio\" class=\"custom-control-input\" value=\"4\">\n" +
                            "                              <label class=\"custom-control-label\" for=\"customRadio8\">사칭</label>\n" +
                            "                            </div>\n" +
                            "\n" +
                            "                            </div>\n" +
                            "                            </div>\n" +
                            "                            <div class=\"modal-footer\">\n" +
                            "                               <button type=\"submit\" class=\"btn btn-primary\">전송</button>\n" +
                            "                               <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">닫기</button>\n" +
                            "                            </div>\n" +
                            "                        </form>\n" +
                            "                     </div>\n" +
                            "                  </div>\n" +
                            "               </div>";

                        $("#commentListForm").html(html);
                    }
                },
                error : function(request, status, error)
                {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }

            });

    }

    function formsub(i){
        alert(i);
    }
</script>
</html>