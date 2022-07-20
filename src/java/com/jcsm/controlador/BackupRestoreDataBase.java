/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jcsm.controlador;

import com.jcsm.configuracion.DBBackup;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet(name = "BackupRestoreDataBase", urlPatterns = {"/BackupRestoreDataBase"})
public class BackupRestoreDataBase extends HttpServlet {

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
            if (request.getParameter("backup") != null) {

                String status = DBBackup.mysqlDatabaseBackUp();
                if (status.equals("y")) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("currentSessionUser", "");
                    String dbName, dbUserName, dbPassword, path, dateFormat, file, host;
                    dbName = "serafil2022";
                    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                    Date date = new Date();
                    dateFormat = sdf.format(date);
                    String backup = "backup";
                    path = "C:\\dumps\\" + backup + dateFormat + ".sql";
                    session.setAttribute("respaldo", path);
                    response.sendRedirect("admin-backup-complete.jsp");
                } else if (status.equals("n")) {
                    response.sendRedirect("admin-backup-fail.jsp");
                }

            } else if (request.getParameter("restore") != null) {

                String fileName = request.getParameter("file");

                boolean status = DBBackup.mysqlDatabaseRestore("dbName", "dbUserName", "dbPassword", "c:\\dumps\\" + fileName);
                if (status == true) {
                    System.out.println("restore success ");
                    HttpSession session = request.getSession(true);
                    session.setAttribute("currentSessionUser", "");
                    String dbName, dbUserName, dbPassword, path, dateFormat, file, host;
                    InetAddress myHost = InetAddress.getLocalHost();
                    host = myHost.getHostName();
                    dbName = "serafil2022";
                    //file = "backup";
                    dbUserName = "root";
                    dbPassword = "";

                    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                    Date date = new Date();
                    dateFormat = sdf.format(date);
                    String backup = "backup";
                    path = "C:/dumps/" + backup + dateFormat + ".sql";
                    session.setAttribute("respaldo", path);
                    response.sendRedirect("admin-backup-complete.jsp");
                    return;
                } else {
                    System.out.println("restore failure ");
                    response.sendRedirect("admin-backup-fail.jsp");
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
