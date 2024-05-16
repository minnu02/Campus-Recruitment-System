<%-- 
    Document   : question_delete
    Created on : Feb 11, 2017, 7:29:18 PM
    Author     : Vishnu S
--%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%
    
    
    String delete="delete from quetion where qno='"+request.getParameter("id")+"'";
    con.executeCommand(delete);
    response.sendRedirect("View Qusetions.jsp");
    %>
    