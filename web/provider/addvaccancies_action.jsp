<%-- 
    Document   : addvaccancies_action
    Created on : May 29, 2015, 10:56:01 AM
    Author     : cyber
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%
    String vname=request.getParameter("t1");
    String cname=request.getParameter("t2");
    int vacancy=Integer.parseInt(request.getParameter("t3"));
    String skill=request.getParameter("t4");
    String job=request.getParameter("t5");
    int salary=Integer.parseInt(request.getParameter("t6"));
    String exp=request.getParameter("t7");
    String place=request.getParameter("t8");
    String type=request.getParameter("t9");
    String dat=request.getParameter("t10");
    
    
    SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();

String aa=format.format(d);
Date d1 =new Date(format.parse(aa).getTime());
        Date d2 =new Date(format.parse(dat).getTime());
        long difference=d1.getTime()-d2.getTime();
        int days=(int)(difference/(24*60*60*1000));
        
        if(days<0)
        {
    String select="insert into pvaccancy values('"+vname+"','"+cname+"','"+vacancy+"','"+skill+"','"+job+"','"+salary+"','"+exp+"','"+place+"','"+type+"','"+dat+"')";
    if(con.executeCommand(select))
    {
        response.sendRedirect("addvaccancies.jsp");
                
    }
        }
    else
    {
        response.sendRedirect("addvaccancies.jsp?err=Invalid Date");
    }
    %>
    