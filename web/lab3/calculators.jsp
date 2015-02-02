<%-- 
    Document   : calculators
    Created on : Jan 28, 2015, 3:52:56 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link href="../calculator.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/calculator.css" rel="stylesheet" type="text/css"/>
        <title>Area Calculators</title>
    </head>
    <body>
        <% String areaRectangle = "";
            String areaCircle = "";
            String areaTriangle = "";
            Object rectangleAreaObject = request.getAttribute("areaRectangle");
            Object circleAreaObject = request.getAttribute("areaCircle");
            Object triangleAreaObject = request.getAttribute("areaTriangle");

            if (rectangleAreaObject != null) {
                areaRectangle = rectangleAreaObject.toString();
            }
            if (circleAreaObject != null) {
                areaCircle = circleAreaObject.toString();
            }
            if (triangleAreaObject != null) {
                areaTriangle = triangleAreaObject.toString();
            }%>

        <div name="rectangle"> 
            <h2>Enter the length and width to calculate the area of a rectangle.</h2>
            <img src ='<%= request.getContextPath() + "/images/area-of-a-rectangle.gif"%>' alt="Rectangle"/>
            <form id="form1" name="form1" method="POST" action='<%= request.getContextPath() + "/controller3?calcType=rectangle"%>'>
                <label for="length">Enter Length:</label>
                <input id="length" name="length" type="text" placeholder="e.g., 9.5" value=""/>
                <label for="width">Enter Width:</label>
                <input id="width" name="width" type="text" placeholder="e.g., 5.75" value=""/>
                <label for="area">Area:</label>
                <input id="area" name="area" type="text" disabled="true" value="<%= areaRectangle%>"/>
                <br><br>
                <input type="submit" name="submit" value="Calculate Area"/>
            </form>
        </div>
        <div name="circle">
            <h2>Enter the radius to calculate the area of a circle.</h2>
            <img src ='<%= request.getContextPath() + "/images/area-of-a-circle.gif"%>' alt="Circle"/>
            <form id="form2" name="form2" method="POST" action='<%= request.getContextPath() + "/controller3?calcType=circle"%>'>
                <label for="radius">Enter Radius</label>
                <input id="radius" name="radius" type='text' placeholder="e.g., 6.5" value=""/>
                <label for="area">Area:</label>
                <input id="area" name="area" type="text" disabled="true" value="<%= areaCircle%>"/>
                <br><br>
                <input type="submit" name="submit" value="Calculate Area"/>
            </form>
        </div>
        <div name="triangle">
            <h2>Enter the base and height to calculate the area of a triangle.</h2>
            <img src ='<%= request.getContextPath() + "/images/area-of-a-triangle.gif"%>' alt="Triangle"/>
            <form id="form3" name="form3" method="POST" action='<%= request.getContextPath() + "/controller3?calcType=triangle"%>'>
                <label for="base">Enter Base</label>
                <input id="base" name="base" type="text" placeholder="e.g., 6" value=""/>
                <label for="height">Enter Height</label>
                <input id="height" name="height" type="text" placeholder="e.g., 8.75" value=""/>
                <label for="area">Area:</label>
                <input id="area" name="area" type="text" disabled="true" value="<%= areaTriangle%>"/>
                <br><br>
                <input type="submit" name="submit" value="Calculate Area"/>
            </form>
        </div>
    </body>
</html>
