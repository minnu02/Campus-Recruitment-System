<%-- 
    Document   : Exam
    Created on : Feb 3, 2017, 1:06:29 PM
    Author     : Vishnu S
--%>

<<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>

<script>alert('please see the timer if it time out you cant submit the answers')</script>
<%@include file="Header_seeker.jsp" %>

<%
    String pid=request.getParameter("id");
    String insert="insert into result(pid,sid) values('"+pid+"','"+session.getAttribute("id").toString()+"')";
    con.executeCommand(insert);
     String update="update result set status=1 where pid='"+pid+"' and sid='"+session.getAttribute("id").toString()+"'";
     con.executeCommand(update);
    
    
    %>
    <script>
<!--
<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "300";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.exam1.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{
document.exam1.clock.value = "Time over";
alert('Time Out');
 Save.disabled = true;
///disable submit-button etc
}
}
//-->
</script>
<form name="exam1" action="Exam_action.jsp">
      <h2>Seconds remaining: <input type="text" name="clock" value="<%=clock%>" style="border:0px solid white"></h2>
...

     
         
<table border="0" class="table" >
  
    <tbody>
  
    
        <%
        int i=0;
    String sel="select * from quetion where pid='"+pid+"'";
    ResultSet res1=con.getData(sel);
    while(res1.next()){
        %>
            <tr>
            <td></td>
            <td><textarea name="txtquestion" rows="6" cols="50" class="form-control" readonly="1"><%=res1.getString("question")%></textarea></td>
        </tr></div>
        <tr>
            <td></td>
            <td><label><input type="radio" name="qusetion<%=i%>" value="<%=res1.getString("opa")%>" /><%=res1.getString("opa")%></label></td>
        </tr>
        <tr>
            <td></td>
            <td><label><input type="radio" name="qusetion<%=i%>" value="<%=res1.getString("opb")%>" /><%=res1.getString("opb")%></label></td>
        </tr>
        <tr>
            <td></td>
            <td><label><input type="radio" name="qusetion<%=i%>" value="<%=res1.getString("opc")%>" /><%=res1.getString("opc")%></label></td>
        </tr>
        <tr>
            <td></td>
            <td><label><input type="radio" name="qusetion<%=i%>" value="<%=res1.getString("opd")%>" /><%=res1.getString("opd")%></label></td>
        </tr>
    <input type="hidden" name="id<%=i%>" value="<%=res1.getString("qno")%>"/>
        <%i++;}%>
    <input type="hidden" name="count" value="<%=i%>"/>
    <input type="hidden" name="pid" value="<%=pid%>"/>
        <tr></FORM>
            <td><input id="Save" type="submit" value="Save"  class="contact submit"/></td>
            <td><input type="reset" value="Cancel" class="contact submit" /></td>
        </tr>
    </tbody>
</table>
        
      </form>  
        <script>
<!--
timer();
//-->
</script>

            <%@include file="Footer_seeker.jsp" %>