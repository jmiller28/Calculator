<%-- 
    Document   : calculator
    Created on : Jan 28, 2015, 8:22:15 AM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Area Calculator</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <% String area = "";
            Object obj = request.getAttribute("area");
            if (obj != null) {
                area = obj.toString();
             }%>   
        <h2>Enter length and width to calculate the area of a rectangle.</h2>
        <form id='form1' name='form1' method='POST' action='controller2'>
            Enter Length:
            <input id="length" name="length" type='text' value=""/>
            Enter Width:
            <input id="width" name="width" type='text' value=""/>
            Area: <%= area%>
            <br>
            <input type="submit" name="submit" value="Calculate Area"/>
        </form>
    </body>
</html>
