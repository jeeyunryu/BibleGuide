<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="id"/>
    <table id="edit">
        <tr><td>카테고리</td><td><form:input path="category"/></td></tr>
        <tr><td>제목</td><td><form:input path="title"/></td></tr>
        <tr><td>장</td><td><form:input path="chapter"/></td></tr>
        <tr><td>절</td><td><form:input path="verse"/></td></tr>
        <tr><td>중요도</td><td><form:input path="stars"/></td></tr>
        <tr><td>내용</td><td><form:textarea cols="50" rows="5" path="contents"/></td></tr>
        <tr><td>암기여부</td><td><form:input path="isMemorized"/></td></tr>
    </table>
    <input type="submit" value="수정하기"/>
    <input type="button" value="취소하기" onclick="history.back()">
</form:form>

</body>
</html>