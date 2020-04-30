<%-- 
    Document   : index
    Created on : 2020. 3. 22., 오후 12:17:42
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IncludeTest프로젝트</title>
    </head>
    <body>
        <%@ include file = "header.jspf"%>
        본문 내용이 들어갈 자리입니다.
        <jsp:directive.include file = "footer.jsp" /> <!--footer.jsp를 사용하면 HTML 형식 이상해짐 -->
        <!-- jsp flagment를 사용하면 됨 -->                                            
    </body>
</html>