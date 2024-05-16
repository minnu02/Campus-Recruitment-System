<%-- 
    Document   : login_action
    Created on : May 8, 2015, 3:03:58 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%
    
    String user=request.getParameter("a1");
    String pass=request.getParameter("a2");
    String query="select * from alogin where username='"+user+"' AND password='"+pass+"';";
    ResultSet rs=con.getData(query);
    if(rs.next())
    {
        response.sendRedirect("home.jsp");
        
    }
    else
    {
        response.sendRedirect("login.jsp");
        
    }
    %>