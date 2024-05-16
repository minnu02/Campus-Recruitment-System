<%-- 
    Document   : viewapplication
    Created on : Apr 28, 2015, 2:33:30 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%@include file="Header_admin.jsp" %>
<table border="1" bgcolor="white" class="table">
    <thead>        
    </thead>
    <tbody>
        <tr>
            <td>Post Name</td>
            <td>Company</td>
            <td>Name</td>
            <td>Address</td>
            <td>DOB</td>
            <td>Gender</td>
            <td>Phone</td>
            <td>Qualification</td>
            <td>Experience</td>
        </tr>
        <%
        String select="select * from sapplyjob ";
ResultSet rs=con.getData(select);
while(rs.next())
{
%>        

<tr>
    <td><%=rs.getString("postname")%></td>
             <td><%=rs.getString("company")%></td>
             <td><%=rs.getString("name")%></td>
             <td><%=rs.getString("address")%></td>
             <td><%=rs.getString("dateofbirth")%></td>
             <td><%=rs.getString("gender")%></td>
           <td><%=rs.getString("phno")%></td>
            <td><%=rs.getString("qualification")%></td>
            <td><%=rs.getString("experience")%></td>
        </tr>
        <%
}
%>
    </tbody>   
</table>
<%@include file="Footer_admin.jsp" %>
    
