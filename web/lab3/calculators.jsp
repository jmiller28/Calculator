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

        <table border="1"> 
            <tr> 
                <td> 
                    <h2>Enter the length and width to calculate the area of a rectangle.</h2>
                    <form id="form1" name="form1" method="POST" action='<%= request.getContextPath() + "/controller3?calcType=rectangle"%>'>
                        <label for="length">Enter Length:</label>
                        <input id="length" name="length" type="text" value=""/>
                        <label for="width">Enter Width:</label>
                        <input id="width" name="width" type="text" value=""/>
                        <label for="area">Area:</label>
                        <input id="area" name="area" type="text" disabled="true" value="<%= areaRectangle%>"/>
                        <div id="submit">
                        <input type="submit" name="submit" value="Calculate Area"/>
                        </div>
                    </form>
                </td>
            </tr>
            <tr>
                <td>
                    <h2>Enter the radius to calculate the area of a circle.</h2>
                    <form id="form2" name="form2" method="POST" action="controller3?calcType=circle">
                        Enter Length:
                        <input id="radius" name="radius" type='text' value=""/>
                        Area: <%= areaCircle%>
                        <br><br>
                        <input type="submit" name="submit" value="Calculate Area"/>
                    </form>
                </td>                
            </tr>
            <tr>
                <td>
                    <h2>Enter the base and height to calculate the area of a triangle.</h2>
                    <form id="form3" name="form3" method="POST" action="controller3?calcType=triangle">
                        Enter Base:
                        <input id="base" name="base" type="text" value=""/>
                        Enter Height:
                        <input id="height" name="height" type="text" value=""/>
                        Area: <%= areaTriangle%>
                        <br><br>
                        <input type="submit" name="submit" value="Calculate Area"/>
                    </form>
                </td>
            </tr>
        </table>
    </body>
</html>
