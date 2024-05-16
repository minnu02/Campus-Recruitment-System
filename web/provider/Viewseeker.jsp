<%-- 
    Document   : Viewseeker
    Created on : Apr 29, 2015, 1:53:57 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%@include file="Header_provider.jsp" %>
<script type="text/javascript">
    var request;
    function getRequest()
    {
        if (window.XMLHttpRequest)
            return new XMLHttpRequest();
        else if (winodw.ActiveXObject)
            return new ActiveXObject("Microsoft.XMLHTTP");
        else
            return null;
    }
    function doProcessing()
    {
        request = getRequest();
        var url="viewseeker_ajax.jsp?id=" + document.searchForm.drpDepartment.value;
            request.open("GET", url, true);
            request.onreadystatechange = function()
            {
                if (request.readyState == 4 || request.status == 200)
                {
                    document.getElementById("tablediv").innerHTML = request.responseText;
                }
            }
            request.send(null);
    }
</script>
<form name="searchForm">
    <table class="table" >
    <thead>
        
    </thead>
    <tbody>
         <tr>
            <td>
                <b>Search By</b>
            </td>
            <td>
             Qualification
            </td>
            <td>
                <select name="drpDepartment" onchange="doProcessing()">
                    <option>Select</option>
                    <%
                        String SELECT_DEPARTMENT = "SELECT DISTINCT (qualification) FROM sapplyjob";
                        ResultSet rsDepartment = con.getData(SELECT_DEPARTMENT);
                        while (rsDepartment.next()) {
                    %>
                    <option value="<%=rsDepartment.getString("qualification")%>"><%=rsDepartment.getString("qualification")%></option>
                    <%
                        }
                    %>
                </select>
         </tr>
</table>
</form>
       <div id="tablediv">      
<table border="1" bgcolor="white" class="table">
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
        String select="select s.postname,s.company,s.name,s.address,s.dateofbirth,s.gender,s.phno,s.qualification,s.experience,r.mark,sr.resume,sr.cert,sr.photo from sapplyjob s,result r,sregistration sr where s.company='"+session.getAttribute("name")+"' and r.pid=s.pid and s.sid=r.sid and sr.id=s.sid";
ResultSet rs=con.getData(select);
while(rs.next())
{
%>        

<tr>
    <td><%=rs.getString("postname")%></td>
            
             <td><%=rs.getString("name")%></td>
           
             <td><%=rs.getString("dateofbirth")%></td>
             <td><%=rs.getString("gender")%></td>
           <td><%=rs.getString("phno")%></td>
            <td><%=rs.getString("qualification")%></td>
            <td><%=rs.getString("experience")%></td>
            <td><a href="../resume/<%=rs.getString("resume")%>">Download</a></td>
            <td><a href="../cert//<%=rs.getString("cert")%>">Download</a></td> 
            <td><img src="../photo/<%=rs.getString("photo")%>" height="50" width="50"/></td>
            <td><%=rs.getString("mark")%></td>
            <td><a href="Viewseeker_action.jsp?id=<%=rs.getString("phno")%>" style="color:blue">Select</a></td>
        </tr>
        <%
}
%>
    </tbody>
 
</table>
        </div>
    
<%@include file="Footer_provider.jsp" %>