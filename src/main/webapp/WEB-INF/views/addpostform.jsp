<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table id="edit">
        <tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
        <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
        <tr><td>장</td><td><input type="text" name="chapter"/></td></tr>
        <tr><td>절</td><td><input type="text" name="verse"/></td></tr>
        <tr><td>중요도</td><td><input type="text" name="stars"/></td></tr>
        <tr><td>내용</td><td><textarea cols="50" rows="5" name="contents"></textarea></td></tr>
        <tr><td>암기여부</td><td><input type="text" name="isMomorized"/></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>