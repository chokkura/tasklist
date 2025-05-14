<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="/WEB-INF/views/layout/app.jsp">
    <jsp:param name="content" value='
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
        '/>
</jsp:include>