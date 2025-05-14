<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="/WEB-INF/views/layout/app.jsp">
    <jsp:param name="content" value='
        <h2>id : ${task.id} の詳細ページ</h2>

        <p>仕事内容：<c:out value="${task.content}" /></p>
        <p>作成日時：<fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
        <p>更新日時：<fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスク内容を編集する</a></p>
    '/> 
</jsp:include>
