<%-- 
    Document   : result
    Created on : Jan 26, 2015, 8:59:04 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        String area = "Ooops, something went wrong, could not calculate those values"       
        <% Object area = request.getAttribute("area").toString();%>
        <h2>Area = <%=area%></h2>
        
    </body>
</html>
