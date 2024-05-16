<%-- 
    Document   : deletejobseeker
    Created on : Apr 28, 2015, 2:31:34 PM
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
    
            <td>Name</td>
            <td>Address</td>
            <td>DOB</td>
            <td>Gender</td>
            <td>Phone</td>
            <td>Qualification</td>
            <td>Experience</td>
            <td>Action</td>
        </tr>
        <%
        String select="select * from sregistration ";
ResultSet rs=con.getData(select);
while(rs.next())
{
%>        
<tr>
             <td><%=rs.getString("fname")%></td>
             <td><%=rs.getString("address")%></td>
             <td><%=rs.getString("DOB")%></td>
             <td><%=rs.getString("gender")%></td>
           <td><%=rs.getString("phno")%></td>
            <td><%=rs.getString("qualification")%></td>
            <td><%=rs.getString("experience")%></td>
            <td>
              <%
              if(rs.getString("Status").equals("0")){
              %>
              <a href="deletejobseeker_action.jsp?id=<%=rs.getString("phno")%>&mode=accept" style="color:blue">Accept</a>
              <%
              }else{
              %>
                <a href="deletejobseeker_action.jsp?id=<%=rs.getString("phno")%>&mode=reject"style="color:blue">Reject</a>
              <%
              }
              %>
              
          </td>
        </tr>
        <%
}
%>
    </tbody>    
</table
<%@include file="Footer_admin.jsp" %>