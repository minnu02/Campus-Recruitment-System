<%-- 
    Document   : Registration_action
    Created on : May 29, 2015, 11:15:21 AM
    Author     : cyber
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>

<jsp:useBean class="com.employyee.dataaccess.DataAccess" id="con"/>
<%@page import="java.sql.*" %>






<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    String filename="";
    String filename1="";
    String filename2="";
    
     String name="";
     String lname="";
    String address="";
    String ph="";
    String dat="";
    String gender="";
    String qual="";
    String exp="";
    String user=request.getParameter("a7");
    String pass=request.getParameter("a8");
    String sq=request.getParameter("a9");
    String ans=request.getParameter("a10");
    
      
    
    FileItem f_item = null;
    File proj_path = new File(config.getServletContext().getRealPath("/"));
    String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\photo\\";
    String file_path1 = proj_path.getParentFile().getParentFile().getPath() + "\\web\\resume\\";
    String file_path2 = proj_path.getParentFile().getParentFile().getPath() + "\\web\\cert\\";
//checking if request cotains multipart data
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {

        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        //declaring a list of form fields
        List items_list = null;

        //assigning fields to list 'items_list'
        try {
            items_list = upload.parseRequest(request);
        } catch (FileUploadException ex) {
            out.println(ex);
        }

        //declaring iterator
        Iterator itr = items_list.iterator();

        //iterating through the list 'items_list'
         while (itr.hasNext()) {
            //typecasting next element in items_list as fileitem
            f_item = (FileItem) itr.next();
            if (f_item.isFormField()) {
                if (f_item.getFieldName().equalsIgnoreCase("a1")) {
                    name= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("a1a")) {
                    lname= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("a2")) {
                    address= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("a3")) {
                    ph= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("a4")) {
                    dat= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("male")) {
                    gender= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("a5")) {
                    qual= f_item.getString();
                
                }
                if (f_item.getFieldName().equalsIgnoreCase("a6")) {
                   exp= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("a7")) {
                    user= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("a8")) {
                    pass= f_item.getString();
                }
            }else {
                try {
                    if (f_item.getFieldName().equalsIgnoreCase("photo")) {
                        filename = f_item.getName();
                        File savedFile1 = new File(file_path + filename);
                        f_item.write(savedFile1);
                    }
                        if (f_item.getFieldName().equalsIgnoreCase("resume")) {
                        filename1 = f_item.getName();
                        File savedFile2 = new File(file_path1 + filename1);
                        f_item.write(savedFile2);
                        }
                        if (f_item.getFieldName().equalsIgnoreCase("certi")) {
                        filename2 = f_item.getName();
                        File savedFile3 = new File(file_path2 + filename2);
                        f_item.write(savedFile3);
                    }

                } catch (Exception e) {
                }
            }
        }

    }
    
    
      String curr = "2015-07-08";
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
   
      Date d1 =new Date(format.parse(curr).getTime());
        Date d2 =new Date(format.parse(dat).getTime());
        long difference=d1.getTime()-d2.getTime();
        int days=(int)(difference/(24*60*60*1000));
        int year=days/365;
        
if((year>=20)&&(year<=40))

{
    String select="insert into  sregistration (fname,lname,photo,address,phno,DOB,gender,qualification,experience,username,password,resume,cert) values('"+name+"','"+lname+"','"+filename+"','"+address+"','"+ph+"','"+dat+"','"+gender+"','"+qual+"','"+exp+"','"+user+"','"+pass+"','"+filename1+"','"+filename2+"')";
    if(con.executeCommand(select))
    {
        response.sendRedirect("Login.jsp");
                
    }
}
    else
    {
        response.sendRedirect("Registration.jsp?err=Invalid Date");
    }
   
    %>
    