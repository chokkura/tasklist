<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>タスク一覧</title>
</head>
<body>
    <h2>タスク一覧</h2>
    <ul>
        <c:forEach var="task" items="${tasks}">
            <li>
                <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                    <c:out value="${task.id}" />
                </a>
                ：&gt; <c:out value="${task.content}" />
            </li>
        </c:forEach>
    </ul>

    <p><a href="${pageContext.request.contextPath}/new">タスクの追加</a></p>
</body>
</html>