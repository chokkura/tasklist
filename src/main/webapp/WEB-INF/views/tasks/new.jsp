<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<h2>タスク新規作成ページ</h2>

<form method="POST" action="${pageContext.request.contextPath}/create">
    <jsp:include page="/_form.jsp" /> 
</form>

<p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>