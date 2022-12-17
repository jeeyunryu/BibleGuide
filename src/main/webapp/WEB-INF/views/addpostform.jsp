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
<form name= "form1" action="addok" method="post" onsubmit="return check()">
    <table id="edit">
        <tr><td>카테고리</td><td><select name="category" >
            <option value="율법서">율법서</option>
            <option value="역사서">역사서</option>
            <option value="시가서">시가서</option>
            <option value="예언서">예언서</option>
            <option value="복음서">복음서</option>
            <option value="서신서">서신서</option>
        </select></td></tr>
        <tr><td>목차</td><td><input type="text" name="title" required/></td></tr>
        <tr><td>장</td><td><input type="text" name="chapter" required/></td></tr>
        <tr><td>절</td><td><input type="text" name="verse" required/></td></tr>
        <tr><td>말씀</td><td><textarea cols="50" rows="5" name="contents" required></textarea></td></tr>
<%--        <tr><td>중요도(1~5)</td><td><input type="text" name="stars"/></td></tr>--%>
        <tr><td>중요도(1~5)</td><td><select name="stars">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select></td></tr>
        <tr><td>암기완료</td><td><input type="checkbox" name="isMomorized" value=true/></td></tr>
    </table>
    <button type="reset">초기화</button>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>
<script>
    function check(){
        var imporatnce= document.form1.stars;
        if(imporatnce.value == null /*&&(imporatnce.value<1||imporatnce.value>5)*/){
            alert("중요도에 1~5 사이에 숫자를 입력하십시오");
            return false;
        }
    }
</script>

</body>
</html>