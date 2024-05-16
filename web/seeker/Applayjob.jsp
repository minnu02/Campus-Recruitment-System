<%-- 
    Document   : Applayjob
    Created on : Apr 28, 2015, 2:08:55 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <%@include  file="Header_seeker.jsp" %>
    
    <form action="Applayjob_action.jsp" class="contactForm">
        <table border="0" class="table">
                
                    <tr>
                        <td>Post name</td>
                        <td><select name="a" class="form-control" autofocus="1">
                                <option selected disabled>Select </option>
                                <%
String select="select * from  pvaccancy";
ResultSet rs=con.getData(select);
while(rs.next())
{
%>
  <option value="<%=rs.getString("vaccancyname")%>"><%=rs.getString("vaccancyname")%></option>

                                <%
        }
%>
                               
                            </select></td>
                        <td></td>
                    </tr>
                      <tr>
                        <td>Company</td>
                        <td><select name="b" class="form-control">
                                <option selected disabled>Select</option>
                                <%
String select1="select * from  pvaccancy";
ResultSet rs1=con.getData(select1);
while(rs1.next())
{
%>
<option value="<%=rs1.getString("companyname")%>"><%=rs1.getString("companyname")%></option>

                                <%
        }
%>
                               
                            </select></td>
                        <td></td>
                    </tr>
                    <%
String select2="select * from sregistration where fname='"+session.getAttribute("name").toString()+"'";
ResultSet rs2=con.getData(select2);
while(rs2.next())
{
%>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="a1" value="<%=rs2.getString("fname")%>" class="form-control"  required="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="a2" value="<%=rs2.getString("address")%>"  class="form-control" required="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Date of birth</td>
                        <td><input type="Date" name="a3" value="<%=rs2.getString("DOB")%>" class="form-control" required="1"/></td>
                       <td colspan="2" style="color:red">
                        <%
                        String err=request.getParameter("err");
                        %>
                        <%=err!=null?err:"" %>
                    </td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                         <%
                            if(rs2.getString("gender").equalsIgnoreCase("male")){
                            %>    
                            <input type="radio" name="male" value="Male" checked/>Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="male" value="Female"/>Female
                            <%
                            }else if(rs2.getString("gender").equalsIgnoreCase("female")){
                            %>
                            <input type="radio" name="male" value="Male" />Male&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="male" checked value="Female"/>Female
                            <%
                            }
                            %>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone no:</td>
                        <td><input type="text" name="a5" value="<%=rs2.getString("phno")%>" class="form-control" /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Qualification</td>
                        <td><input type="text" name="a6" value="<%=rs2.getString("qualification")%>"  class="form-control"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Experience</td>
                        <td><input type="text" name="a7" value="<%=rs2.getString("experience")%>"  class="form-control"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save"  class="contact submit"/></td>
                        <td><input type="reset" value="Cancel" class="contact submit"/></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
                        <%
}
%>
</form>
        </h1>
    </body>
   
</html>
