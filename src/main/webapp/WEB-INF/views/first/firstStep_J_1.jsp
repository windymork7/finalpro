<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>firstStep_J_1</title>
<!-- 부트스트랩 -->
<%--<link rel="stylesheet" href="css/bootstrap.css">--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--<script--%>
<%--   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--   crossorigin="anonymous"></script>--%>
<%--<script--%>
<%--   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--   crossorigin="anonymous"></script>--%>

<style>
   p{
   color: black;
   }
   
   h3{
   color: black;
   }
   
   a{
   color:black;
   }
   pre{
        background-color: #BBDEFB;
        margin: 10px 20px;
   }
   
   

</style>

</head>
<body>

   <div class="container-fluid">
      <div class="row min-vh-100 flex-column flex-sm-row">
         <aside class="col-sm-2 p-0 flex-shrink-1">
            <nav class="navbar navbar-expand-lg navbar-light border-right flex-sm-column flex-row align-items-start py-2">
               <div class="collapse navbar-collapse ">
                  <ul class="flex-sm-column flex-row navbar-nav w-100 justify-content-between">
                     <li class="nav-item active"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline"><b>자바 시작하기</b></span></a>
               </li>
                     <li class="nav-item active"><a class="nav-link pl-0" href="langJavaFirst01.fi">
                     <span class="d-none d-sm-inline">안녕 JAVA!</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="langJavaFirst02.fi">
                     <span class="d-none d-sm-inline">변수</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">주석</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                           <span class="d-none d-sm-inline">main-메소드</span></a>
                     </li>
                     <li class="nav-item active"><a class="nav-link pl-0" href="#">
                     <div class="dropdown-divider"></div>
                     <span class="d-none d-sm-inline"><b>자료형</b></span></a>
               </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">숫자(Number)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">부울(boolean)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">문자(char))</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">문자열(String)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">StringBuffer</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">배열(Array)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">리스트(List)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">제네릭스(Generics)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">맵(Map)</span></a>
                     </li>
                     <li class="nav-item active"><a class="nav-link pl-0" href="#">
                     <div class="dropdown-divider"></div>
                           <span class="d-none d-sm-inline"><b>제어문</b></span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">if문</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">switch/case문</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">while문</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">for문</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">for each문</span></a>
                     </li>
                     <li class="nav-item active"><a class="nav-link pl-0" href="#">
                     <div class="dropdown-divider"></div>
                           <span class="d-none d-sm-inline"><b>객체지향 프로그래밍</b></span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">클래스</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">메소드(Method)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">Call by value</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">상속</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">생성자</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">인터페이스</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">다형성</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">추상클래스</span></a>
                     </li>
                     <li class="nav-item active"><a class="nav-link pl-0" href="#">
                     <div class="dropdown-divider"></div>
                           <span class="d-none d-sm-inline"><b>자바 날개 달기</b></span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">패키지</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">접근제어자</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">정적 변수와 메소드</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">예외처리</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">쓰레드</span></a>
                     </li>
                  </ul>
               </div>
            </nav>
         </aside>
         <main class="flex-grow-1 col-sm-10">
            <div class="container">
            
 <div class="jumbotron">
  <h1 class="display-3 text-right" style="color:#78c2ad">안녕 JAVA!</h1>
</div>
            
<table class="table table-hover">

  <tbody>
    <tr>
      <th><a href="#_1">딜레마</a></th>
    </tr>
    <tr>
      <th><a href="#jdk">JDK 설치</a></th>
    </tr>
    <tr>
      <th scope="row"><a href="#_2">자바소스와 컴파일</a></th>
    </tr>
    <tr>
      <th scope="row"><a href="#_3">따라 해 보기</a></th>
    </tr>
    <tr>
      <th scope="row"><a href="#_4">이클립스 설치</a></th>
    </tr>
    <tr>
      <th scope="row"><a href="#main">main 메소드</a></th>
    </tr>
  </tbody>
</table>
            
