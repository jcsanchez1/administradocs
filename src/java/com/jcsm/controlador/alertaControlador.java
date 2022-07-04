/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jcsm.controlador;

import com.jcsm.DAO.alertasDAO;
import com.jcsm.entidades.TblAlertas;
import com.jcsm.entidades.TblPersonas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author juanc
 */
@WebServlet(name = "alertaControlador", urlPatterns = {"/alertaControlador"})
public class alertaControlador extends HttpServlet {

    private static final long serialVersionUID = 1L;
    TblAlertas tale = new TblAlertas();
    TblPersonas tper = new TblPersonas();
    alertasDAO adao = new alertasDAO();
    int respuesta = 0;
    String a1 = "", a2 = "", a3 = "";

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession misession = request.getSession(true);

            if (request.getParameter("btn-guardar-ale") != null) {
                try {

                    a1 = request.getParameter("idper");
                    a2 = request.getParameter("descripcion");
                    a3 = request.getParameter("diaalerta");
                    int diaalerta = Integer.parseInt(a3);
                    int idper = Integer.parseInt(a1);
                    tale.setDescripcion(a2);
                    tale.setDiaalerta(diaalerta);
                    tper.setId(idper);
                    tale.setIdpersona(tper);
                    respuesta = adao.isertaralerta(tale);
                    if (respuesta >= 0) {
                        response.sendRedirect("afiliado-alertas.jsp?idper=" + a1);
                    }
                } catch (IOException | NumberFormatException | SQLException ex) {
                    ex.getMessage();
                }
            }
        }
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
