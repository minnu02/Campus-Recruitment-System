<%-- +
    Document   : Addnotification_action
    Created on : May 29, 2015, 10:45:10 AM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%
    String name=request.getParameter("t1");
    String event=request.getParameter("t2");
    String dat=request.getParameter("t3");
    String select="insert into pnotification values('"+name+"','"+event+"','"+dat+"') ";
    if(con.executeCommand(select))
    {
        response.sendRedirect("Addnotification.jsp");
                
    }
    else
    {
        response.sendRedirect("Addnotification.jsp");
    }
    %>
    