<p>Hello World!</p>
<h3 id="_1">딜레마</h3>
<p>모든 언어에서 첫번 째 예제로 다루는 "Hello World"를 출력하는 프로그램을 만들어 보자. 자바는 다른 언어와 달리 "Hello World" 프로그램만 제대로 공부하면 자바 언어의 절반 이상을 익히는 것과 다름 없다.</p>
<p>왜냐하면 "Hello World" 프로그램을 작성하려면 jdk설치, 이클립스 설치, 클래스, 함수, public에 대한 개념, static에 대한 개념, 그리고 마지막 실행까지.. 이 모든것을 알아야 하기 때문이다.</p>
<p>자바가 처음에 어렵게 느껴지는 이유는 이렇게 가장 간단한 예제를 실행하려고 해도 알아야 할 것이, 또는 모르고 일단 지나쳐야 할 것이 너무나도 많기 때문일 것이다.</p>
<p>자바를 알려주어야 하는 입장에서는 "Hello World" 프로그램에서부터 딜레마에 빠지게 된다. 쉬운것부터 알려주어야 하는데 가장 쉬운것조차 클래스부터 시작해야 하니 말이다.</p>
<p>정말 진심으로 필자는 여러분이 처음 배우는 언어로 자바를 선택했다면 자바가 아닌 다른언어를 먼저 공부 하기를 추천하고 싶다. 예를 들면 파이썬 같은 교육적인 언어 말이다. 배우기 쉬운 언어로 먼저 시작하여 프로그래밍이란 어떤것인지, 클래스란 무엇인지 등에 대하여 알고 난 후에 자바를 공부하면 무척 쉽게 느껴질 것이다.</p>
<p>하지만 그럼에도 불구하고 여러 복잡한 이유로 프로그래밍에 대한 경험없이 자바를 먼저 배우기로 결정했다면, 휴, 어쩔 수 없이 차근 차근 살펴보자. </p>
<p>자바는 처음 프로그래밍을 배우는 사람이 쉽게 적응하기 어려운 언어라고 할 수 있다. 이것은 언어가 추구하는 방향성 때문이기도 한데 모든것이 클래스 기반에서 동작해야 한다는 이러한 자바의 특징이 나중에는 무척 편리하지만 처음 시작하기에는 넘기 힘든 장벽이 되기도 한다.</p>
<p>이 책을 읽는 여러분도 자바에 대해서 쉬운것부터 차례로 설명하기 쉽지 않은 이유를 어느정도 이해해 주기를 바라며 이제 자바학습에 들어가 보도록 하자.</p>
<p>우리는 "Hello World" 를 출력하는 프로그램을 만들 것이다. 여담으로 파이썬은 이 프로그램을 다음과 같이 작성한다.</p>
<pre><code class="python">print &quot;Hello World&quot;
</code></pre>

<p><em>아직 늦지 않았다. 어서 이 책을 덮고 파이썬에 대해서 관심을 가져보자 :)</em></p>
<p>하지만 자바는 절대로 위와 같이 단순하지 않다. 아, 이제 더이상 다른 언어는 얘기하지 않도록 하겠다.</p>
<h3 id="jdk">JDK 설치</h3>
<p>우선 자바코딩을 시작하기 전에 개발환경을 먼저 세팅하도록 하자. 개발환경이란 자바로 프로그램을 만들 수 있는 컴퓨팅 환경을 말한다. 즉, 프로그램 소스를 작성하는 툴, 작성한 소스를 컴파일 하는 프로그램등을 설치해야 하는 것이다.</p>
<p>자바 프로그래밍을 하기 위해 필수적으로 필요한 JDK 를 먼저 설치 해 보도록 하자. JDK는 Java Development Kit의 약자이다. 자바 프로그램을 만들기 위해서는 누구나 이것을 설치해야만 한다.</p>
<p>자바는 원래 썬 마이크로시스템즈에서 만들고 배포했지만 오라클이 썬을 인수하면서부터 라이센스가 좀 복잡하게 변경된 것 같다. 하지만 공부를 위해 필요한 JDK는 온라인에서 무료로 다운로드 받고 설치할 수 있다.</p>
<p>아, 그리고 이 책에서는 여러분이 windows 운영체제를 사용한다고 가정하고 진행하도록 한다. (하지만 리눅스나 기타 다른 OS 사용자라도 설치를 제외하면 나머지 것들은 모두 동일하게 진행 해 나갈 수 있을 것이다.) 필자의 windows 운영체제는 windows 7 이므로 만약 이 책에 디렉토리 구조나 기타 캡쳐화면들이 나온다면 윈도우즈7 기준으로 보이게 될 것이다.</p>
<p>JDK를 다운로드 받을 수 있는 URL은 다음과 같다.</p>
<ul>
<li><a href="http://www.oracle.com/technetwork/java/javase/downloads/index.html?ssSourceSiteId=otnjp/">JDK Download</a></li>
</ul>
<p>만약 위 URL이 더이상 유효하지 않다면 구글 검색창에서 "JDK Download" 로 검색하고 들어가면 된다. </p>
<p>아마 다음과 비슷한 화면을 볼 수 있을 것이다.</p>
<p><img alt="" src="https://wikidocs.net/images/page/887/jdk1.png" /></p>
<p>여러분은 위 그림에서 빨간색 테두리로 표시한 JDK 8 을 다운로드 하면 된다. </p>
<p>"다운로드" 버튼을 클릭하면 뭔가 또 복잡하게 나오는데 다운로드하기 위한 이후의 과정은 생략하도록 하겠다. 여러분이 능히 해낼 수 있을거라 필자는 의심하지 않는다. 다만 본인의 OS에 맞는 JDK를 골라서 다운로드 해야 하는데 만약 여러분의 컴퓨터가 64비트 환경이라면 <code>jdk-8-windows-x64.exe</code> 파일을 다운로드 하면 되고 32비트 환경이라면 <code>jdk-8-windows-i586.exe</code> 이 파일을 다운로드 하면 된다. 이것만 주의하여 다운로드 하면 문제가 없을 것이다. </p>
<p>자, 이제 exe 프로그램을 다운로드 하였다면 설치를 해 보도록 하자. 설치 역시 어렵지 않다. 다른 일반 프로그램을 설치하는 것과 동일한 방법으로 더블 클릭하여 설치하면 된다.</p>
<p>JDK는 디폴트로 설치 시 아마도 다음과 같은 디렉토리에 설치가 될 것이다.</p>
<pre><code class="no-highlight">c:\program files\java\jdk1.8.0_20
</code></pre>

