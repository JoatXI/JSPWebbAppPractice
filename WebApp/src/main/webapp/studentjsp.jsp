<%-- 
    Document   : studentjsp
    Created on : 3 Nov 2023, 14:34:56
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
        <title>StudentJSP Page</title>
    </head>
    <body>
        <p>
        <%
            String id = request.getParameter("studentId");
            String name = request.getParameter("studentName");
            
            out.println("Hello " + name + "!" + "<br/>");
            
            String course = request.getParameter("studentCourse");
            double mark = Double.parseDouble(request.getParameter("studentMark"));
            
            Undergraduate s = new Undergraduate(id, name, course, mark);
            //out.println("Student details: " + s);
            
            if(session.getAttribute("students") == null) {
                session.setAttribute("students", new University());
            }
            
            University sessionStudents = (University) session.getAttribute("students");
            sessionStudents.enrolStudent(s);
            
            Student students = sessionStudents.getAllStudents();
            for(Student currentStudent: students) {
                //out.println(currentStudent.getName() + "<br/>");
                %>
                <form action="studentDetails.jsp" method="post">
                <input type="hidden" name="studentId" value="<%=currentStudent.getId()%>"/>
                <input type="submit" value="More Details"/>
                </form>
                <%
            }
        %>
        </p>
    </body>
</html>