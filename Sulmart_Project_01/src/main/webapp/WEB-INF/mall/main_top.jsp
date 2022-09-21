<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap</title>
    
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>

<!-- main_top.jsp -->
<style>
table {
	margin: 0px auto;
}
</style>

<table width="80%">
	<%
		String id = (String)session.getAttribute("id");
		if(id==null){
			%>
	<tr>
		<td align="left">
			<a href="main.mall"> 
				<img src="<%=request.getContextPath() %>/resources/logo/술마트_로고 (2).JPG" width="200" height="80">
			</a>
		</td>
		<td align="right" valign="bottom"><a href="registerForm.mem">회원가입</a>&nbsp;| <a
			href="login.mem">로그인</a></td>
	</tr>
	<%
		}else{
			%>
	<tr>
		<td align="left"><a
			href="<%=request.getContextPath() %>/main.jsp"><img src=""
				width="80" height="40"></a></td>
		<td align="right" valign="bottom"><%= id %> 님 <a href="">로그아웃</a>
		</td>
	</tr>
	<%
			if(id.equals("admin")){
				%>
	<tr>

	</tr>
	<%
			}//if
		}//else
		%>
	
	<tr>
		<td align="center" colspan="2">
			<form action="mallSearchView.mall">
				<select name="whatColumn">
					<option value="">선택
					<option value="name">상품명
					<option value="brand">브랜드
				</select>
				<input type="text" name="keyword">
				<input type="submit" value="검색">
			</form>
		</td>
	</tr>

	<tr>
		<td align="center" colspan="2" valign="bottom" height="30"><a
			href="mallView.mall">주류 상품</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 
			<!-- <a href="">베스트</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;  -->
			<a href="myPage.mall">마이페이지</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
			<a href="add.mall">장바구니</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 
			<a href="nList.no">게시판</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 
			<a href="">상품후기</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 
			<a href="list.qna">QNA</a>
		</td>
	</tr>
	<tr>
		<td align="center" colspan="2">
		