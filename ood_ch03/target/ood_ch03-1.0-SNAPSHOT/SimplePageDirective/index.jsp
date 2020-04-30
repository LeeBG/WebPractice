<%-- 
    Document   : index.jsp
    Created on : 2020. 3. 22., 오후 12:44:44
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page info = "page 지시어 사용 방법을 보여줍니다."%>
<%@page import = "java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>page 지시어 사용 방법</title>
    </head>
    <body>
        지금 시간은 <%= new Date() %>입니다. <!--스크립트 표현식-->
    </body>
</html>
