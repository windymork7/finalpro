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
<!-- 부트스트랩 css 추가 -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- 해외 부트스트랩 js -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
        crossorigin="anonymous"></script>
<body>

<div id="commentListForm"></div>


<input type="hidden" id="qboardNum" value="${param.qboardNum}">
<input type="hidden" id="memNo" value="${param.memNo}">
<input type="hidden" id="subCa" value="${param.subCa}">
<input type="hidden" id="sessionNick" value="${sessionScope.userNick}">
<input type="hidden" id="sessionNo" value="${sessionScope.userNo}">
</body>
<script>
    $(document).ready(function(){
        getCommentList();
    });

    function getCommentList(){

        var qboardNum = $("#qboardNum").val();
        var subCa = $("#subCa").val();
        var sessionNick = $("#sessionNick").val();
        var sessionNo = $("#sessionNo").val();
        var qMemNo = $("#memNo").val();



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

                            console.log(data[i]);


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
                            if(data[i].reply_pick == 0){
                                html += "                <button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"채택\" onclick='location.href=\"/replyPick.bo?replyNum="+data[i].reply_no+"&qMemNo="+qMemNo+"&subCa="+subCa+"&qboardNum="+qboardNum+"\"'>\n" +
                                "                    <i class=\"fa fa-check\" aria-hidden=\"true\"></i>\n" +
                                "                </button>\n";
                            } else if(data[i].reply_pick == 1){
                                html += "                <button type=\"button\" class=\"btn btn-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"채택\" onclick='location.href=\"/replyPick.bo?replyNum="+data[i].reply_no+"&qMemNo="+qMemNo+"&qboardNum="+qboardNum+"&subCa="+subCa+"\"'>\n" +
                                "                    <i class=\"fa fa-check\" aria-hidden=\"true\"></i>\n" +
                                "                </button>\n";
                            } else if(data[i].reply_pick == -1){}
                            html += "                <button type=\"button\" class=\"btn btn-outline-primary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"신고\">\n" +
                            "                    <i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>\n" +
                            "                </button>\n" +
                            "            </div>\n" +
                            "            &nbsp;\n" +
                            "            &nbsp;\n" +
                            "            <textarea class=\"form-control\" rows=\"8\" id=\"reply_text\" readonly>\n" +
                            "                "+ data[i].reply_content+"\n" +
                            "\t\t</textarea>\n" +
                            "        </div>\n" +
                            "    </div>\n" +
                            "</div>" +
                            "<br>";

                        $("#commentListForm").html(html);
                    }
                },
                error : function(request, status, error)
                {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }

            });

    }
</script>
</html>