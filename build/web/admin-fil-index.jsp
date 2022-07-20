<%@include file="/comunes/sesion.jsp" %>
<%@include file="/comunes/noatras.jsp" %>
<%@include file="/comunes/validar_admin.jsp" %>
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
            <li><a class="app-menu__item active" href="admin-index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Bitacoras</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="admin-bit-new.jsp"><i class="icon fa fa-circle-o"></i> Registros nuevos</a></li>
                    <li><a class="treeview-item" href="admin-bit-upd.jsp"><i class="icon fa fa-circle-o"></i> Registros modificados</a></li>
                    <li><a class="treeview-item" href="admin-bit-del.jsp"><i class="icon fa fa-circle-o"></i> Registros eliminados</a></li>

                </ul>
            </li>
            <li><a class="app-menu__item" href="admin-config.jsp"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Configuracion</span></a></li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Usuarios</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item " href="admin-user-adm-index.jsp"><i class="icon fa fa-circle-o"></i> Administradores</a></li>
                    <li><a class="treeview-item" href="admin-user-afi-index.jsp"><i class="icon fa fa-circle-o"></i> Afiliados</a></li>
                    <li><a class="treeview-item" href="admin-user-sac-index.jsp"><i class="icon fa fa-circle-o"></i> Servicio al Afiliado</a></li>
                    <li><a class="treeview-item" href="admin-user-caj-index.jsp"><i class="icon fa fa-circle-o"></i> Caja</a></li>
                    <li><a class="treeview-item" href="admin-user-pan-index.jsp"><i class="icon fa fa-circle-o"></i> Pantalla</a></li>  
                    <li><a class="treeview-item" href="admin-user-edu-index.jsp"><i class="icon fa fa-circle-o"></i> Educacion</a></li>                           
                </ul>
            </li>
            <li><a class="app-menu__item active" href="admin-fil-index.jsp"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Filiales</span></a></li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label"> Servicios</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="admin-ser-servicio.jsp"><i class="icon fa fa-circle-o"></i> Servicios</a></li>
                    <li><a class="treeview-item" href="admin-ser-subservicio.jsp"><i class="icon fa fa-circle-o"></i> Sub Servicios</a></li>
                </ul>
            </li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Empleados</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="admin-emp-new-caj.jsp"><i class="icon fa fa-circle-o"></i> Caja</a></li>
                    <li><a class="treeview-item" href="admin-emp-new-csa.jsp"><i class="icon fa fa-circle-o"></i> Servicio al cliente</a></li>
                    <li><a class="treeview-item" href="admin-emp-new-pan.jsp"><i class="icon fa fa-circle-o"></i> Pantalla</a></li>
                    <li><a class="treeview-item" href="admin-emp-puesto.jsp"><i class="icon fa fa-circle-o"></i> Puestos</a></li>

                </ul>
            </li>
            <li><a class="app-menu__item" href="admin-alertas.jsp?idper=<%=b%>"><i class="app-menu__icon fa fa-file-code-o"></i><span class="app-menu__label"> Alertas</span></a></li>
            <li><a class="app-menu__item" href="admin-backup.jsp"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Respaldo y restauracion</span></a></li>
        </ul>
    </aside>
    <main class="app-content">
        <div class="app-title">
        <%@include file="/comunes/appname.jsp" %>

        </div>
        <div class="row">
            <div class="col-md-12">
                <a href="admin-per-new-adm.jsp" class="btn btn-primary">Nuevo filial</a><br><br>
            </div>
            <div class="col-md-12">
                <div class="tile">
                    <div class="tile-body">
                        <div class="table-responsive">
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr class="text-center">
                                        <th>Id</th>
                                        <th>filial</th>
                                        <th>direccion</th>
                                        <th>latitud</th>
                                        <th>longitud</th>
                                        <th>telefono</th>
                                        <th>email</th>
                                        <th>horarios semana</th>
                                        <th>horarios fines</th>
                                        <th>municipio</th>
                                        <th>Detalles</th>

                                    </tr>
                                </thead>
                                <%                                        try {
                                        sql = "SELECT tbl_filiales.idfilial, tbl_filiales.nombrefilial, tbl_filiales.direccion, tbl_filiales.latitud, tbl_filiales.longitud, tbl_filiales.telefono, tbl_filiales.correo, tbl_filiales.horariosemana, tbl_filiales.horariofinsemana, tbl_filiales.idmunicipio, tbl_municipios.municipio FROM tbl_filiales INNER JOIN tbl_municipios ON tbl_filiales.idmunicipio = tbl_municipios.idtbl_municipios";
                                        rs = cn.ejecutarConsultaprograma(sql);
                                        String a1, a2, a3, a4, a5, a6, a7, a8, a9, a10;
                                        String id, idafiliacion, nombre, apellido, telefono, email, password, estado, fechanacimiento, genero, foto;
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
                                            a8 = rs.getString(8);
                                            a9 = rs.getString(9);
                                            a10 = rs.getString(11);
                                    %><tr>
                                        <td><%=a1%> </td>
                                        <td><%=a2%></td> 
                                        <td><%=a3%></td> 
                                        <td><%=a4%></td> 
                                        <td><%=a5%></td>
                                        <td><%=a6%></td>
                                        <td><%=a7%></td>
                                        <td><%=a8%></td>
                                        <td><%=a9%></td>
                                        <td><%=a10%></td>
                                        <td>       
                                            <a href="admin-fil-ser.jsp?id=<%=a1%>"class="btn btn-primary">Servicios</a><br>
                                            <a href="admin-fil-pue.jsp?id=<%=a1%>"class="btn btn-secondary">Puestos</a><br>
                                            <a href="admin-fil-emp.jsp?id=<%=a1%>"class="btn btn-success">Empleados</a>
                                        </td>
                                    </tr>
                                    <% } %>
                                </tbody>
                                <%
                                    } catch (Exception e) {
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