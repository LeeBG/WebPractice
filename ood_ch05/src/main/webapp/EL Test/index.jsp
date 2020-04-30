<%-- 
    Document   : index
    Created on : 2020. 4. 10., 오후 6:31:52
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>표현식 언어 예제</title>
    </head>
    <body>
        <jsp:useBean id = "userBean" scope="page" class="cse.my_name.ood_ch05.eltest.UserInfo"/>
        <jsp:setProperty name="userBean" property="name" value="홍길동"/>
        <jsp:setProperty name="userBean" property="age" value="20"/>
        사용자 이름: ${userBean.name}<br/>
        나이: ${userBean["age"]}<br/> 
        10년 뒤 나이: ${userBean.age+10}
    </body>
</html>
