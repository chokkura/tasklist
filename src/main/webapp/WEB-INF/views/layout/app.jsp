<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タスクリスト</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h1>タスクリスト アプリケーション</h1>
            </div>
                <div id="content">
                    <c:out value="${param.content}" escapeXml="false" />
                </div>
            <div id="footer">
                by TechAcademy Student Y.H.
            </div>
        </div>
    </body>
</html>