<%@page import="com.jcsm.DAO.personasDAO"%>
<%@page import="com.jcsm.entidades.TblPersonas"%>
<%@page import="com.jcsm.entidades.TblSubservicios"%>
<%@page import="com.jcsm.entidades.TblServicios"%>
<%@page import="com.jcsm.entidades.TblFiliales"%>
<%@page import="com.jcsm.DAO.turnoDAO"%>
<%@page import="com.jcsm.entidades.TblTurnos"%>
<%@page import="com.jcsm.configuracion.Dba"%>
<%@page import="com.jcsm.entidades.seguridad.TblBitacora"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.jcsm.entidades.TblPersonas"%>
<%@page import="com.jcsm.DAO.alertasDAO"%>

<%@page import="com.jcsm.DAO.turnoDAO"%>
<%    if (request.getSession(false) == null) {
        response.sendRedirect("index.jsp");
    }
    TblPersonas pers = new TblPersonas();
    pers = (TblPersonas) session.getAttribute("persona");
    int a, b, c;
    a = pers.getIdrol().getIdrol();
    b = pers.getId();
    c = pers.getIdFilial().getIdfilial();
        alertasDAO adao = new alertasDAO();
    TblBitacora tmp = new TblBitacora();
    turnoDAO tdao= new turnoDAO();
        int respuesta = 0;
    String sql = "";
    ResultSet rs = null;
    Dba cn = new Dba();

%>
<%

    if (a != 1) {
        response.sendRedirect("prohibido.jsp");
    }


%>