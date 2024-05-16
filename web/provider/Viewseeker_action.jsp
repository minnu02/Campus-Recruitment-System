<%-- 
    Document   : Viewseeker_action
    Created on : Jul 5, 2015, 7:40:08 PM
    Author     : VISHNU S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%
String id=request.getParameter("id");
 String select="select * from sapplyjob where phno='"+id+"'";
ResultSet rs=con.getData(select);
if(rs.next())
{
    String pname=rs.getString("postname");
    String  cname=rs.getString("company");
    String name=rs.getString("name");
    String address=rs.getString("address");
    String dob=rs.getString("dateofbirth");
    String gender=rs.getString("gender");
    String phno=rs.getString("phno");
    String qualification=rs.getString("qualification");
    
    String insert="insert into selected (pname,cname,name,address,dob,gender,phno,qualification)values('"+pname+"','"+cname+"','"+name+"','"+address+"','"+dob+"','"+gender+"','"+phno+"','"+qualification+"')";
   if(con.executeCommand(insert))
   {
       String delete="delete from sapplyjob where phno='"+id+"'";
       if(con.executeCommand(delete))
       {
           response.sendRedirect("Viewseeker.jsp");
       }
   }
    
}

%>