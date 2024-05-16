/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function valid()
{
     var phoneExpression = /^[0-9]{10,12}$/;
     var ageExpression = /^[0-9]{2,3}$/;
     var adharExpression = /^[0-9]{5,16}$/;
     var conExpression = /^[0-9]{10,20}$/;
     var emailExpression = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([a-zA-Z]{2,3})$/;
  /*   if (document.uregister.t1.value == "")
    {
        document.getElementById("errname").innerHTML = "Enter name";
        document.uregister.t1.focus();
        return false;
    }
    else
    {
        document.getElementById("errname").innerHTML = "";
    }
   
   if (document.uregister.t2.value == "")
    {
        document.getElementById("erraddress").innerHTML = "Enter address";
        document.uregister.t2.focus();
        return false;
    }
    else
    {
        document.getElementById("erraddress").innerHTML = "";
    }
   
    if (phoneExpression.test(document.uregister.t3.value) == false)
    {
        document.getElementById("errphno").innerHTML = "Enter valid phone number";
        document.uregister.t3.focus();
        return false;
    }
    else
    {
        document.getElementById("errphno").innerHTML = "";
    }    
     
     if (document.uregister.t5.value == "")
    {
        document.getElementById("erremail").innerHTML = "Enter emailid";
        document.uregister.t5.focus();
        return false;
    }
    else
    {
        document.getElementById("erremail").innerHTML = "";
    }
    
    if (emailExpression.test(document.uregister.t5.value) == false)
    {
        document.getElementById("erremail").innerHTML = "Enter valid emailid";
        document.uregister.t5.focus();
        return false;
    }
    else
    {
        document.getElementById("erremail").innerHTML = "";
    }
    
     if (document.uregister.t6.value == "")
    {
        document.getElementById("errage").innerHTML = "Enter age";
        document.uregister.t6.focus();
        return false;
    }
    else
    {
        document.getElementById("errage").innerHTML = "";
    }
    
    if (ageExpression.test(document.uregister.t6.value) == false)
    {
        document.getElementById("errage").innerHTML = "Enter age";
        document.uregister.t6.focus();
        return false;
    }
    else
    {
        document.getElementById("errage").innerHTML = "";
    }
    
   if (document.uregister.t7.value == "")
    {
        document.getElementById("erradhar").innerHTML = "Enter account number";
        document.uregister.t7.focus();
        return false;
    }
    else
    {
        document.getElementById("erradhar").innerHTML = "";
    }
    
    if (adharExpression.test(document.uregister.t7.value) == false)
    {
        document.getElementById("erradhar").innerHTML = "Enter  number";
        document.uregister.t7.focus();
        return false;
    }
    else
    {
        document.getElementById("erradhar").innerHTML = "";
    }
    
    if (document.uregister.t10.value == "")
    {
        document.getElementById("errcnum").innerHTML = "Enter  number";
        document.uregister.t10.focus();
        return false;
    }
    else
    {
        document.getElementById("errcnum").innerHTML = "";
    }
    
    if (conExpression.test(document.uregister.t10.value) == false)
    {
        document.getElementById("errcnum").innerHTML = "Enter consumer number";
        document.uregister.t10.focus();
        return false;
    }
    else
    {
        document.getElementById("errcnum").innerHTML = "";
    }
    
    if (document.uregister.t11.value == "")
    {
        document.getElementById("errbcnum").innerHTML = "Enter consumer number";
        document.uregister.t11.focus();
        return false;
    }
    else
    {
        document.getElementById("errbcnum").innerHTML = "";
    }
    
    if (conExpression.test(document.uregister.t11.value) == false)
    {
        document.getElementById("errbcnum").innerHTML = "Enter consumer number";
        document.uregister.t11.focus();
        return false;
    }
    else
    {
        document.getElementById("errbcnum").innerHTML = "";
    }
    
    if (document.uregister.t12.value == "")
    {
        document.getElementById("erruname").innerHTML = "Enter user name";
        document.uregister.t12.focus();
        return false;
    }
    else
    {
        document.getElementById("erruname").innerHTML = "";
    }
   
    
    if (document.uregister.t13.value == "")
    {
        document.getElementById("errpass").innerHTML = "Enter password";
        document.uregister.t13.focus();
        return false;
    }
    else
    {
        document.getElementById("errpass").innerHTML = "";
    }
    
    if (document.uregister.t14.value == "")
    {
        document.getElementById("errcpass").innerHTML = "Confirm password";
        document.uregister.t14.focus();
        return false;
    }
    else
    {
        document.getElementById("errcpass").innerHTML = "";
    }*/
    
    if (document.uregister.t10.value != document.uregister.fhj.value)
    {
        document.getElementById("errcpass").innerHTML = "Password do not match";
        document.uregister.t10.focus();
        return false;
    }
    else
    {
        document.getElementById("errcpass").innerHTML = "";
    }
}