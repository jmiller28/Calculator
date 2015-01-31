/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3.model;

/**
 *
 * @author John
 */
public class CalculatorService {

    public double calculateRectangleArea(double length, double width) {

        Double area = length * width;
        return area;
    }

    public double calculateCircleArea(double radius) {

        Double area = radius * radius * Math.PI;
        return area;
    }
    
    public double calculateTriangleArea(double base, double height) {

        Double area = base * height * .5;
        return area;
    }
}
