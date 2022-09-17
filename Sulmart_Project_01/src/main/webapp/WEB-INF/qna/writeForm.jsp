<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<!-- writeForm.jsp -->
<br>
<script src="https://code.jquery.com/jquery-1.6.1.min.js"
	integrity="sha256-x4Q3aWDzFj3HYLwBnnLl/teCA3RaVRDGmZKjnR2P53Y="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	/* function write() {
	 if (confirm("등록하시겠습니까 ?") == true) {
	 alert("문의글이 등록되었습니다.");
	 location.href = "write.qna";
	 } else {
	 return;
	 }
	 }  */

	function back() {
		if (confirm("목록으로 돌아가시겠습니까?") == true) {
			location.href = "list.qna";
		} else {
			return;
		}
	}

	$(document).ready(function() {
		create();

		$("#refreshBtn").click(function(e) {
			e.preventDefault();
			create();
		});

		$("#confirmBtn").click(function(e) {
			e.preventDefault();
			$("#frm").submit();
		});

		function create() {
			$("#captcha img").attr("src", "/captcha?" + Math.random());
		}
	});
</script>
<style type="text/css">
.err {
	color: red;
	font-weight: bold;
}

#captcha {
	width: 230px;
	height: 70px;
	border: 1px #DCDCDC;
	text-align: center;
	padding: 5px;
}

table {
	width: 1000;
	border-top: 1px solid #DCDCDC;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid #DCDCDC;
	padding: 10px;
}

</style>

<center>
	<h2>QNA</h2>
	<form:form commandName="qna" action="write.qna" method="post"
		enctype="multipart/form-data">
		<hr style="width: 1000;">
		<br>
		<table>
			<tr>
				<td>카테고리</td>
				<td><select name="cate">
						<option value="회원/정보관리">회원/정보관리</option>
						<option value="배송">배송</option>
						<option value="반품/환불/교환/AS">반품/환불/교환/AS</option>
						<option value="영수증/증빙서류">영수증/증빙서류</option>
						<option value="상품/이벤트">상품/이벤트</option>
						<option value="기타">기타</option>
				</select> <form:errors cssClass="err" path="cate" /></td>
			</tr>
			<tr>
				<td>공개여부</td>
				<td><select name="cateopen">
						<option value="전체공개">전체공개
						<option value="비밀글">비밀글
				</select></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" size="48" maxlength="10" name="writer"
					value="${qna.writer }"></td>
				<!-- 로그인 정보로 변경, 수정불가 -->
			</tr>
			<tr>
				<td>* 제목</td>
				<td><input type="text" size="48" name="subject" value="${qna.subject }">
					<form:errors cssClass="err" path="subject" /></td>
			</tr>
			<tr>
				<td>* 본문</td>
				<td><textarea name="content" rows="10" cols="50"
						placeholder="내용을 작성해주세요.">${qna.content }</textarea> <form:errors
						cssClass="err" path="content" /></td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td><input type="file" name="upload" value="">${qna.upload }</td>
			</tr>
			<tr>
				<td>자동등록방지</td>
				<td>
					<form id="frm" action="result.jsp" method="post">
						<div id="captcha">
							<img /><small>보이는 문자를 <br>순서대로 입력해주세요.</small>
						</div>
						<input size="31" type="text" name="captchaInput" />
						<button id="confirmBtn">확인</button>
						<button id="refreshBtn">이미지 새로고침</button>
					</form>


				</td>
			</tr>
		</table>
		<br>
		<br>
		<input type="button" value="이전" onclick="back()">
		<input type="submit" value="등록">
	<!-- 	<input type="button" value="등록" onclick="write()"> -->
	</form:form>

</center>