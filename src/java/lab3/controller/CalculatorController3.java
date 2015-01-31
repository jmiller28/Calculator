package lab3.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lab3.model.CalculatorService;

/**
 *
 * @author John
 */
@WebServlet(name = "CalculatorController3", urlPatterns = {"/controller3"})
public class CalculatorController3 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String CALC_TYPE = "calcType";
    private static final String RECTANGLE = "rectangle";
    private static final String CIRCLE = "circle";

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
        String resultPage = "lab3/calculators.jsp";
        String lengthString = request.getParameter("length");
        String widthString = request.getParameter("width");
        String radiusString = request.getParameter("radius");
        String baseString = request.getParameter("base");
        String heightString = request.getParameter("height");
        Double result = 0.0;

        CalculatorService cs = new CalculatorService();

        switch (calcType) {

            case "rectangle":
                double length = Double.parseDouble(lengthString);
                double width = Double.parseDouble(widthString);
                result = cs.calculateRectangleArea(length, width);
                request.setAttribute("areaRectangle", Double.toString(result));
                break;

            case "circle":
                double radius = Double.parseDouble(radiusString);
                result = cs.calculateCircleArea(radius);
                request.setAttribute("areaCircle", Double.toString(result));
                break;
                
            case "triangle":
                double base = Double.parseDouble(baseString);
                double height = Double.parseDouble(heightString);
                result = cs.calculateTriangleArea(base, height);
                request.setAttribute("areaTriangle", Double.toString(result));
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
