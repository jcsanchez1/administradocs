<%@include file="/comunes/noatras.jsp" %>
<%@include file="/comunes/sesion.jsp" %>
<%@include file="/comunes/validar_afil.jsp" %>
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
            <li><a class="app-menu__item" href="afiliado-index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
            <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Turnos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="afiliado-ubi-select.jsp"><i class="icon fa fa-circle-o"></i> Nuevo Turno</a></li>
                    <li><a class="treeview-item active" href="afiliado-tur-list.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Ver mis tickets</a></li>
                    <li><a class="treeview-item" href="afiliado-tur-actual.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Ver ticket actual</a></li>

                </ul>
            </li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Cursos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="afiliado-cur-dis.jsp"><i class="icon fa fa-circle-o"></i> Disponibles</a></li>
                    <li><a class="treeview-item" href="afiliado-cur-ins.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Inscritos</a></li>
                    <li><a class="treeview-item" href="afiliado-cur-ant.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Anteriores</a></li>
                    <li><a class="treeview-item" href="afiliado-cur-dip.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Diplomas</a></li>
                </ul>
            </li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Votaciones</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="afiliado-vot-votar.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Votar</a></li>
                    <li><a class="treeview-item" href="afiliado-vot-ant.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Votaciones Anteriores</a></li>
                </ul>
            </li>
            <li><a class="app-menu__item" href="afiliado-alertas.jsp?idper=${persona.id}"><i class="app-menu__icon fa fa-file-code-o"></i><span class="app-menu__label">Alertas</span></a></li>
        </ul>
    </aside>
    <main class="app-content">
        <div class="app-title">
            <div>
                <h1><i class="fa fa-th-list"></i> Bitacoras</h1>
                <p>Bitacora de inserciones de datos nuevos</p>
            </div>
            <ul class="app-breadcrumb breadcrumb side">
                <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
                <li class="breadcrumb-item">Bitacoras</li>
                <li class="breadcrumb-item active"><a href="#">Inserts</a></li>
            </ul>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <div class="tile-body">
                        <div class="table-responsive">
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr class="text-center">
                                        <th>ID</th>
                                        <th>DNI</th>
                                        <th>AFILIADO</th>
                                        <th>CORRELATIVO</th>
                                        <th>SERVICIO</th>
                                        <th>FECHA</th>
                                        <th>FILIAL</th>
                                        <th>ESTADO</th>
                                        <th>ACCCION</th>
                                    </tr>
                                </thead>
                                <%                                String id = request.getParameter("idper");
                                    try {
                                        sql = "SELECT tbl_turnos.idturno, tbl_personas.idafiliacion, CONCAT(tbl_personas.nombre, ' ', tbl_personas.apellido) AS afiliado, tbl_turnos.correlativoturno, tbl_servicios.servicio, tbl_turnos.fechacreacion, tbl_turnos.estado, tbl_turnos.idfilial, tbl_turnos.idpersona, tbl_turnos.idservicio, tbl_filiales.nombrefilial FROM tbl_turnos INNER JOIN tbl_personas ON tbl_turnos.idpersona = tbl_personas.id INNER JOIN tbl_filiales ON tbl_turnos.idfilial = tbl_filiales.idfilial INNER JOIN tbl_servicios ON tbl_turnos.idservicio = tbl_servicios.idservicios WHERE tbl_turnos.idpersona =" + request.getParameter("idper") + " ORDER BY tbl_turnos.fechacreacion ASC, tbl_turnos.correlativoturno ASC;";
                                        rs = cn.ejecutarConsultaprograma(sql);
                                        String a1, a2, a3, a4, a5, a6, a7, a8;
                                %>
                                <tbody class="text-center">
                                    <%
                                        while (rs.next()) {
                                            a1 = rs.getString(1);
                                            a2 = rs.getString(2);
                                            a3 = rs.getString(3);
                                            a4 = rs.getString(4);
                                            a5 = rs.getString(5);
                                            a6 = rs.getString(6);
                                            a7 = rs.getString(11);
                                            a8 = rs.getString(7);
                                    %><tr>
                                        <td><%=a1%> </td>
                                        <td><%=a2%></td> 
                                        <td><%=a3%></td> 
                                        <td><%=a4%></td> 
                                        <td><%=a5%></td>
                                        <td><%=a6%></td>
                                        <td><%=a7%></td>
                                        <td><% if (a8.equals("4")) {%>
                                            <p class="btn btn-danger">Perdido</p>
                                            <%} else if (a8.equals("1")) {
                                            %>
                                            <p class="btn btn-secondary">No atendido</p>
                                            <%} else if (a8.equals("3")) {
                                            %>
                                            <p class="btn btn-info">Atendido</p>
                                            <%} else if (a8.equals("2")) { %>
                                            <p class="btn btn-success">Atendiendo</p>
                                            <%}%>
                                        </td> 
                                        <td><% if (a8.equals("3")) {%>
                                            <a href="alifiado-feebback.jsp?id=<%=a1%>" class="btn btn-primary">feedback</a>
                                            <%} else {%>
                                            
                                            <%}%>
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