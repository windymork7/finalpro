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
    <title>et</title>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="https://use.fontawesome.com/b490e94c82.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


   <style>
   
   .fa-pencil-square-o{
      color:#78c2ad
   }
   
   .fa-eye{
      color:#78c2ad
   }
   
   .card-title{
      margin-bottom: 0rem;
   }
   
   #question-text{
      font-size: 1.2em;
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
   
   small {
   color: #78c2ad;
   }
   
   #sidebox { position:absolute; }
   
   </style>
</head>
<body>

   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
         <form>
           <fieldset>
                  <div>

                     <div>
                        <legend>에디터's Tip</legend>
                     </div>
                  </div>
                  <hr class="my-4">
               <div class="card bg-light mb-3">
                 <div class="card-header">
                 
                          <div class="d-flex w-100 justify-content-between">
                           <h4 class="card-title">
                              <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                자바 프로그래밍 팁과 초심자를 위한 best practice
                           </h4>
                           <small> <i class="fa fa-eye" aria-hidden="true"></i> 100
                           </small>
                        </div>

                   <p class="card-text">
                   <h6>글쓴이ID</h6>
                   2020-12-01</p>
                 </div>
                 <div class="card-body">
                   <div class="card-text" id="question-text">
                   
                   <img src="img/programming.jpg" width="100%"
                           height="350">
                   <br>
                   <br>
                   <textarea class="form-control" rows="20" readonly>
1. null 대신 빈 컬렉션을 리턴해라


2. String은 신중하게 사용해라

- String 객체 생성 비용은 비싸다


3. 불필요한 객체는 생성마라

- 자바의 메모리 사용은 비싸기 때문에 가급적 초기화할때 한번만 생성하자.


4. 배열과 ArrayList는 용도에 따라 사용하자

- 배열은 개수가 고정인 대신 액세스가 빠르고 ArrayList는 개수는 동적이면서 추가 수정이 쉽다.

- 배열은 다차원 액세스가 1차원


5. finally도 실행되지 않는 경우가 있다.

- System.exit 실행하면 finally에 안걸린다. 

- Runtime.addShutdownHook이나 Finalizer로 등록하자.


6. Odd(홀수) 체크 로직을 체크해라

- num % 2 == 1 <- 이거 정확하게 동작할거 같지? 


7. '(single quote)와 "(double quote)의 차이. 

- + 연산할때 '로 묶인 경우는 문자의 값을 더한다.

- 'H' + 'a' 는 각 문자 코드값의 합이다.


8. 메모리릭 피하기

- DB 커넥션은 쿼리끝나고 항상 release해라

- finally 블록은 종종 쓸 수 있다.

- static table에 저장된 인스턴스는 릴리즈해라


9. 데드락을 피해라

일반적으로 데드락은 synchronized object가 다른 synchronized object에 의해 락걸린걸 기다릴때 나타난다.


10. 자바를 위해 메모리를 확보해라

- 아니면 느려질 수 있다.


11. 시스템 시간 함수는 어떻게 써야 하는가?

- System.currentTimeMillis() : 1/1000초 ~ 15/1000초 사이를 소비한다

- System.nanoTime(): 1/1000,000초를 소비한다.

- System.currentTimeMillis()는 1970년 1월 1일 0시 0분 기분, nanoTime은 아니다.


12. Float, Double중 선택은?

- 대체로 double을 쓴다. 수행시간은 거의 똑같은데 dobule 소수점 정확도가 높다.


13. 제곱(power) 연산 방법

- 제곱한 연산 결과를 재활용해서 삼제곱 사제곱을 만들어라.

- Math.pow는 느리다,필요할때만 써라

                  </textarea>
                  <br>
                  <div class="text-right">
                  <!-- 이 부분 D'sQ 페이지에서 댓글기능 구현하는 것처럼 버튼 누르면 밑에 댓글 쓸수있게 나오고 쓰면 아래 리스트에 들어가게 하고 싶어요 흙흙흙 -->
                        <button type="button" class="btn btn-primary">
                    댓글 쓰기
                  </button>
                  <!-- 글쓴이만 보이게 -->
                        <button type="button" class="btn btn-primary">
                    수정
                  </button>
                        <button type="button" class="btn btn-secondary">
                    삭제
                  </button>
                  </div>
                  
                   </div>
                 </div>
               </div>
               
            <hr class="my-4">
            <br>
                     <div>
                        <legend>Comments</legend>
                     </div>
            
<ul class="list-group">
  <li class="list-group-item d-flex justify-content-between align-items-center">
    코딩코딩코딩코딩
    <span class="badge badge-primary badge-pill">YoonWS</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
    자바는 내인생
    <span class="badge badge-primary badge-pill">명자나무</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
   갑자기갑자기갑자기갑자기
    <span class="badge badge-primary badge-pill">갑자기코딩</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
   내가 초뚜다
    <span class="badge badge-primary badge-pill">초뚜</span>
  </li>
</ul>   

            
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