<%-- 
    Document   : footer.jsp
    Created on : 2020. 4. 17., 오후 5:12:48
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- request.setCharacterEncoding("UTF-8"); --%>
<fmt:requestEncoding value="UTF-8"/>

<hr>
페이지 하단에 들어갈 내용입니다.<br>
날짜:${param.date}
사용자:${param.user}

