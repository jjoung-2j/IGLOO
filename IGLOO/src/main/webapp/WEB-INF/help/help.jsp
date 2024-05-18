<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String ctxPath = request.getContextPath(); %>

<%-- Required meta tags --%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%-- Bootstrap CSS --%>
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/bootstrap-4.6.2-dist/css/bootstrap.min.css" > 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<%-- Font Awesome 6 Icons --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<%-- Optional JavaScript --%>
<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="<%= ctxPath%>/bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js" ></script> 

<%-- J Query UI CSS 및 JS --%>
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/jquery-ui-1.13.1.custom/jquery-ui.min.css" />
<script type="text/javascript" src="<%= ctxPath%>/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>



<%-- 직접 만든 CSS --%>
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/help/help.css" />

<%-- 직접 만든 JS --%>
<script type="text/javascript">

$("div#option0").css({"background-color": "#99ebff", "color": "white", "font-weight":"bold"});

	$(document).ready(function(){
		
		
		$("div#question_mark").click(()=>{
			location.href="${pageContext.request.contextPath}/help/inquiry.ice";
		});
		
		$("button#storebtn").click(()=>{
			location.href="${pageContext.request.contextPath}/store/searchList.ice";
		});
		
		$("div#option0").click(function(){
			$("div#option0").css({"background-color": "rgb(235, 241, 243)", "color": "rgb(28, 57, 81)", "font-weight":"normal"});
			$("div#tab-toggle").children().css({"background-color":"", "font-weight":"", "color":""});
			$(this).css({"background-color": "#99ebff", "color": "white", "font-weight":"bold"});
			location.href="${pageContext.request.contextPath}/help/help.ice";
		});
		
		$("div#option1").click(function(){
			$("div#option0").css({"background-color": "rgb(235, 241, 243)", "color": "rgb(28, 57, 81)", "font-weight":"normal"});
			$("div#tab-toggle").children().css({"background-color":"", "font-weight":"", "color":""});
			$(this).css({"background-color": "#99ebff", "color": "white", "font-weight":"bold"});
			location.href="${pageContext.request.contextPath}/help/help.ice?category=제품";
		});
		
		$("div#option2").click(function(){
			$("div#option0").css({"background-color": "rgb(235, 241, 243)", "color": "rgb(28, 57, 81)", "font-weight":"normal"});
			$("div#tab-toggle").children().css({"background-color":"", "font-weight":"", "color":""});
			$(this).css({"background-color": "#99ebff", "color": "white", "font-weight":"bold"});
			location.href="${pageContext.request.contextPath}/help/help.ice?category=포인트";
		});
		
		$("div#option3").click(function(){
			$("div#option0").css({"background-color": "rgb(235, 241, 243)", "color": "rgb(28, 57, 81)", "font-weight":"normal"});
			$("div#tab-toggle").children().css({"background-color":"", "font-weight":"", "color":""});
			$(this).css({"background-color": "#99ebff", "color": "white", "font-weight":"bold"});
			location.href="${pageContext.request.contextPath}/help/help.ice?category=회원";
		});
		
		$("div#option4").click(function(){
			$("div#option0").css({"background-color": "rgb(235, 241, 243)", "color": "rgb(28, 57, 81)", "font-weight":"normal"});
			$("div#tab-toggle").children().css({"background-color":"", "font-weight":"", "color":""});
			$(this).css({"background-color": "#99ebff", "color": "white", "font-weight":"bold"});
			location.href="${pageContext.request.contextPath}/help/help.ice?category=기타";
		});
		
		$("button#searchBtn").click(function(){
			
		const frm = document.searchFrm;
		frm.submit();
			
		});
		
	});
</script>

<jsp:include page="../header.jsp" />

