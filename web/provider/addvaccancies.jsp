
<%-- 
    Document   : addvaccancies
    Created on : Apr 28, 2015, 12:16:11 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <body>
        <%@include file="Header_provider.jsp" %>
        <form action="addvaccancies_action.jsp" class="contactForm">
            <table border="0" class="table">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Vacancy Name</td>
                        <td><input type="text" name="t1" value="" class="form-control" required="1" autofocus="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Company Name </td>
                        <td><input type="text" name="t2" value=""  class="form-control" required="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>No.Of Vacancy</td>
                        <td><input type="text" name="t3" value="" class="form-control" required="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Key Skills</td>
                        <td><input type="text" name="t4" value=""  class="form-control" required="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Job description</td>
                        <td><input type="text" name="t5" value=""  class="form-control" required="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Salary</td>
                        <td><input type="text" name="t6" value="" class="form-control" required="1" /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Experience</td>
                        <td><input type="text" name="t7" value="" class="form-control" required="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Place</td>
                        <td><input type="text" name="t8" value=""  class="form-control" required="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Type</td>
                        <td><select name="t9" class="form-control" required="1">
                                <option>Software</option>
                                <option></option>
                            </select></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Last date of Application</td>
                        <td><input type="date" name="t10" value=""  class="form-control" required="1"/></td>
                        <td colspan="2" style="color:red">
                        <%
                        String err=request.getParameter("err");
                        %>
                        <%=err!=null?err:"" %>
                    </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" class="contact submit" /></td>
                        <td><input type="reset" value="Cancel" class="contact submit" /></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            </form>
        
    </body>
</html>
<%@include file="Footer_provider.jsp" %>