<p><code>c:\program files\java</code> 이후의 디렉토리명은 jdk버전등에 따라서 다른 이름일 수 있다. 본인의 jdk 설치 디렉토리를 기억 해 놓도록 하자. 설치한 jdk 디렉토리는 앞으로 진행할 설명에서 필요하게 된다.</p>
<p>자, 이제 JDK 설치가 완료되었다면 자바 프로그램 작성을 위해서 자바의 영원한 친구 이클립스를 설치해야 한다. 이클립스는 자바 프로그램 작성을 도와주는 도구이다. 문서파일 작성을 도와주는 도구로 워드나 HWP가 있는 것처럼 프로그램 작성을 도와주는 툴들이 있다. 이러한 툴들은 IDE(Intergrated Development Environment), 통합개발환경이라고도 부른다. 자바 프로그래밍을 도와주는 IDE중 가장 많이 사용되는 것이 바로 "이클립스"라는 프로그램이다. 이클립스는 2000년도 초반부터 유명해지기 시작했는데 지금은 JDK와 비슷한 위상을 가질 만큼 자바 프로그래밍 시 없어서는 안될 소중한 존재로 자리매김 하였다.</p>
<h3 id="_2">자바소스와 컴파일</h3>
<p>아.. 하지만 잠깐, 여기서 이클립스를 설치하고 자바 프로그램을 작성하기 전에 한가지 알아두어야 할 것이 있다. 그것은 바로 이클립스를 설치하고 나면 사용할 기회조차 없는 <code>javac</code>와 <code>java</code>라는 명령어이다.</p>
<p>JDK를 설치했다면 jdk가 설치된 디렉토리<sup id="fnref:jdk"><a class="footnote-ref" href="#fn:jdk" rel="footnote">1</a></sup>의 bin이라는 하위 디렉토리에 javac.exe와 java.exe 파일이 저장되어 있을 것이다. 혹시라도 java.exe만 있고 javac.exe가 없다면 jdk가 아닌 jre를 설치한 것이므로 다시 jdk를 다운로드 받도록 하자. <sup id="fnref:jre"><a class="footnote-ref" href="#fn:jre" rel="footnote">2</a></sup></p>
<p>javac는 java compiler의 약어이다. 즉 자바파일을 컴파일할 때 사용하는 것이 바로 javac.exe 파일이다. 컴파일이란 프로그래머가 작성한 소스코드를 컴퓨터가 이해할 수 있는 말(기계어)로 바꾸는 행위이다. 모든 프로그래밍 언어에는 컴파일러 또는 그와 비슷한 기능을 하는 것들이 있다.</p>
<p>그럼 자바파일은 무엇일까?</p>
<p>바로 우리가 작성해야 할 자바 프로그램을 말한다. 이 자바 프로그램은 .java 라는 확장자를 가진 파일로 저장하게 되는데 이렇게 저장되는 .java 파일을 자바파일 또는 자바소스라고 한다.</p>
<p>만약 우리가 <code>MyProgram.java</code>라는 자바 파일을 작성했다면 프로그램이 정상적으로 동작하는 지 확인하기 위해서 프로그램을 실행시키고 싶을 것이다.</p>
<p>자바로 작성한 파일을 실행하기 위해서는 두 번의 단계를 거쳐야만 한다. 하나는 .java 파일을 .class 파일로 바꾸어 주는 컴파일 단계이고 두번째는 .class 파일을 실행시키는 실행단계이다. 이렇게 두 단계를 거치면 우리는 작성한 프로그램을 실행시켜 볼 수 있다.</p>
<p>다음 그림을 통해 좀 더 자세히 살펴보자.</p>
<p><img alt="" src="http://wikidocs.net/images/page/256/compile.png" /></p>
<p>위 그림에서 Compiler는 javac.exe에 해당되고 Java VM은 java.exe에 해당된다.</p>
<p>위 그림을 순서대로 서술하면 다음과 같다.</p>
<ol>
<li>소스코드(MyPrograme.java)를 작성한다.</li>
<li>컴파일러(Compiler)는 자바 소스코드를 이용하여 클래스 파일(MyProgram.class)을 생성한다. 컴파일 된 클래스 파일은 Java VM(Java Virtual Machine)이 인식할 수 있는 바이너리 파일이다.</li>
<li>Java VM(JVM)은 클래스 파일의 바이너리 코드를 해석하여 프로그램을 수행한다.</li>
<li>MyProgram 수행 결과가 컴퓨터에 반영된다.</li>
</ol>
<p>여기서 잠깐 한가지 생각 해 볼만한 것이 있다. 왜 자바는 컴파일을 한 결과가 exe가 아닌 class일까? c 또는 c++등으로 작성된 프로그램은 최종 결과물로 exe파일을 만들어 낸다. 이 exe파일은 계산기와 같은 유틸리티일수도 게임일 수도 있다. 사용자는 그냥 단순히 exe 프로그램을 실행하기만 하면 프로그램을 실행시켜 볼 수 있다.</p>
<p>그런데 왜 자바는 실행하기도 어려운 class라는 걸 만들어서 귀찮게 하는걸까?</p>
<p>(아, 물론 java도 exe 프로그램으로 만들어 낼 수 있기는 하다. 다만 jvm이 exe에 포함되는 형식으로 가능하기 때문에 exe 파일이 무척이나 커진다는 단점이 있을 뿐, 하지만 java프로그램을 exe로 배포하는 일은 흔한일이 아니다.)</p>
<p>c, c++과 같은 언어는 컴파일 된 실행 파일을 모든 운영체제에서 동일하게 사용하는것이 불가능하다. 윈도우에서 컴파일한 프로그램을 리눅스에서는 사용할 수 없다는 얘기다. 이것은 자바의 JVM과 같은 중간단계의 역할을 수행하는 것이 없기 때문인데 이 부분에서 서로의 장단점이 명확하게 나누어 진다. </p>
<p>c, c++등의 언어에서 만들어진 실행파일은 JVM같은 중간단계를 거치지 않기 때문에 빠른 속도로 수행된다. 하지만 운영체제마다 별도의 실행파일을 작성해야 한다는 단점이 있다. 반대로 자바는 JVM이라는 중간단계가 있으므로 C등의 언어보다 속도가 느리다. 하지만 한번 작성한 파일은 어떤 OS에서라도 사용할 수 있다는 장점이 있다.</p>
<p>한번 작성한 것을 널리 재활용하는 것이 자바의 가장 큰 특징이자 가장 큰 장점이라고 할 수 있겠다. 자바 또한 발전에 발전(JIT의 도입등)을 거듭하여 실행 속도도 하드웨어를 직접 제어하는 케이스만 아니라면 c/c++ 등에 거의 근접하게 따라잡았다.</p>
<h3 id="_3">따라 해 보기</h3>
<p>이제 실습을 통해 "Hello World" 프로그램을 작성해 보도록 하자.</p>
<p>먼저 도스창을 하나 열어보자. 도스창은 시작 -&gt; "프로그램 및 파일 검색" 입력창에서 <code>cmd</code>라고 입력하고 엔터를 치면 실행된다. 또는 "윈도우키"+R 입력 후 나오는 팝업창에서 <code>cmd</code>라고 입력한 후 "확인" 버튼을 클릭하면 된다.</p>
<p>도스창이 실행되고 다음과 같은 프롬프트가 보일 것이다.</p>
<pre><code class="no-highlight">C:\Users\pahkey&gt;
</code></pre>

