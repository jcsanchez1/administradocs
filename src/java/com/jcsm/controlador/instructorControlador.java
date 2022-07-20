/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jcsm.controlador;

import com.jcsm.DAO.instructorDAO;
import com.jcsm.configuracion.helpers;
import com.jcsm.entidades.TblInstructores;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author juanc
 */
@WebServlet(name = "instructorControlador", urlPatterns = {"/instructorControlador"})
public class instructorControlador extends HttpServlet {

    instructorDAO idao = new instructorDAO();
    TblInstructores tins = new TblInstructores();
    helpers hp = new helpers();

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int respuesta = 0;
            if (request.getParameter("crear-inst") != null) {
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String correo = request.getParameter("correo");
                String genero = request.getParameter("genero");
                String telefono = request.getParameter("telefono");
                String fechanacimiento = request.getParameter("fechanacimiento");
                String dni = request.getParameter("dni");
                tins.setNombre(nombre);
                tins.setApellido(apellido);
                tins.setCorreo(correo);
                tins.setGenero(genero);
                tins.setTelefono(telefono);
                tins.setFechanacimiento(Date.valueOf(fechanacimiento));
                tins.setIdentidad(dni);
                respuesta = idao.insertarinstructor(tins);
                if(respuesta >0){
                    response.sendRedirect("/administradocs/educacion-ins-act.jsp");
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(instructorControlador.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(instructorControlador.class.getName()).log(Level.SEVERE, null, ex);
        }
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
