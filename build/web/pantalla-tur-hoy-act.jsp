<%@include file="/comunes/sesion.jsp" %>
<%@include file="/comunes/noatras.jsp" %>
<%@include file="/comunes/validar_pantalla.jsp" %>
<%@include file="/comunes/deshabilitar.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="/comunes/head1.jsp" %>
    </head>
    <body class="app sidebar-mini">
        <!-- Navbar-->
        <%@include file="/comunes/logo.jsp" %>

        <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
        <!-- Navbar Right Menu-->
        <%@include file="/comunes/navbar.jsp" %>
    </header>
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">

        <%@include file="/comunes/avatar.jsp" %>
        <ul class="app-menu">
            <li><a class="app-menu__item active" href="pantalla-index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
            <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Hoy</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item active" href="pantalla-tur-hoy-act.jsp"><i class="icon fa fa-circle-o"></i> Actuales</a></li>
                    <li><a class="treeview-item" href="pantalla-tur-hoy-ate.jsp"><i class="icon fa fa-circle-o"></i> Atendidos</a></li>
                    <li><a class="treeview-item" href="pantalla-tur-hoy-noa.jsp"><i class="icon fa fa-circle-o"></i> Sin Atender</a></li>
                    <li><a class="treeview-item" href="pantalla-tur-hoy-per.jsp"><i class="icon fa fa-circle-o"></i> Perdidos</a></li>

                </ul>
            </li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Anteriores</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="pantalla-tur-ant-ate.jsp"><i class="icon fa fa-circle-o"></i> Atendidos</a></li>
                    <li><a class="treeview-item" href="pantalla-tur-ant-per.jsp"><i class="icon fa fa-circle-o"></i> Perdidos</a></li>
                </ul>
            </li>
        </ul>
    </aside>
    <main class="app-content">
        <div class="app-title">
            <div>
                <h1><i class="fa fa-th-list"></i> Bitacoras</h1>
                <p>Bitacora de inserciones de datos nuevos</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <div class="tile-body">
                        <div class="table-responsive">
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr class="text-center">
                                        <th>Numero Turno</th>
                                        <th>Servicio</th>
                                        <th>Afiliacion</th>
                                        <th>Afiliado</th>
                                        <th>Filial</th>
                                        <th>Estado</th>
                                        <th>Tipo</th>

                                    </tr>
                                </thead>
                                <%                                        try {
                                        sql = "SELECT tbl_turnos.correlativoturno as numeroturno, tbl_servicios.servicio, tbl_personas.idafiliacion, CONCAT(tbl_personas.nombre, ' ', tbl_personas.apellido) AS afiliado, tbl_filiales.nombrefilial, tbl_turnos.fechacreacion, tbl_turnos.estado, tbl_turnos.tipo FROM tbl_turnos INNER JOIN tbl_servicios ON tbl_turnos.idservicio = tbl_servicios.idservicios INNER JOIN tbl_personas ON tbl_turnos.idpersona = tbl_personas.id INNER JOIN tbl_filiales ON tbl_turnos.idfilial = tbl_filiales.idfilial WHERE tbl_turnos.idfilial =" + idfil + "  AND tbl_turnos.fechacreacion = CURRENT_DATE() AND tbl_turnos.estado = 2";
                                        rs = cn.ejecutarConsultaprograma(sql);
                                        String a1 = "", a2 = "", a3 = "", a4 = "", a5 = "", a6 = "", a7 = "";
                                %>
                                <tbody>
                                    <%
                                        while (rs.next()) {
                                            a1 = rs.getString(1);
                                            a2 = rs.getString(2);
                                            a3 = rs.getString(3);
                                            a4 = rs.getString(4);
                                            a5 = rs.getString(5);
                                            a6 = rs.getString(6);
                                            a7 = rs.getString(7);
                                    %><tr>
                                        <td><%=a1%> </td>
                                        <td><%=a2%></td> 
                                        <td><%=a3%></td> 
                                        <td><%=a4%></td> 
                                        <td><%=a5%></td>
                                        <td><%=a6%></td>
                                        <td><% if (a7.equals("4")) {%>
                                            <p class="btn btn-danger">Perdido</p>
                                            <%} else if (a7.equals("1")) {
                                            %>
                                            <p class="btn btn-secondary">No atendido</p>
                                            <%} else if (a7.equals("3")) {
                                            %>
                                            <p class="btn btn-success">Atendido</p>
                                            <%} else if (a7.equals("2")) { %>
                                            <p class="btn btn-success">Atendiendo</p>
                                            <%}%>
                                        </td> 
                                    </tr>
                                    <% } %>
                                </tbody>
                                <%
                                    } catch (Exception e) {
                                    } finally {
                                        cn.desconectar();
                                    }
                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <%@include file="/comunes/footer2.jsp" %>
</body>
</html>