<p>pahkey는 윈도우 사용자명이므로 여러분과 다르게 보일 것이다. 자, 이제 다음과 같은 javac 명령어를 수행 해 보자.</p>
<pre><code class="no-highlight">C:\Users\pahkey&gt;javac
'javac'은(는) 내부 또는 외부 명령, 실행할 수 있는 프로그램, 또는
배치 파일이 아닙니다.
</code></pre>

<p>만약 이런 결과가 나온다면 다음과 같이 set 명령어를 이용하여 PATH 변수에 jdk/bin 디렉토리를 추가 하도록 하자.</p>
<pre><code class="no-highlight">C:\Users\pahkey&gt;set PATH=%PATH%;&quot;C:\Program Files\Java\jdk1.8.0_20\bin&quot;
</code></pre>

<p>위에서 사용한 디렉토리는 여러분의 디렉토리와 다를 수 있으므로 여러분의 디렉토리명과 일치할 수 있도록 명령을 수행하기 바란다.</p>
<p>다시 javac 명령을 수행 해 보자. 다음과 같이 javac가 성공적으로 수행된다면 PATH가 정확히 설정된 것이다.</p>
<pre><code class="no-highlight">C:\Users\pahkey&gt;javac
Usage: javac &lt;options&gt; &lt;source files&gt;
where possible options include:
  -g                         Generate all debugging info
  -g:none                    Generate no debugging info
  -g:{lines,vars,source}     Generate only some debugging info

