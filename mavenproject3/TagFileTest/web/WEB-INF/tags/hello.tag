<%-- 
    Document   : hello
    Created on : 2020. 4. 17., 오후 6:28:15
    Author     : 이병길
--%>

<%@tag description="사용자 이름과 반복횟수를 속성으로 받아서 처리" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="user" required= "true"%>
<%@attribute name="count"%>

<%
    int myCount;
    if (count == null) {
        myCount = 1;
    } else {
        myCount = Integer.parseInt(count);
    }
    for (int i = 0; i < myCount; i++) {
%>
${user}님, 안녕하십니까?<br/>
<%
    }
%>