<%-- 
    Document   : Notification
    Created on : Apr 28, 2015, 2:03:45 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <%@include file="Header_seeker.jsp" %>
     <%
String SELECT = "SELECT * from pnotification";
                        
            ResultSet rs = con.getData(SELECT);
  
  
%>

<table border="2"  class="table">
   
    <tr><th>Event Name</th><th>Description</th><th>Date</th></tr>
 <%
 while(rs.next())
 {
 %>
 <tr>
     <td align="center"><font color="black"><%=rs.getString("Ename")%></td>
     <td align="center"><font color="black"><%=rs.getString("Edescription")%></td>
     <td align="center"><font color="black"><%=rs.getString("Edate")%></td>

     
 </tr>
 <%
 }
 %>
 </table>
 <%@include file="Footer_seeker.jsp" %>
</html>