... 생략 ...
</code></pre>

<p>※ 도스창을 닫고 다시 열면 PATH 변수가 사라진다. PATH 값을 영구설정하려면 "내컴퓨터" --&gt; 고급설정 --&gt; 환경변수 --&gt; PATH 값에 위에서 사용한 jdk/bin경로(예:<code>C:\Program Files\Java\jdk1.8.0_20\bin</code>)를 추가 해 주면 된다.</p>
<p>자, 이제 자바파일(.java)을 작성 해 보도록 하자. HelloWorld.java 라는 이름으로 다음과 같이 파일을 작성 해 보자.</p>
<pre><code class="no-highlight">C:\Users\pahkey&gt;copy con HelloWorld.java
class HelloWorld {
}
^Z
</code></pre>

<p>여기서는 copy con 명령을 이용해서 java 파일을 작성 해 보았다. 노트패드나 기타 다른 에디터를 사용해서 HelloWorld.java 파일을 생성해도 상관없다. copy con 을 이용하는 경우 파일에 더 이상 적을 내용이 없을 때 ^Z (Ctrl + Z)를 입력하면 파일이 생성된다.</p>
<p>HelloWorld.java 의 내용은 다음과 같다.</p>
<pre><code class="java">class HelloWorld {
}
</code></pre>

<p>파일의 내용에 대한 궁금증은 잠시 덮어두도록 하자. 곧 자세히 알게 될 때가 올것이다. 지금은 javac, java 를 어떻게 사용하는지에 대해서만 알아보도록 하자.</p>
<p>이제 자바파일을 컴파일 해 보도록 하자.</p>
<pre><code class="no-highlight">C:\Users\pahkey&gt;javac HelloWorld.java
</code></pre>

<p>아무런 반응없이 프로그램이 종료될 것이다. 이제 dir 명령어로 class 파일이 생성되었는지 확인 해 보자.</p>
<pre><code class="no-highlight">C:\Users\pahkey&gt;dir HelloWorld.class
 C 드라이브의 볼륨에는 이름이 없습니다.
 볼륨 일련 번호: 3ACB-12C2

 C:\Users\pahkey 디렉터리

