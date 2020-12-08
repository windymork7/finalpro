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
    <title>dsq_J_board</title>
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
   
   #sidebox { position:absolute; }
   
   </style>
</head>
<body>

<br>
<br>
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
         <form>
           <fieldset>
                  <div>
                  <br>
                  <br>
                  <br>
                     <div id="c_left">
                        <legend>JAVA</legend>
                     </div>
                     <div id="c_right">
                     <a href="#">
                        <button type="button" class="btn btn-primary">답변하기</button>
                     </a>
                        <button type="button" class="btn btn-info" data-toggle="tooltip" data-placement="top" title="추천">
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
                       질문 제목이 들어갑니다.
                    </h4>
                    <small>
                   <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                      13
                   </small>
                   </div>
                   <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
                   <h6 class="card-subtitle mb-2">글쓴이ID</h6>
                   <p class="card-text">
                   <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                   1~5번 책 대분류 선택한 것</p>
                 </div>
                 <div class="card-body">
                   <div class="card-text" id="question-text">
                   <textarea class="form-control" rows="20" readonly>
진로를 컴퓨터 프로그래머쪽으로 가고싶은 고1입니다.
가고 싶은 분야는 앱, 웹쪽으로 가고 싶고
선호하는 언어는 앱, 웹쪽이니까 Java 입니다.
제가 온라인 강의로 통해서 언어를 배우고 싶습니다만
저희 집에는 컴퓨터는 없고, 노트북 한대 있습니다.
노트북이 좋은 것도 아니고 가끔씩 인터넷만 켜도 렉걸리는 노트북인데, 심하게 걸리는건 아주 가끔이라서 쓸만 합니다.(모델명 : 노트북 컴퓨터 LGR58)
저는 이 노트북으로 언어를 배우는 시도조차 못할 것을 인지하고 부모님에게 설득을 하면서 컴퓨터 하나 사달라고 했는데, 지금 이 노트북으로 할 수 있으면서 왜 컴퓨터를 살려고 하니 등...전혀 설득이 되지 않습니다.
이 부분에 대해서 알려주시면 감사하겠습니다.
                  </textarea>
                  <br>
                  <div id="q_right">
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="신청">
                    <i class="fa fa-book" aria-hidden="true"></i>
                  </button>
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="편집">
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
               
               <div class="modal fade" id="Modal_3" tabindex="-1"
                  aria-labelledby="ModalLabel_3" aria-hidden="true">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="ModalLabel_3">신고 사유를 선택하세요.</h5>
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
               
               
            <div>
                <span>
                   <i class="fa fa-pencil" aria-hidden="true"></i>
                   에디터's Comments
                </span>
                <button type="submit" class="btn pull-right btn-secondary">등록</button>
            </div>
            <div>
            <br>
                <table class="table">                    
                    <tr>
                        <td>
                            <textarea class="form-control" rows="3" id="edit"></textarea>
                        </td>
                    </tr>
                </table>
            </div>
    
    <form id="editListForm">
        <div id="commentList">
        </div>
    </form>
            
   <hr class="my-4">
            
   <div class="card">
     <div class="card-header">
     아이디1 (로고)
     </div>
     <div class="card-body">
       <div class="card-text d-flex justify-content-between align-items-center">
          <div class="btn-group-vertical">
         <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="추천">
            <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
            20
         </button>
         <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="채택">
            <i class="fa fa-check" aria-hidden="true"></i>
         </button>
         <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="신고">
         <span data-toggle="modal" data-target="#Modal_3">
            <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
         </span>
         </button>
      </div>
      &nbsp;
      &nbsp;
      <textarea class="form-control" rows="8" id="reply_text" readonly>
채택 안 했을 때(질문자에게 이렇게 보임)
   
인터넷만 켜도 렉 걸리는정도면 새로 맞추시는게 좋습니다.
요즘은 장비가 비싸지 않아서 저렴하게 맞출수 있고공부하는 모습을 보여주시면서 설득을 하셔야할것 같습니다.
독학을 고려하신다면 꼭 바꾸시는게 맞습니다
부족하지만 도움이 되셨기를 바라며 추가적인 문의가 필요하시면 답변 부탁드려요!
      </textarea>
      </div>
     </div>
   </div>
   <br>
   
   <div class="card">
     <div class="card-header">
     아이디2 (로고)
     </div>
     <div class="card-body">
       <div class="card-text d-flex justify-content-between align-items-center">
          <div class="btn-group-vertical">
            <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="추천">
               <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
               20
            </button>
            <button type="button" class="btn btn-primary" data-toggle="tooltip" data-placement="left" title="채택">
               <i class="fa fa-check" aria-hidden="true"></i>
            </button>
            <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="신고">
               <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
            </button>
      </div>
      &nbsp;
      &nbsp;
      <textarea class="form-control" rows="8" id="reply_text" readonly>
채택 했을 때(질문자, 사용자에게 모두 이렇게 보임)

질문하신 내용에 대하여 아래와 같이 답변 드립니다.
인터넷만 켜도 렉 걸리는정도면 새로 맞추시는게 좋습니다.
요즘은 장비가 비싸지 않아서 저렴하게 맞출수 있고공부하는 모습을 보여주시면서 설득을 하셔야할것 같습니다.
독학을 고려하신다면 꼭 바꾸시는게 맞습니다
      </textarea>
      </div>
     </div>
   </div>
   <br>
   
   <div class="card">
     <div class="card-header">
     아이디3 (로고)
     </div>
     <div class="card-body">
       <div class="card-text d-flex justify-content-between align-items-center">
          <div class="btn-group-vertical">
            <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="추천">
               <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
               13
            </button>
            <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="신고">
               <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
            </button>
         </div>
      &nbsp;
      &nbsp;
      <textarea class="form-control" rows="8" id="reply_text" readonly>
채택 받지 못한 답변

질문하신 내용에 대하여 아래와 같이 답변 드립니다.
인터넷만 켜도 렉 걸리는정도면 새로 맞추시는게 좋습니다.
요즘은 장비가 비싸지 않아서 저렴하게 맞출수 있고공부하는 모습을 보여주시면서 설득을 하셔야할것 같습니다.
독학을 고려하신다면 꼭 바꾸시는게 맞습니다
      </textarea>
      </div>
     </div>
   </div>
   <br>
            
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            
               </fieldset>
         </form>
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

<script>
   $(function () {
       $('[data-toggle="tooltip"]').tooltip();
     })
     
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