<%-- 
    Document   : viewvacancy
    Created on : Apr 28, 2015, 2:33:12 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <%@include file="Header_admin.jsp" %>
     <%
String SELECT = "SELECT * from pvaccancy";
                        
            ResultSet rs = con.getData(SELECT);
  
  
%>

<table border="2" align="center" class="table">
   
    <tr><td><font><font color="black">Name</td><td><font ><font color="black">Company Name</td><td><font><font color="black">No.of vaccancy</td><td><font color="black">Key Skill</td><td><font color="black">Details</td><td><font color="black">Salary</td><td><font color="black">Experience</td><td><font color="black">Place</td><td><font color="black">Type</td><td><font color="black">Date</td></tr>
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
 <input type="hidden" autofocus="1"/>
 </table>
 <%@include file="Footer_admin.jsp" %>
</html>