2014-04-11  오후 04:34               194 HelloWorld.class
               1개 파일                 194 바이트
               0개 디렉터리  47,143,202,816 바이트 남음
</code></pre>

<p><code>HelloWorld.class</code> 파일이 생성된 것을 확인 할 수 있을것이다.</p>
<p>클래스 파일에는 어떤 내용이 있을까? type 명령어로 파일의 내용을 확인 해 보자.</p>
<p><img alt="" src="https://wikidocs.net/images/page/887/javac1.png" /></p>
<p>필자의 경우 위와 같은 깨진 문자같은 것들이 표시되었다. .class 파일은 jvm만 해석가능한 바이너리코드이다. 파일의 내용을 눈으로 보고 해석할 수는 없다.</p>
<p>이제 클래스파일을 실행 시켜 보도록 하자. 클래스를 실행시키는 명령어는 java.exe이다. 다음과 같은 명령어를 도스창에서 실행 해 보자.</p>
<pre><code class="no-highlight">C:\Users\pahkey&gt;java HelloWorld
오류: HelloWorld 클래스에서 기본 메소드를 찾을 수 없습니다. 다음 형식으로 기본메소드를 정의하십시오.
   public static void main(String[] args)
또는 JavaFX 응용 프로그램 클래스는 javafx.application.Application을(를) 확장해야 합니다.
</code></pre>

<p>클래스 파일을 실행할 때는 위와 같이 <code>java + 클래스파일명</code> 과 같이 실행한다. 단, 클래스파일명에서 .class의 확장자 부분은 제외하고 실행해야 한다.</p>
<p>비록 오류가 발생했지만 여러분은 첫번째 자바 프로그램을 만들고 실행 해 보았다. 아주 큰 한걸음을 내딛은 것이다. </p>
<p>축하한다. 짝짝짝~</p>
<p>오류는 main 메소드가 없다는 내용이다. 이제 이 오류를 해결 해 보도록 하자.</p>
<p>오류를 해결하려면 HelloWorld.java 파일을 수정해야 한다. 노트패드등으로 쉽게 수정할 수 있겠지만 이미 언급했던 자바의 영원한 친구 "이클립스"를 설치 해 보도록 하자.</p>
<h3 id="_4">이클립스 설치</h3>
<p>다음의 URL에서 이클립스를 다운로드 하도록 하자.</p>
<ul>
<li><a href="http://www.eclipse.org/downloads/">http://www.eclipse.org/downloads/</a></li>
</ul>
<p>위 URL에 접속하면 여러가지 버전이 있는데 여러분은 가장 상단에 위치한 "Eclipse IDE for Java Developers" 를 다운로드 하면 된다. 다운로드 시 32비트, 64비트를 선택할 수 있다. 본인의 컴퓨터 환경에 맞는 파일을 다운로드 하도록 하자.</p>
<p>다운로드 되는 파일은 zip 확장자를 가진 압축파일이다. 이 압축파일을 해제한 곳에서 "eclipse.exe"를 클릭하면 이클립스가 실행된다. 이클립스는 별도의 설치과정이 필요없다. 이러한 zip 압축해제 방식은 여러버전의 이클립스를 한 PC에서 독립적으로 수행 할 수 있게 해 주는 장점이 있다.</p>
<p>이클립스를 실행 해 보자. 아마 이클립스를 처음 실행한다면 아래와 같은 창이 나올 것이다.</p>
<p><img alt="" src="https://wikidocs.net/images/page/887/eclipse1.png" /></p>
<p>이 창은 workspace를 어디로 설정할 것인지를 묻는 창이다. workspace는 이클립스의 작업공간을 의미한다. 이클립스에서 작성하는 파일이나 기타 설정들이 이 곳에 저장되게 될 것이다. 원하는 디렉토리를 선택(필자는 workspace 폴더를 앞으로의 설명을 위하여 <code>C:\jump2java\workspace</code>으로 설정하였다.)한 후 "확인" 버튼을 클릭하면 다음과 같은 이클립스 웰컴 페이지를 볼 수 있을 것이다.</p>
<p><img alt="" src="https://wikidocs.net/images/page/887/eclipse_welcome.png" /></p>
<p>이제 웰컴 페이지를 닫고 HelloWorld.java 프로그램을 완성 해 보도록 하자.</p>
<p>이클립스는 프로젝트 단위로 동작하므로 새 프로젝트를 먼저 생성해야 한다.</p>
<p>다음과 같이 Java Project를 먼저 선택한다.</p>
<blockquote>
<p>File -&gt; New -&gt; Java Project</p>
</blockquote>
<p>다음과 같은 화면을 볼 수 있을 것이다.</p>
<p><img alt="" src="https://wikidocs.net/images/page/887/eclipse3.png" /></p>
<p>"Project name" 입력난에 원하는 이름을 입력한 후 "Finish"버튼을 클릭하면 좌측 Package Explorer에 입력한 이름으로 프로젝트가 생성되는 것을 확인 할 수 있을 것이다. 필자는 "jump2java"라는 이름으로 생성 해 보았다.</p>
<p><img alt="" src="https://wikidocs.net/images/page/887/eclipse4.png" /></p>
<p>위와 같이 src라는 폴더가 표시되고 JRE System Library가 표시될 것이다. </p>
<p>이렇게 이클립스에서 생성되는 파일들은 어느 폴더에 어떤 파일로 저장되는 걸까? 실제 어떤 구조로 폴더들이 생기는지 확인해 보도록 하자. 이클립스 최초 실행시 설정했던 workspace 폴더가 기억나는가? 탐색기등으로 그 workspace 폴더로 이동 해 보자. </p>
<p>아마 다음과 같은 폴더가 생성된 것을 확인할 수 있을것이다.</p>
<p><img alt="" src="https://wikidocs.net/images/page/887/eclipse6.png" /></p>
<p>이클립스는 workspace 디렉토리 하위에 먼저 프로젝트에 해당되는 디렉토리를 생성 한 후 그 하위에 src, bin과 같은 폴더를 만들고 .classpath, .project 와 같은 파일을 생성한다.</p>
<p>src 폴더는 .java 파일들이 저장되는 경로이며 bin 폴더는 .class 파일들이 저장되는 경로이다. .classpath와 .project는 현재 프로젝트의 환경값들을 저장하는 이클립스의 설정파일들이다.</p>
<p>이제 HelloWorld.java 를 생성 해 보도록 하자.</p>
<p>다음과 같이 신규 클래스를 생성해 보자.</p>
<blockquote>
<p>File -&gt; New -&gt; Class </p>
</blockquote>
<p>아래와 같은 신규 클래스 생성화면이 나올 것이다.</p>
<p><img alt="" src="https://wikidocs.net/images/page/887/eclipse5.png" /></p>
<p>Name 입력창에 "HelloWorld" 라고 입력한 후 "Finish"버튼을 클릭하도록 하자. 다음과 HelloWorld.java파일이 생성되는 것을 확인 할 수 있을것이다. </p>
<pre><code class="java">package jump2java;

