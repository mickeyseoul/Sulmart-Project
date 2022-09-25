<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<%@ include file="main_top.jsp" %>
<!-- shopDetailview.jsp<br> -->

<%@ include file="myPage_top.jsp"%>
	
	<div class="col-9">


 <hr>
 <br>
<center>
<h2>주문 상세 내역 </h2>
</center>
<hr>

<table border="1" align="center" class="table table-hover">
	<tr align="center" class="table-info">
		<td ><b>순번</b></td>
		<td ><b>상품명</b></td>
		<td ><b>수량</b></td>
		<td ><b>단가</b></td>
		<td ><b>금액</b></td>
	</tr>

<c:forEach var="shop" items="${lists}" varStatus="i">
	<tr align="center" class="table-light">
		<td >${i.count }</td>
		<td>
			<img height=60 width=60 src="<%=request.getContextPath()%>/resources/${shop.image}"> &nbsp;  
			<a href="detail.al?num=${shop.num}">${shop.name}</a>
		</td>
		<td>${shop.qty}</td>
		<td>
			<fmt:formatNumber pattern="#,###" value="${shop.price}"/>원
		</td>
		<td>
			<fmt:formatNumber pattern="#,###" value="${shop.price*shop.qty}"/>원
		</td>
	</tr>
</c:forEach>
</table>

 <hr>
 <br>
<center>
<h2>주문자정보</h2>
</center>
 <hr>
<table border="1" align="center" class="table table-hover">

	<tr class="table-info">
		<td ><b>주문자 정보</b></td> 
		<td ><b>배송지 </b></td>
		<td ><b>휴대폰정보 </b></td>
		<td ><b>이메일 </b></td>
	</tr>
	<tr class="table-light" >		
		
		<td>
			${loginInfo.name } 
		</td> 
		<td>
			 ${loginInfo.zipcode1 } <br> ${loginInfo.zipcode2 } <br> ${loginInfo.zipcode3 }.
		</td> 
		<td>
			 ${loginInfo.hp1 } - ${loginInfo.hp2 } -  ${loginInfo.hp3 }
		</td> 
		<td>
			 ${loginInfo.email}
		</td> 				
	</tr>	
</table>


	</div>
	
		<div class="col-2"></div>
	</div>