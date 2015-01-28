/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1.model;

/**
 *
 * @author John
 */
public class CalculatorService {
    public double calculateArea(String length, String width) {
        double l = Double.valueOf(length);
        double w = Double.valueOf(width);
        Double area = l * w;
        return area;
    }
}