public class HelloWorld {

}
</code></pre>

<p>여러분이 이전에 만들었던 HelloWorld 클래스와는 조금 다른것을 확인 할 수 있다. <code>package jump2java;</code> 라는 패키지가 추가되었고 class 앞에 public 이라는 키워드가 추가 되었다.</p>
<p>package는 자바 클래스가 위치하고 있는 디렉토리명과 일치한다. 즉 파일명이 동일하더라도 다른 패키지라면 동일한 클래스명을 사용할 수 있게되는 것이다.</p>
<p>위와 같이 자바 파일을 생성하면 아래의 두개 파일이 자동으로 생성되는 것을 확인할 수 있다.</p>
<ul>
<li>src/jump2java/HelloWorld.java</li>
<li>bin/jump2java/HelloWorld.class</li>
</ul>
<p>이클립스 사용전에는 .java 파일을 생성한 후에 .class 파일을 생성하기 위해서는 javac.exe 명령어를 이용하는 컴파일이라는 단계를 거쳐야 했었다. 하지만 이클립스를 사용하면 .java 파일을 저장할 때마다 자동으로 컴파일을 하기 때문에 HelloWorld.class 파일이 이미 생성된 것이다.</p>
<p>class 앞에 사용된 "public" 키워드는 자바 프로그래밍 시 매우 중요하게 사용되는 접근제어자이지만 class 명 앞에 사용될 경우에는 조금 다른 의미로 사용된다. HelloWorld.java 라는 이름으로 자바 파일을 작성하게 되면 파일은 하나이지만 그 파일 내에 여러개의 클래스를 작성할 수 있다. 다만 클래스명이 HelloWorld 일 경우 해당 클래스에 public을 붙여주어야 한다. (뭐, 사실 이런 복잡한 얘기들은 몰라도 된다. 그저 파일명과 클래스명이 동일한 경우 클래스명 앞에 public 키워드를 붙여주도록 하자.)</p>
<p>이제 작성한 HelloWorld.class를 실행 해 보도록 하자.</p>
<p>실행 해 보려 했더니(Run -&gt; Run As -&gt; Java Application) 도스창에서는 껍데기 뿐인 HelloWorld 클래스를 작성한 후에 실행이 가능했지만 이클립스는 실행조차 허용되지 않는다. "Java Application"을 선택할 수 있는 항목이 활성화가 안된다.</p>
<p>이유는 아마도 main 메소드가 없기 때문일 것이다. 자, 이제 main 메소드를 작성해 보도록 하자.</p>
<h3 id="main">main 메소드</h3>
<p>어떤 프로그램이던지 시작과 그 끝이 있다. 이 시작과 끝을 관리하는 것이 바로 main 메소드이다. 메소드(method)는 함수(function)와 동일한 개념이다. 다만 클래스 내의 함수는 보통 함수라고 말하지 않고 메소드라고 한다. 자바는 모든것이 클래스기반이므로 자바에서 사용되는 함수는 모두 메소드라고 부르면 될 것이다.</p>
<p>HelloWorld.java 프로그램에 다음과 같이 main 메소드를 추가 해 보자.</p>
<pre><code class="java">package jump2java;

