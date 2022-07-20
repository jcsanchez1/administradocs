<%@include file="/comunes/sesion.jsp" %>
<%@include file="/comunes/noatras.jsp" %>
<%@include file="/comunes/validar_educacion.jsp" %>
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
        <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="fotos/${persona.foto}" height="75px" width="75px" alt="User Image">
            <div>
                <p class="app-sidebar__user-name">${persona.nombre}</p>
                <p class="app-sidebar__user-designation">${persona.idrol.nombrerol}</p>
                <p class="app-sidebar__user-designation">${persona.idFilial.nombrefilial}</p>
            </div>
        </div>
        <ul class="app-menu">
            <li><a class="app-menu__item active" href="educacion-index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Instructores</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="educacion-ins-act.jsp"><i class="icon fa fa-circle-o"></i> Activos</a></li>
                    <li><a class="treeview-item" href="educacion-ins-ina.jsp"><i class="icon fa fa-circle-o"></i> Inactivos</a></li>


                </ul>
            </li>

            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Cursos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="form-components.html"><i class="icon fa fa-circle-o"></i> Futuros</a></li>
                    <li><a class="treeview-item" href="form-custom.html"><i class="icon fa fa-circle-o"></i> Actuales</a></li>
                    <li><a class="treeview-item" href="form-samples.html"><i class="icon fa fa-circle-o"></i> Anteriores</a></li>
                    <li><a class="treeview-item" href="form-notifications.html"><i class="icon fa fa-circle-o"></i> Nuevo</a></li>
                </ul>
            </li>
            <li><a class="app-menu__item" href="educacion-cat-cur.jsp"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label"> Categorias de cursos</span></a></li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Votaciones</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="educacion-vot-crea.jsp"><i class="icon fa fa-circle-o"></i> Crear votacion</a></li>
                    <li><a class="treeview-item" href="educacion-vot-ver.jsp"><i class="icon fa fa-circle-o"></i> Ver votaciones</a></li>

                </ul>
            </li>
            <li><a class="app-menu__item" href="educacion-alertas.jsp?idper=${persona.id}"><i class="app-menu__icon fa fa-file-code-o"></i><span class="app-menu__label">Alertas</span></a></li>
        </ul>
    </aside>
    <main class="app-content">
        <div class="app-title">
            <div>
                <h1><i class="fa fa-th-list"></i> COOPERATIVA</h1>
                <p>Sistema Gestion de afiliados</p>
            </div>
        </div>
        <a href="educacion-ale-new.jsp" class="btn btn-primary btn-lg">Nueva Alerta</a>
        <br>
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <div class="tile-body">
                        <div class="table-responsive">
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr class="text-center">
                                        <th>ID</th>
                                        <th>DIA ALERTA</th>
                                        <th>DETALLE</th>
                                        <th>ESTADO</th>

                                        <th>ACCION</th>
                                    </tr>
                                </thead>
                                <%                                String id = request.getParameter("idper");
                                    try {
                                        sql = "SELECT tbl_alertas.idalerta, tbl_alertas.Descripcion, tbl_alertas.diaalerta, tbl_alertas.estado FROM tbl_alertas WHERE tbl_alertas.idpersona = " + b + ";";
                                        rs = cn.ejecutarConsultaprograma(sql);
                                        String a1, a2, a3, a4;
                                %>
                                <tbody class="text-center">
                                    <%
                                        while (rs.next()) {
                                            a1 = rs.getString(1);
                                            a2 = rs.getString(2);
                                            a3 = rs.getString(3);
                                            a4 = rs.getString(4);
                                    %><tr>
                                        <td><%=a1%> </td>
                                        <td><%=a3%></td> 
                                        <td><%=a2%></td> 
                                        <td><% if (a4.equals("1")) {%>
                                            <p class="btn btn-info">Activo</p>
                                            <%} else {
                                            %>
                                            <p class="btn btn-secondary">Inactivo</p>
                                            <%}%></td> 

                                        <td><a class="btn btn-primary" href="educacion-mod-ale.jsp?id=<%=a1%>"> Modificar Estado</a></td> 
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