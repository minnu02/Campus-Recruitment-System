
<%-- 
    Document   : Adddelete
    Created on : Apr 28, 2015, 2:32:02 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%@include file="Header_admin.jsp" %>
<table border="1"  class="table" autofocus="1">

     
        <tr>
            <th tabindex="1">Name of the Company</th><th>Contact Address</th><th>Phone Number</th><th>type of company</th><th>Mail ID</th><th>Action</th>

        </tr>
         <%
        String select="select * from pregistration ";
ResultSet rs=con.getData(select);
while(rs.next())
{
%>        

<tr>
    <td><%=rs.getString("name")%></td>
             <td><%=rs.getString("address")%></td>
             <td><%=rs.getString("pno")%></td>
             <td><%=rs.getString("type_of_company")%></td>
             <td><%=rs.getString("Email")%></td>
              <td>
              <%
              if(rs.getString("Status").equals("0")){
              %>
              <a href="Adddeletejobprovider_action.jsp?id=<%=rs.getString("Email")%>&mode=accept" style="color:blue" >Accept</a>
              <%
              }else{
              %>
                <a href="Adddeletejobprovider_action.jsp?id=<%=rs.getString("Email")%>&mode=reject" style="color:blue">Reject</a>
              <%
              }
              %>
              
          </td>
             
        </tr>
        <%
}
%>
    </tbody>    
</table>
<%@include file="Footer_admin.jsp" %>