public class HelloWorld {
    public static void main(String args[]) {
        System.out.println(&quot;Hello World&quot;);
    }
}
</code></pre>

<p>main 메소드에는 알수없는 public, static, void, String, args[], System.out.println 등이 등장했다. 각각은 일단 가볍게 알아보면 다음과 같다.</p>
<ul>
<li>public : 메소드의 접근제어자, public은 누구나 이 메소드에 접근할 수 있다는 의미</li>
<li>static : 메소드에 static 이 지정되어 있는 경우 이 메소드는 인스턴스 생성없이 실행 할 수 있음을 의미</li>
<li>void : 메소드의 리턴값이 없음(void: 사전적으로 "텅 빈" 이라는 뜻)을 의미</li>
<li>String : 문자열을 나타내는 자바의 자료형</li>
<li>args[] : String 자료형에 대한 변수명으로 args 뒤에 <code>[]</code>가 있으므로 한 개가 아닌 여러개의 값으로 이루어진 배열임을 의미</li>
<li>System.out.println : 표준출력으로 데이터를 보내는 자바의 내장 메소드로 println 메소드로 들어오는 문자열 값을 화면에 출력한다.</li>
</ul>
<p>자, 이제 자바의 HelloWorld 프로그램이 얼마나 설명하기 힘든지 이해가 갈 것이다. public, static, void 등은 모두 많은 설명을 필요로 하는 것들이다. 하지만 이것들을 또 먼저 설명할 수는 없다. public, static등에 대해서 설명하려면 인스턴스, 객체등에 대한 설명을 먼저 해야 하니 말이다. 또 한번 딜레마에 빠진다..</p>
<p>이번 챕터에서는 진행을 더디게 만드는 이것들에 대해서 일단 무시하고 넘어가도록 하자. </p>
<p>다만, main 메소드는 반드시 필요하며 꼭 위와 같은 형태의 main 메소드만 가능하다는 점을 기억하도록 하자. 이것은 일종의 자바의 규칙이라고 생각하면 될 것이다.</p>
<p>이제 우리가 작성한 프로그램을 실행 해 보자.</p>
<p>메뉴에서 다음과 같이 선택하면 자바 프로그램이 실행 될 것이다.</p>
<blockquote>
<p>Run -&gt; Run As -&gt; Java Application</p>
</blockquote>
<p>실행 결과는 이클립스 하단의 콘솔창에 다음과 같이 표시될 것이다.</p>
<pre><code class="no-highlight">Hello World
</code></pre>

<p>재 실행하고 싶으면 간단하게 <code>Ctrl-F11</code>를 입력하면 편리하다.</p>
<p>축하한다. 드디어 우리의 최종 목적인 "Hello World"를 출력하는 프로그램을 만들어 보았다. </p>
            </div>
         </main>
      </div>
   </div>

</body>
</html>