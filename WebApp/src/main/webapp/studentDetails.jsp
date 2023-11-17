<%-- 
    Document   : studentDetails
    Created on : 16 Nov 2023, 18:05:06
    Author     : Joat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.webapp.Student"%>
<%@page import="com.mycompany.webapp.Undergraduate"%>
<%@page import="com.mycompany.webapp.Masters"%>
<%@page import="com.mycompany.webapp.University"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Details Page</title>
    </head>
    <body>
        <h1>Student Details</h1>
        <p>
        <%
            University sessionStudents = University session.getAttribute("students");
            
            String newStudentId = request.getParameter("studentId");
            for(Student currentStudent : sessionStudents) {
                if(newStudentId.equals(currentStudent.getId())) {
                    out.println(currentStudent + "<br/>");
                }
            }
        %>
        </p>
    </body>
</html>
