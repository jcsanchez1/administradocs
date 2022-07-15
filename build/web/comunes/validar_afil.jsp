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

    if (a != 2) {
        response.sendRedirect("prohibido.jsp");
    }

%>