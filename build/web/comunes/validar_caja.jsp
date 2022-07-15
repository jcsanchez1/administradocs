<%@page import="com.jcsm.configuracion.Dba"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.jcsm.entidades.seguridad.TblBitacora"%>
<%@page import="com.jcsm.entidades.TblPersonas"%>
<%@page import="com.jcsm.DAO.alertasDAO"%>
<%@page import="com.jcsm.DAO.turnoDAO"%>
<%
        TblPersonas pers = new TblPersonas();
    pers = (TblPersonas) session.getAttribute("persona");
    int a, b;
    a = pers.getIdrol().getIdrol();
    b = pers.getId();
        alertasDAO adao = new alertasDAO();
    TblBitacora tmp = new TblBitacora();
    turnoDAO tdao = new turnoDAO();
    int respuesta = 0;
    String sql = "";
    ResultSet rs = null;
    Dba cn = new Dba();
    
    if (request.getSession(false) == null) {
        response.sendRedirect("index.jsp");
    }
%>
<%

    if (a != 4) {
        response.sendRedirect("prohibido.jsp");
    }

%>
<%-- 
    Document   : validar_caja
    Created on : 07-11-2022, 02:48:14 PM
    Author     : juanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
