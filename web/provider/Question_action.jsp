<%-- 
    Document   : Question_action
    Created on : Feb 3, 2017, 12:32:33 PM
    Author     : Vishnu S
--%>

<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>

<%
    String question=request.getParameter("txtquestion");
    String a=request.getParameter("txta");
    String b=request.getParameter("txtb");
    String c=request.getParameter("txtc");
    String d=request.getParameter("txtd");
    String ans=request.getParameter("txtans");
    String pid=session.getAttribute("id").toString();
    String insert="insert into quetion(question,opa,opb,opc,opd,ans,pid)value('"+question+"','"+a+"','"+b+"','"+c+"','"+d+"','"+ans+"','"+pid+"')";
    con.executeCommand(insert);
    
    response.sendRedirect("Question.jsp");
    
    
    
    
    
    
    %>