<%-- 
    Document   : Applayjob_action
    Created on : May 29, 2015, 11:55:01 AM
    Author     : cyber
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<%
    String post = request.getParameter("a");
    String company = request.getParameter("b");
    String name = request.getParameter("a1");
    String address = request.getParameter("a2");
    String dob = request.getParameter("a3");
    String gender = request.getParameter("male");
    String ph = request.getParameter("a5");
    String qual = request.getParameter("a6");
    String exp = request.getParameter("a7");
    String curr = "2015-07-08";
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    String id="";
   String select1="select pid from pregistration where name='"+company+"'";
   ResultSet ress=con.getData(select1);
   if(ress.next()){
       id=ress.getString("pid");
   }
   int status=0;
   String sel="select status from result where pid='"+id+"' and sid='"+session.getAttribute("id")+"'";
   ResultSet r=con.getData(sel);
   if(r.next())
   {
       status=r.getInt("status");
   }
   
          if(status==0){
              
          
      Date d1 =new Date(format.parse(curr).getTime());
        Date d2 =new Date(format.parse(dob).getTime());
        long difference=d1.getTime()-d2.getTime();
        int days=(int)(difference/(24*60*60*1000));
        int year=days/365;
        
    
    
if(year>=15)
{
    String select = "insert into sapplyjob(postname,company,name,address,dateofbirth,gender,phno,qualification,experience,pid,sid) values('" + post + "','" + company + "','" + name + "','" + address + "','" + dob + "','" + gender + "','" + ph + "','" + qual + "','" + exp + "','"+id+"','"+session.getAttribute("id")+"')";
    if (con.executeCommand(select)) {
        response.sendRedirect("Instructions.jsp?id="+id+"");
    }
    } else {
        response.sendRedirect("Applayjob.jsp?err=invalid Date");
    }

          }
          
          
          
          else
          {
              response.sendRedirect("Applayjob.jsp?err=Already applied!!!!");
          }
%>