<div class="container">

	<div id="helptop">
		<span>고객센터</span>
		<h5>고객의 소리를 적극 경청하고<br>소비자 중심 경영활동을 지속적으로 실천합니다.</h5>
	</div>
	<hr style="border: solid 0.2px rgb(89, 200, 236);">
	<div id="faq">
		<div style="display: flex; border: solid 0px blue;">
			<div style="border: solid 0px red; padding: 1% 0; margin: 0 1%;">
				<img src="<%= ctxPath%>/images/img_narae/4403555.png" style="width: 50px;"/>
			</div>
			<div style="border: solid 0px red; text-align: left;">
				<h6 style="font-weight: bold; color: rgb(89, 200, 236)">자주하는 질문</h6>
				<span style="font-size: 9pt; color: grey;">제품과 포인트, 회원 혜택 등 제품과 사이트에 대해<br>궁금한 점이 있다면 FAQ를 확인하세요!</span>
			</div>
			<form id="searchFrm" style="border: solid 0px red; margin: auto 0 auto 45%;">
				<input name="faqsearch" type="text" size="20" maxlength="50"/>
				<button id="searchBtn" type="button" style="width: 25px; height: 25px; padding: 0; border: none;"><img src="<%= ctxPath%>/images/img_narae/다운로드.png" style="width: 25px;"/></button>
			</form>
		</div>
	</div>
	
	<div id="faqtab">
		
		<div class="justify-content-center" id="tab-toggle" style="display: flex;">
			<div class="options" id="option0">전체</div>
			<div class="options" id="option1">제품</div>
			<div class="options" id="option2">포인트</div>
			<div class="options" id="option3">회원</div>
			<div class="options" id="option4">기타</div>
		</div>
		
	<br><br>
	
	<%-- 아코디언 --%>
	
		<div class="accordion" id="accordionExample">
		<c:forEach var="hvo" items="${requestScope.hvoList}" varStatus="status">
		
		<div class="accordion-item">
		    <h2 class="accordion-header" id="heading${status.index}">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${status.index}" aria-expanded="false" aria-controls="collapse${status.index}">
				${hvo.f_title }
		      </button>
		    </h2>
		    <div id="collapse${status.index}" class="accordion-collapse collapse" aria-labelledby="heading${status.index}" data-bs-parent="#accordionExample">
		      <div class="accordion-body" style="text-align: left; background-color: #e7edf3;">
		        ${hvo.f_content }
		      </div>
		    </div>
	    </div>
		
		</c:forEach>

		</div>

	<br><br>
	<%-- 페이지네이션 --%>

    <div id="pageBar" style="padding-left: 30%;"> 
	    <nav>
	    	<ul class="pagination">${requestScope.pageBar}</ul>
	    </nav>
    </div>

	<br><br>
	
	<div id="channel">
		<div class="mb-1" style="text-align: left;"><span style="font-weight: bold;">고객 문의 접수채널</span></div>
		<div class="pt-2 mb-5" style="border: solid 1px grey; border-radius: 10px 10px; display: flex;">
			<div id="tel" style="margin: auto; display:flex;">
				<div><img src="<%= ctxPath%>/images/img_narae/call.png"/></div>
				<div class="pt-2" style="text-align: left;">
					<div style="font-size: 13pt; font-weight: bold;">전화</div>
					<div style="font-weight: bold; color: rgb(89, 200, 236)">080-1234-1234</div>
					<div style="font-size: 8pt;">(주말·공휴일 휴무 / 수신자 부담)</div>
				</div>
			</div>
			<div id="homepage" style="margin: auto; display:flex;">
				<div><img src="<%= ctxPath%>/images/img_narae/homepage.png"/></div>
				<div class="pt-2" style="text-align: left;">
					<div style="font-size: 13pt; font-weight: bold;">홈페이지</div>
					<div style="font-weight: bold; color: rgb(89, 200, 236)">고객센터 1:1 문의</div>
					<div>상담 접수 시간: 24시간</div>
				</div>
			</div>
			<div id="store" style="margin: auto; display:flex;">
				<div><img src="<%= ctxPath%>/images/img_narae/store.png"/></div>
				<div class="pt-2" style="text-align: left;">
					<div style="font-size: 13pt; font-weight: bold;">점포</div>
					<div style="font-weight: bold; color: rgb(89, 200, 236)">구매점포 연락처 확인</div>
					<div style="text-align: right;"><button id="storebtn" type="button">매장정보 확인</button></div>
				</div>
			</div>
		</div>
	
	
	</div>
	

</div>

<div id="question_mark"><img style="width: 50%;" src="<%= ctxPath%>/images/img_narae/question_mark.png" /></div>

<jsp:include page="../footer.jsp" />