<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>id : ${task.id} の編集ページ</title> 
</head>
<body>
    <h2>id : ${task.id} の編集ページ</h2> 

    <form method="POST" action="${pageContext.request.contextPath}/update">
        <input type="hidden" name="_token" value="${_token}" /> 
        <input type="hidden" name="id" value="${task.id}" /> 

        <jsp:include page="/_form.jsp" />

        <button type="submit">更新</button>
    </form>

    <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
    <p><a href="#" onclick="confirmDestroy();">このタスクを削除する</a></p>
    <form method="POST" action="${pageContext.request.contextPath}/destroy">
        <input type="hidden" name="id" value="${task.id}" />
        <input type="hidden" name="_token" value="${_token}" />
    </form>
    <script>
    function confirmDestroy() {
        if(confirm("本当に削除してよろしいですか？")) {
            document.forms[1].submit();
        }
    }
    </script>
</body>
</html>