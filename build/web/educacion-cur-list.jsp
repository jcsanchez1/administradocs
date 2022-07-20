<%@include file="/comunes/sesion.jsp" %>
<%@include file="/comunes/noatras.jsp" %>
<%@include file="/comunes/validar_educacion.jsp" %>
<%@include file="/comunes/deshabilitar.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="/comunes/head1.jsp" %>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
            <li><a class="app-menu__item active" href="educacion-index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
            <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Instructores</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item active" href="educacion-ins-act.jsp"><i class="icon fa fa-circle-o"></i> Activos</a></li>
                    <li><a class="treeview-item" href="educacion-ins-ina.jsp"><i class="icon fa fa-circle-o"></i> Inactivos</a></li>


                </ul>
            </li>

            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Cursos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="educacion-cur-fut.jsp"><i class="icon fa fa-circle-o"></i> Futuros</a></li>
                    <li><a class="treeview-item" href="educacion-cur-act.jsp"><i class="icon fa fa-circle-o"></i> Actuales</a></li>
                    <li><a class="treeview-item" href="educacion-cur-ant.jsp"><i class="icon fa fa-circle-o"></i> Anteriores</a></li>
                    <li><a class="treeview-item" href="educacion-cur-new.jsp"><i class="icon fa fa-circle-o"></i> Nuevo</a></li>
                </ul>
            </li>
            <li><a class="app-menu__item" href="educacion-cat-cur.jsp"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label"> Categorias de cursos</span></a></li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Votaciones</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="educacion-vot-crea.jsp"><i class="icon fa fa-circle-o"></i> Crear votacion</a></li>
                    <li><a class="treeview-item" href="educacion-vot-ver.jsp"><i class="icon fa fa-circle-o"></i> Ver votaciones</a></li>

                </ul>
            </li>
            <li><a class="app-menu__item active" href="educacion-alertas.jsp?idper=${persona.id}"><i class="app-menu__icon fa fa-file-code-o"></i><span class="app-menu__label">Alertas</span></a></li>
        </ul>
    </aside>
    <main class="app-content">
        <div class="app-title">
            <div>
                <h1><i class="fa fa-dashboard"></i> COOPERATIVA</h1>
                <p>Sistema de gestion de afiliados</p>
            </div>
        </div>

        <a href="educacion-ins-new.jsp" class="btn btn-primary btn-lg">Nuevo</a><br><br>
        <div class="row">

            <div class="col-md-12">

                <div class="tile">
                    <div class="tile-body">
                        <div class="table-responsive">
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr class="text-center">
                                        <th>No</th>
                                        <th>Instructor</th>
                                        <th>Correo</th>
                                        <th>Genero</th>
                                        <th>Telefono</th>
                                        <th>Cumpleaños</th>
                                        <th>Identidad</th>
                                        <th>Cursos</th>
                                        <th>Acciones</th>

                                    </tr>
                                </thead>
                                <%                                        try {
                                        sql = "SELECT tbl_instructores.instid as 'No', CONCAT(tbl_instructores.nombre, ' ', tbl_instructores.apellido) as instructor, tbl_instructores.correo, tbl_instructores.genero, tbl_instructores.telefono, tbl_instructores.fechanacimiento, tbl_instructores.identidad FROM tbl_instructores WHERE tbl_instructores.estado = 1";
                                        rs = cn.ejecutarConsultaprograma(sql);
                                        String a1 = "", a2 = "", a3 = "", a4 = "", a5 = "", a6 = "", a7 = "", a8 = "";
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
                                            a7 = rs.getString(7);

                                    %><tr>
                                        <td><%=a1%> </td>
                                        <td><%=a2%></td> 
                                        <td><%=a3%></td> 
                                        <td><% if (a4.equals("f")) {%>
                                            <i class="fa fa-female" aria-hidden="true"></i>
                                            <%} else {
                                            %>
                                            <i class="fa fa-male" aria-hidden="true"></i>
                                            <%}%></td>
                                        <td><%=a5%></td>
                                        <td><%=a6%></td>
                                        <td><%=a7%></td>
                                        <td><a href="educacion-cur-list.jsp?instid=<%=a1%>">Ver</a> </td>
                                        <td><a href="educacion-ins-mod.jsp?instid=<%=a1%>" class="btn btn-primary">Modificar</a> <br><br>
                                            <a href="educacion-ins-cam.jsp?instid=<%=a1%>" class="btn btn-secondary">Cambiar Estado</a> </td>                                            

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