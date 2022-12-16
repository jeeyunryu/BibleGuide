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
<form:form name= "form1" modelAttribute="u" method="POST" action="../editok" onsubmit="return check()">
    <form:hidden path="id"/>
    <table id="edit">
        <tr><td>카테고리</td><td><form:select path="category">
            <option value="율법서">율법서</option>
            <option value="역사서">역사서</option>
            <option value="시가서">시가서</option>
            <option value="예언서">예언서</option>
            <option value="복음서">복음서</option>
            <option value="서신서">서신서</option>
        </form:select>
        </td></tr>
        <tr><td>목차</td><td><form:input path="title"/></td></tr>
        <tr><td>장</td><td><form:input path="chapter"/></td></tr>
        <tr><td>절</td><td><form:input path="verse"/></td></tr>
        <tr><td>말씀</td><td><form:textarea cols="50" rows="5" path="contents"/></td></tr>
        <tr><td>중요도(1~5)</td><td><form:input path="stars"/></td></tr>
        <tr><td>암기완료</td><td><form:checkbox path="isMemorized" /></td></tr>
    </table>
    <button type="reset">초기화</button>
    <input type="submit" value="수정하기"/>
    <input type="button" value="취소하기" onclick="history.back()">
</form:form>
<script>
    function check(){
        var imporatnce= document.form1.stars;
        if(imporatnce.value != null &&(imporatnce.value<1||imporatnce.value>5)){
            alert("중요도에 1~5 사이에 숫자를 입력하십시오");
            return false;
        }
    }
</script>
</body>
</html>