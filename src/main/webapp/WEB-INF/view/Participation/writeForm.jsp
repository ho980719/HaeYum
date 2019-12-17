<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="participationWritePro" method="post" enctype="multipart/form-data" name="frm" commandName="participationCommand">
		<table border="1" id="insertTable">
			<tr>
				<th>참가자명</th>
				<td><form:input path="participationName"/></td>
			</tr>
			<tr>
				<th>공모전이름</th>
				<td><form:input path="contestName"/></td>
			</tr>
			<tr>
				<th>공모전주제</th>
				<td><form:input path="contestSubject"/></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><input type="file" name="contestPoster" multiple="multiple"/></td>
			</tr>
			<tr>
				<th>공모전내용</th>
				<td><form:textarea path="contestContent" cols="50" rows="20"/></td>
			</tr>
			<tr>
				<th>참가조건</th>
				<td>
					<form:checkbox path="contestCondition" value="대학생" />대학생
					<form:checkbox path="contestCondition" value="대학원생" />대학원생
					<form:checkbox path="contestCondition" value="일반인" />일반인
					<form:checkbox path="contestCondition" value="어린이" />어린이
					<form:checkbox path="contestCondition" value="초등학생" />초등학생
					<form:checkbox path="contestCondition" value="증힉생" />중학생
					<form:checkbox path="contestCondition" value="고등학생" />고등학생
					<form:checkbox path="contestCondition" value="기업" />기업
					<form:checkbox path="contestCondition" value="제한없음" />제한없음
					<form:checkbox path="contestCondition" value="기타" />기타
				</td>
			</tr>
			<tr>
				<th>응모방법</th>
				<td>
					<form:checkbox path="contestEntryWay" value="이메일" />이메일
					<form:checkbox path="contestEntryWay" value="홈페이지" />홈페이지
					<form:checkbox path="contestEntryWay" value="우편" />우편
					<form:checkbox path="contestEntryWay" value="방문접수" />방문접수
					<form:checkbox path="contestEntryWay" value="웹하드" />웹하드
					<form:checkbox path="contestEntryWay" value="기타" />기타
				</td>
			</tr>
			<tr>
				<th>모집인원</th>
				<td><form:input path="contestPeoples" value="0" /></td>
			</tr>
			<tr>
				<th>접수기간</th>
				<td>
					<input type="date" name="contestStart" /> ~ 
					<input type="date" name="contestEnd" />					
				</td>
			</tr>
			<tr align="center">
				<td colspan=2>
					<input type="submit" value="등록하기" />
					<input type="button" value="취소" />
				</td>
			</tr>
	</table>
	
	</form:form>
</body>
</html>