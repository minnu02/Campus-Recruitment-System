<%-- 
    Document   : Addnotification
    Created on : Apr 28, 2015, 12:24:54 PM
    Author     : cyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="Header_provider.jsp" %>
<form action="Addnotification_action.jsp" class="contactForm">
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
                        <td>Event Name</td>
                        <td><input type="text" name="t1" value=""  class="form-control" required="1" autofocus="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Event Description</td>
                        <td><textarea name="t2" rows="4" cols="20" class="form-control" required="1"></textarea></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Event Date</td>
                        <td><input type="date" name="t3" value=""  class="form-control" required="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save "  class="contact submit"/></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </h1>
    </body>
       
        
    </form>
</html>
<%@include file="Footer_provider.jsp" %>