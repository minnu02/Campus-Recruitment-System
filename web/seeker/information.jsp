<%-- 
    Document   : information
    Created on : Apr 28, 2015, 2:22:07 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%@include  file="Header_seeker.jsp" %>

<table border="1" class="table">
    <thead>
        <tr>
            <th>COMPANY NAME</th>
            <th>POST</th>
           
        </tr>
    </thead>
    <tbody>
        <%
        String select="select * from selected where name='"+session.getAttribute("name")+"'";
ResultSet rs=con.getData(select);
while(rs.next())
{
%>        

<tr>
    <td><%=rs.getString("cname")%></td>
             <td><%=rs.getString("pname")%></td>
             <td><font color="red">selected for interview </font></td>
</tr>
<%
}
%>
    </tbody>
</table>
<%@include file="Footer_seeker.jsp" %>