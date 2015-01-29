<%-- 
    Document   : calculators
    Created on : Jan 28, 2015, 3:52:56 PM
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
        <% String areaRectangle = "";
            Object obj = request.getAttribute("areaRectangle");
            if (obj != null) {
                areaRectangle = obj.toString();
            }%>

        <% String areaCircle = "";
            obj = request.getAttribute("areaCircle");
            if (obj != null) {
                areaCircle = obj.toString();
                         }%>

        <h2>Enter the length and width to calculate the area of a rectangle.</h2>
        <form id='form1' name='form1' method='POST' action='controller3'>
            Enter Length:
            <input id="length" name="length" type='text' value=""/>
            Enter Width:
            <input id="width" name="width" type='text' value=""/>
            Area: <%= areaRectangle%>
            <br>
            <input type="submit" name="submit" value="Calculate Area"/>
        </form>
        <h2>Enter the radius to calculate the area of a circle.</h2>
        <form id='form2' name='form2' method='POST' action='controller3'>
            Enter Length:
            <input id="radius" name="radius" type='text' value=""/>
            Area: <%= areaCircle%>
            <br>
            <input type="submit" name="submit" value="Calculate Radius"/>
        </form>
    </body>
</html>
