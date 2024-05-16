<%-- 
    Document   : viewseeker_ajax
    Created on : Jul 5, 2015, 11:54:59 AM
    Author     : VISHNU S
--%>


<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>

 <%
     String id=request.getParameter("id");
     String condition="";
     if(!id.equalsIgnoreCase("select")){
         condition=" AND qualification='"+id+"' ";
     }
  %>  
    <table border="1" bgcolor="white" class="table">
    <thead>
        
    </thead>
    <tbody>
         
        <tr>
            <th>Post Name</th>
            <th>Name</th>

            <th>DOB</th>
            <th>Gender</th>
            <th>Phone</th>
            <th>Qualification</th>
            <th>Experience</th>
             <th>Resume</th>
              <th>Certificate</th>
               <th>Photo</th>
            <th>Marks Gained in test</th>
            <th>Select</th>
        </tr>
        <%
         String select="select s.postname,s.company,s.name,s.address,s.dateofbirth,s.gender,s.phno,s.qualification,s.experience,r.mark,sr.resume,sr.cert,sr.photo from sapplyjob s,result r , sregistration sr where s.company='"+session.getAttribute("name")+"' and r.pid=s.pid and s.sid=r.sid and s.qualification='"+id+"' and sr.id=s.sid ";
ResultSet rs1=con.getData(select);
while(rs1.next())
{
%>        

<tr>
    <td><%=rs1.getString("postname")%></td>
            <td><%=rs1.getString("name")%></td>
             <td><%=rs1.getString("dateofbirth")%></td>
             <td><%=rs1.getString("gender")%></td>
           <td><%=rs1.getString("phno")%></td>
            <td><%=rs1.getString("qualification")%></td>
            <td><%=rs1.getString("experience")%></td>
            <td><a href="../resume/<%=rs1.getString("resume")%>">Download</a></td>
            <td><a href="../cert//<%=rs1.getString("cert")%>">Download</a></td> 
            <td><img src="../photo/<%=rs1.getString("photo")%>" height="50" width="50"/></td>
            <td><%=rs1.getString("mark")%></td>
            <td><a href="Viewseeker_action.jsp?id=<%=rs1.getString("phno")%>">Select</a></td>
        </tr>
        <%

}
%>
    </tbody>
 
</table>
