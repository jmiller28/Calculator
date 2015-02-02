/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab4.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lab4.model.CalculatorService;

/**
 *
 * @author John
 */
@WebServlet(name = "CalculatorController4", urlPatterns = {"/controller4"})
public class CalculatorController4 extends HttpServlet {

    private static final String CALC_TYPE = "calcType";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String calcType = request.getParameter(CALC_TYPE).toLowerCase();
        String resultPage = "lab4/calculators.jsp";
        String lengthString = request.getParameter("length");
        String widthString = request.getParameter("width");
        String radiusString = request.getParameter("radius");
        String baseString = request.getParameter("base");
        String heightString = request.getParameter("height");
        Double result = 0.0;
        String answer = "";
        CalculatorService cs = new CalculatorService();

        switch (calcType) {

            case "rectangle":
                String length = lengthString;
                String width = widthString;
                answer = cs.calculateRectangleArea(length, width);
                request.setAttribute("areaRectangle", answer);
                break;

            case "circle":
                String radius = radiusString;
                answer = cs.calculateCircleArea(radius);
                request.setAttribute("areaCircle", answer);
                break;

            case "triangle":
                String base = baseString;
                String height = heightString;
                answer = cs.calculateTriangleArea(base, height);
                request.setAttribute("areaTriangle", answer);
                break;
        }

        request.setAttribute("area", Double.toString(result));

        RequestDispatcher view
                = request.getRequestDispatcher(resultPage);
        view.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
