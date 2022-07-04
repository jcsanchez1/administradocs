/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jcsm.controlador;

import com.jcsm.DAO.loginDAO;
import com.jcsm.DAO.personasDAO;
import com.jcsm.entidades.TblFiliales;
import com.jcsm.entidades.TblPersonas;
import com.jcsm.entidades.TblRoles;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author juanc
 */
@WebServlet(name = "personaControlador", urlPatterns = {"/personaControlador"})
public class personaControlador extends HttpServlet {

    private static final long serialVersionUID = 1L;
    TblRoles tir = new TblRoles();
    TblFiliales tfi = new TblFiliales();
    TblPersonas tp = new TblPersonas();
    loginDAO lg = new loginDAO();
    personasDAO pdao = new personasDAO();

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
            TblPersonas per = new TblPersonas();
            int respuesta = 0;
            ArrayList<String> lista = new ArrayList<>();
            try {
                FileItemFactory file = new DiskFileItemFactory();
                ServletFileUpload fileUpload = new ServletFileUpload(file);
                List items = fileUpload.parseRequest(request);
                for (int i = 0; i < items.size(); i++) {
                    FileItem fileitem = (FileItem) items.get(i);
                    if (!fileitem.isFormField()) {
                        File f = new File("C:\\proyecto\\administradocs\\web\\fotos" + fileitem.getName());
                        fileitem.write(f);
                        per.setFoto(f.getName());

                    } else {
                        lista.add(fileitem.getString());
                    }

                }
                per.setIdafiliacion(Long.valueOf(lista.get(1)));
                per.setNombre(lista.get(2));
                per.setApellido(lista.get(3));
                per.setTelefono(Integer.getInteger(lista.get(4)));
                per.setEmail(lista.get(5));
                per.setPassword("81dc9bdb52d04dc20036dbd8313ed055");
                per.setFechanacimiento(Date.valueOf(lista.get(6)));
                per.setGenero(lista.get(7));
                per.setEstado(1);
                tfi.setIdfilial(Integer.getInteger(lista.get(8)));
                per.setIdFilial(tfi);
                if (request.getParameter("guar-adm") != null) {
                    tir.setIdrol(1);
                    per.setIdrol(tir);

                } else if (request.getParameter("guar-afi") != null) {
                    tir.setIdrol(2);
                    per.setIdrol(tir);
                } else if (request.getParameter("guar-caj") != null) {
                    tir.setIdrol(4);
                    per.setIdrol(tir);
                } else if (request.getParameter("guar-cas") != null) {
                    tir.setIdrol(3);
                    per.setIdrol(tir);
                } else if (request.getParameter("guar-edu") != null) {
                    tir.setIdrol(6);
                    per.setIdrol(tir);
                } else if (request.getParameter("guar-pan") != null) {
                    tir.setIdrol(5);
                    per.setIdrol(tir);
                }
                pdao.insertarafiliado(per);
            } catch (Exception e) {

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
