<%-- 
    Document   : Instructions
    Created on : Feb 11, 2017, 7:36:13 PM
    Author     : Vishnu S
--%>

<%@include file="Header_seeker.jsp" %>

<h2>Instructions</h2><br>
<h3>There are 300 seconds to answer the questions<br>
    All question are multi choice<br>
    There is no negative mark <br>
Each Right answer have 10 marks<br>
Please take care of timer<br>
If timeout you cannot submit your answer<br>
press ok button to continue <br></h3>
<br>
    
<h4>Good Luck!!!!!</h4><br>

<form action="Exam.jsp">
    <input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
    <input type="submit" value="OK!"  class="contact submit"/>
</form>

<%@include file="Footer_seeker.jsp" %>