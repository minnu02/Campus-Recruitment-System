<%-- 
    Document   : Question
    Created on : Feb 3, 2017, 12:19:09 PM
    Author     : Vishnu S
--%>

<%@include file="Header_provider.jsp" %>

<form action="Question_action.jsp" class="contactForm">



<table border="0" class="table">

    <tbody>
        <tr>
            <td>Question</td>
            <td><textarea name="txtquestion" rows="3" cols="50" class="form-control" required="1" autofocus="1"></textarea></td>
        </tr>
        <tr>
            <td>Option A</td>
            <td><input type="text" name="txta" value=""  class="form-control" required="1"/></td>
        </tr>
        <tr>
            <td>Option B</td>
            <td><input type="text" name="txtb" value=""  class="form-control" required="1"/></td>
        </tr>
        <tr>
            <td>Option c</td>
            <td><input type="text" name="txtc" value=""  class="form-control" required="1"/></td>
        </tr>
        <tr>
            <td>Option D</td>
            <td><input type="text" name="txtd" value=""  class="form-control" required="1"/></td>
        </tr>
        <tr>
            <td>Answer</td>
            <td><input type="text" name="txtans" value=""  class="form-control" required="1"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Save" class="contact submit" /></td>
            <td><input type="reset" value="Cancel" class="contact submit" /></td>
        </tr>
    </tbody>
</table>


</form>

<%@include file="Footer_provider.jsp" %>