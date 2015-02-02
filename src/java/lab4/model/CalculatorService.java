/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab4.model;

import java.text.DecimalFormat;

/**
 *
 * @author John
 */
public class CalculatorService {

    private String sAnswer;
    private double answer;

    public String calculateRectangleArea(String length, String width) {
        double dblLength = 0;
        double dblWidth = 0;
        try {
            dblLength = Double.valueOf(length);
            dblWidth = Double.valueOf(width);
            answer = dblLength * dblWidth;
            DecimalFormat df = new DecimalFormat("#.##");
            sAnswer = "The area of a rectangle with a length of " + dblLength + " and a width of " + dblWidth + " is = " + df.format(answer);
        } catch (NumberFormatException nfe) {
            sAnswer = "Sorry, you must enter 2 numerical values for this formula!";
        }
        return sAnswer;
    }

    public String calculateCircleArea(String radius) {
        double dblRadius = 0;
        double radiusSquared = 0;
        try {
            dblRadius = Double.valueOf(radius);
            radiusSquared = dblRadius * dblRadius;
            answer = Math.PI * radiusSquared;
            DecimalFormat df = new DecimalFormat("#.##");
            sAnswer = "The area of a circle with a radius of " + dblRadius + " is = " + df.format(answer);
        } catch (NumberFormatException nfe) {
            sAnswer = "Sorry, you must enter 1 numerical value for this formula!";
        }
        return sAnswer;
    }

    public String calculateTriangleArea(String base, String height) {
        double dblBase = 0;
        double dblHeight = 0;
        try {
            dblBase = Double.valueOf(base);
            dblHeight = Double.valueOf(height);
            answer = dblBase * dblHeight;
            DecimalFormat df = new DecimalFormat("#.##");
            sAnswer = "The area of a triangle with a base of " + dblBase + " and a height of " + dblHeight + " is = " + df.format(answer);
        } catch (NumberFormatException nfe) {
            sAnswer = "Sorry, you must enter 2 numerical values for this formula!";
        }
        return sAnswer;
    }
}
