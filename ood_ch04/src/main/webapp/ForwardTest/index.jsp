<%-- 
    Document   : index
    Created on : 2020. 4. 3., 오후 8:47:18
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>&lt;jspforward&gt;액션 예제</title> <!--html에서의 <> 표현방법!-->                                               
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");//추가된 부분
            String user = request.getParameter("user");//유저의 값을 검색
            if(user == null || user.equals("")){
        %>
        
        사용자가 지정되지 않았습니다. 사용자의 이름을 입력해주시기 바랍니다.
        <form method ="POST">
            이름: <input type="text" name="user"value=""/>
            <input type="submit" value="입력"/>
        </form>
        
        <%}else{%>
        
        <jsp:forward page="process.jsp"/>
        
        <% }%>           
    </body>
</html>
