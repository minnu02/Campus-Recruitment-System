<%-- 
    Document   : view vaccancies
    Created on : Jun 6, 2015, 8:48:30 PM
    Author     : VISHNU S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <%@include file="Header_seeker.jsp" %>
     <%
String SELECT = "SELECT * from pvaccancy";
                        
            ResultSet rs = con.getData(SELECT);
  
  
%>

<table border="2" class="table">
   
    <tr><th>Name</th><th>Company Name</th><th>No.of vaccancy</th><th>>Key Skill</th><th>Details</th><th>Salary</th><th>Experience</th><th>Place</th><th>Type</th><th>Date</th></tr>
 <%
 while(rs.next())
 {
 %>
 <tr>
     <td align="center"><font color="black"><%=rs.getString("vaccancyname")%></td>
     <td align="center"><font color="black"><%=rs.getString("companyname")%></td>
     <td align="center"><font color="black"><%=rs.getString("no_of_vaccancy")%></td>
     <td align="center"><font color="black"><%=rs.getString("keyskills")%></td>
     <td align="center"><font color="black"><%=rs.getString("jobdescription")%></td>
     <td align="center"><font color="black"><%=rs.getString("salary")%></td>
     <td align="center"><font color="black"><%=rs.getString("Experience")%></td>
     <td align="center"><font color="black"><%=rs.getString("Place")%></td>
     <td align="center"><font color="black"><%=rs.getString("Type")%></td>
      <td align="center"><font color="black"><%=rs.getString("Lastdate_of_application")%></td>

     
 </tr>
 <%
 }
 %>
 </table>
 <%@include file="Footer_seeker.jsp" %>
</html>
