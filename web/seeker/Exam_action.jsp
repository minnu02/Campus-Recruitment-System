<%-- 
    Document   : Exam_action
    Created on : Feb 3, 2017, 8:01:49 PM
    Author     : Vishnu S
--%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>

<%
    String pid=request.getParameter("pid");
   int i=0,j=0;
      String ss="";
      String n="";
      int mark=0;
       int count=Integer.parseInt(request.getParameter("count"));
    String option[]=new String[count];
    String id[]=new String[30];
   // int i=0,j=0;
 
  
    while(i<count)
    {ss="qusetion"+i;
        option[i]=request.getParameter(ss);
        i++;
    }
    
    i=0;
    while(i<count)
    {n="id"+i;
        id[i]=request.getParameter(n);
        i++;
    }
    j=0;
    
 while(j<count){
    String select="select ans from quetion  where qno='"+id[j]+"'";
    ResultSet ress=con.getData(select);
    if(ress.next())
    {
        String ans=ress.getString("ans");
        if(ans.equalsIgnoreCase(option[j]))
        {
            mark=mark+10;
            
        }
        
    }
    j++;
    }
 String insert="update result set mark='"+mark+"' where pid='"+pid+"' and sid='"+session.getAttribute("id")+"'";
 con.executeCommand(insert);
 response.sendRedirect("View_result.jsp?id="+pid+"");
 
 %>