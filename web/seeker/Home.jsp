<%-- 
    Document   : Home
    Created on : May 9, 2015, 11:10:19 AM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="Header_seeker.jsp" %>
Welcome <%=
    session.getAttribute("name")
    %>

    <%@include file="Footer_seeker.jsp" %>
