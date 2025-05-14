<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<jsp:include page="/WEB-INF/views/layout/app.jsp">
    <jsp:param name="content" value='
        <h2>id : ${task.id} の編集ページ</h2>

        <form method="POST" action="${pageContext.request.contextPath}/update">
            <%-- ★フォームフラグメントのインクルードも <jsp:include> に置き換える★ --%>
            <%-- _form.jsp は edit.jsp と同じディレクトリにある可能性が高いので、相対パスで指定 --%>
            <jsp:include page="_form.jsp" />
        </form>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        <p><a href="#" onclick="confirmDestroy();">このタスクを削除する</a></p>
        <form method="POST" action="${pageContext.request.contextPath}/destroy">
            <input type="hidden" name="_token" value="${_token}" />
        </form>
        <script>
        function confirmDestroy() {
            if(confirm("本当に削除してよろしいですか？")) {
                document.forms[1].submit();
            }
        }
        </script>
    '/> 
</jsp:include>
