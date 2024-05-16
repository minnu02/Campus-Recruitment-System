<%-- 
    Document   : deletejobseeker_action
    Created on : Jul 5, 2015, 11:17:57 AM
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
    String UDPATE="UPDATE sregistration SET Status=1 WHERE phno='"+id+"'";
    if(con.executeCommand(UDPATE)){
        response.sendRedirect("deletejobseeker.jsp");
    }
}else{
    String UDPATE="UPDATE sregistration SET Status=0 WHERE phno='"+id+"'";
    if(con.executeCommand(UDPATE)){
        response.sendRedirect("deletejobseeker.jsp");
    }
}
%>
