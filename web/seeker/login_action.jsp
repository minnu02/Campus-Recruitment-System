<%-- 
    Document   : login_action
    Created on : May 9, 2015, 10:51:50 AM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%
    String user=request.getParameter("a1");
    String pass=request.getParameter("a2");
    String query="select * from sregistration where username='"+user+"' AND password='"+pass+"'  AND Status=1";
    ResultSet rs=con.getData(query);
    if (rs.next()) 
    {
        session.setAttribute("id",rs.getString("id"));
        session.setAttribute("name",rs.getString("fname"));
        response.sendRedirect("Home.jsp");
        
    }
else
    {
        response.sendRedirect("Login.jsp");
    }
    %>