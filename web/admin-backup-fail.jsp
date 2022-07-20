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
                    <li><a class="treeview-item" href="admin-user-adm-index.jsp"><i class="icon fa fa-circle-o"></i> Administradores</a></li>
                    <li><a class="treeview-item" href="admin-user-afi-index.jsp"><i class="icon fa fa-circle-o"></i> Afiliados</a></li>
                    <li><a class="treeview-item" href="admin-user-sac-index.jsp"><i class="icon fa fa-circle-o"></i> Servicio al Afiliado</a></li>
                    <li><a class="treeview-item" href="admin-user-caj-index.jsp"><i class="icon fa fa-circle-o"></i> Caja</a></li>
                    <li><a class="treeview-item" href="admin-user-pan-index.jsp"><i class="icon fa fa-circle-o"></i> Pantalla</a></li>  
                    <li><a class="treeview-item" href="admin-user-edu-index.jsp"><i class="icon fa fa-circle-o"></i> Educacion</a></li>                           
                </ul>
            </li>
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
            <li><a class="app-menu__item active" href="admin-backup.jsp"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Respaldo y restauracion</span></a></li>
        </ul>
    </aside>
    <main class="app-content">
        <div class="app-title">
            <%@include file="/comunes/appname.jsp" %>

        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header text-center">
                        <img class="text-center" src="images/db.png" height="200" width="325" alt=""/>                        
                    </div>
                    <div class="card-body">
                        <div class="alert alert-danger" role="alert">
                            <p>Vaya algo ha salido mal, por favor ponte en contacto con el administrador.</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <%@include file="/comunes/footer1.jsp" %>
</body>
</html>