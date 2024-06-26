<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String ctxPath = request.getContextPath();
    //    /IGLOO
%>


<%-- 직접 만든 CSS --%>
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/product/menuDetail.css" />

<jsp:include page="../header.jsp" />

<script type="text/javascript">
function goPrev(){
	let tasteno = Number(${requestScope.tasteno}) - 1;
	
	if(Number(${requestScope.tasteno}) == 1){
		tasteno = ${requestScope.lastTasteSeq};
	}
	
	location.href="menuDetail.ice?tasteno="+tasteno;
}

function goNext(){
	let tasteno = Number(${requestScope.tasteno})+1;
	
	if(Number(${requestScope.tasteno}) == ${requestScope.lastTasteSeq} ){
		tasteno = 1;
	}
	
	location.href="menuDetail.ice?tasteno="+tasteno;
}

</script>


<%-- 여기까지 헤더 --%>
<div class="container contents">

	<div class="pagemove" style="top: 300px; left: 200px;" onclick="goPrev()">&lt;</div>
	<div class="pagemove" style="top: 300px; right: 200px;" onclick="goNext()">&gt;</div>
	<div id="imgdiv">
		<div id="item_img">
			<img id="shootingstar" src="<%= ctxPath%>/images/img_narae/icecream_image/${requestScope.tvo.tasteimg}" />
		</div>
		<div id="item_detail">
			<div class="mt-5"><span style="color: #0099ff; font-size: 10pt;">ICE CREAM</span></div>
			<h6 class="my-3">${requestScope.tvo.eng_name}</h6>
			<h2 class="my-3" style="font-weight: bolder;">${requestScope.tvo.tastename}</h2>
			<div class="my-3"><span style="line-height: 200%; font-size: 13pt;">${requestScope.tvo.tasteexplain}</span></div>
			<div id="detail_ingredient">
			${requestScope.tvo.ingredients}
			</div>
		</div>
	</div>
	
	<hr>

	<div id="Nutrition">
		<div class="row">
			<div class="col-md-2" style="font-weight: bold;">영양정보</div>
			<div class="col-md-1 nu">
				<div class="bold">1회 제공량</div>
				<div>${requestScope.tvo.oncesupply}</div>
			</div>
			<div class="col-md-1 nu">
				<div class="bold">열량(kcal)</div>
				<div>${requestScope.tvo.calory}</div>
			</div>
			<div class="col-md-1 nu">
				<div class="bold">당류(g)</div>
				<div>${requestScope.tvo.sugar}</div>
			</div>
			<div class="col-md-1 nu">
				<div class="bold">단백질(g)</div>
				<div>${requestScope.tvo.protein}</div>
			</div>
			<div class="col-md-1 nu">
				<div class="bold">포화지방(g)</div>
				<div>${requestScope.tvo.fat}</div>
			</div>
			<div class="col-md-1 nu">
				<div class="bold">나트륨(mg)</div>
				<div>${requestScope.tvo.natrium}</div>
			</div>
			<div class="col-md-2" id="allergy">
				<div style="font-weight: bold;">알레르기 성분</div>
				<div>${requestScope.tvo.allergy}</div>
			</div>
		</div>
	</div>


</div>
<%-- 여기까지 컨텐츠 --%>

<jsp:include page="../footer.jsp" />
