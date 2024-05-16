<%-- 
    Document   : Adddeletejobprovider_action
    Created on : Jul 5, 2015, 10:40:21 AM
    Author     : VISHNU S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%@include  file="header.jsp" %>
<%
String mode=request.getParameter("mode");
String id=request.getParameter("id");
if(mode.equals("accept")){
    String UDPATE="UPDATE pregistration SET Status=1 WHERE Email='"+id+"'";
    if(con.executeCommand(UDPATE)){
        response.sendRedirect("Adddeletejobprovider.jsp");
    }
}else{
    String UDPATE="UPDATE pregistration SET Status=0 WHERE Email='"+id+"'";
    if(con.executeCommand(UDPATE)){
        response.sendRedirect("Adddeletejobprovider.jsp");
    }
}
%>
