<%-- 
    Document   : reg_action
    Created on : May 9, 2015, 11:20:09 AM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<% 
    String nmecom=request.getParameter("t1");
    String conadd=request.getParameter("jkj");
    String ph=request.getParameter("t3");
    String tpcom=request.getParameter("t6");
    String Emid=request.getParameter("hj");
    String unme=request.getParameter("t8");
    String psrd=request.getParameter("fhj");
 
    String que=request.getParameter("j4");
     String ans=request.getParameter("a2");
     String ins="insert into pregistration (name,address,pno,type_of_company,Email,username,password) values('"+nmecom+"','"+conadd+"','"+ph+"','"+tpcom+"','"+Emid+"','"+unme+"','"+psrd+"');";
    if (con.executeCommand(ins))
    {
        response.sendRedirect("Login.jsp");
    }
    else
    {
        response.sendRedirect("registration.jsp");
    }
     %>
    
    
    
    
    
    
    
             


             
