<%-- 
    Document   : calculators
    Created on : Jan 28, 2015, 3:52:56 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${contextPath}/css/calculator.css" rel="stylesheet" type="text/css"/>
        <title>Area Calculators</title>
    </head>
    <div name="rectangle"> 
        <h2>Enter the length and width to calculate the area of a rectangle.</h2>
        <img src ="${contextPath}/images/area-of-a-rectangle.gif" alt="Rectangle"/>
        <form id="form1" name="form1" method="POST" action="${contextPath}/controller4?calcType=rectangle">
            <label for="length">Enter Length:</label>
            <input id="length" name="length" type="text" placeholder="e.g., 9.5" value=""/>
            <label for="width">Enter Width:</label>
            <input id="width" name="width" type="text" placeholder="e.g., 5.75" value=""/>
            <p>${areaRectangle}</p>
            <input type="submit" class="shape" name="submit" value="Calculate Area"/>
        </form>
    </div>
    <div name="circle">
        <h2>Enter the radius to calculate the area of a circle.</h2>
        <img src ="${contextPath}/images/area-of-a-circle.gif" alt="Circle"/>
        <form id="form2" name="form2" method="POST" action="${contextPath}/controller4?calcType=circle">
            <label for="radius">Enter Radius</label>
            <input id="radius" name="radius" type='text' placeholder="e.g., 6.5" value=""/>
            <p>${areaCircle}</p>
            <input type="submit" class="shape" name="submit" value="Calculate Area"/>
        </form>
    </div>
    <div name="triangle">
        <h2>Enter the base and height to calculate the area of a triangle.</h2>
        <img src ="${contextPath}/images/area-of-a-triangle.gif" alt="Triangle"/>
        <form id="form3" name="form3" method="POST" action="${contextPath}/controller4?calcType=triangle">
            <label for="base">Enter Base</label>
            <input id="base" name="base" type="text" placeholder="e.g., 6" value=""/>
            <label for="height">Enter Height</label>
            <input id="height" name="height" type="text" placeholder="e.g., 8.75" value=""/>
            <p>${areaTriangle}</p>
            <input type="submit" class="shape" name="submit" value="Calculate Area"/>
        </form>
    </div>
</html>
