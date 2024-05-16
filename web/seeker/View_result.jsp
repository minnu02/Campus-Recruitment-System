<%-- 
    Document   : View_result
    Created on : Feb 3, 2017, 9:34:10 PM
    Author     : Vishnu S
--%>
<%@include file="Header_seeker.jsp" %>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<table border="0" class="table">
    
    <tbody>
        <%
            String name="";
            String pidd=request.getParameter("id");
            String sel="select * from result where pid='"+pidd+"' and sid='"+session.getAttribute("id")+"'";
        ResultSet ress=con.getData(sel);
        if(ress.next())
        {
            
        String pid=ress.getString("pid");
        String s="select name from pregistration where pid='"+pid+"'";
        ResultSet r=con.getData(s);
        if(r.next())
        {
          name=r.getString("name");
        }
            %>
        <tr>
            <td>Company Name</td>
            <td><%=name%></td>
        </tr>
        <tr>
            <td>Mark</td>
            <td><%=ress.getString("mark")%></td>
        </tr>
        <%}%>
       
    </tbody>
</table>

<%@include file="Footer_seeker.jsp" %>