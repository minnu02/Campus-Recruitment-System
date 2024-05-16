<%-- 
    Document   : View Qusetions
    Created on : Feb 11, 2017, 7:16:29 PM
    Author     : Vishnu S
--%>

<%@include file="Header_provider.jsp" %>

<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<table border="1" bgcolor="white" class="table">
        <tr>
            <th>Question</th>
            <th>Answer</th>
            <th>Delete</th>
        </tr>
       
          <%
        String select="select * from quetion where pid='"+session.getAttribute("id")+"'";
ResultSet rs=con.getData(select);
while(rs.next())
{
%>        

<tr>
    <td><%=rs.getString("question")%></td>
             <td><%=rs.getString("ans")%></td>
             <td><a href="question_delete.jsp?id=<%=rs.getString("qno")%>" style="color:blue">Delete</a></td>
        </tr>
        <%
}
%>
    </tbody>
 
</table>
        </div>
    
<%@include file="Footer_provider.jsp" %>