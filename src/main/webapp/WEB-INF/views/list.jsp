<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>
</head>
<body>
<h1></h1>
<h1>바이블 가이드</h1>
<h3>${sessionScope.login.username} 님 안녕하세요! <a href="../login/logout">로그아웃</a></h3>
<table id="list" width="90%">
    <tr>
        <th>id</th>
        <th>카테고리</th>
        <th>제목</th>
        <th>장</th>
        <th>절</th>
        <th>말씀</th>
        <th>중요도</th>
        <th>암기완료</th>
        <th>입력날짜</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.category}</td>
            <td>${u.title}</td>
            <td>${u.chapter}</td>
            <td>${u.verse}</td>
            <td>${u.contents}</td>
            <td>${u.stars}</td>
            <td>${u.isMemorized}</td>
            <td>${u.regDate}</td>
            <td><a href="editform/${u.id}">말씀 수정하기</a></td>
            <td><a href="javascript:delete_ok('${u.id}')">말씀 삭제</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="add">말씀 추가하기</a>
</body>
</html>