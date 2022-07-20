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
                <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Hoy</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                    <ul class="treeview-menu">
                        <li><a class="treeview-item" href="pantalla-tur-hoy-act.jsp"><i class="icon fa fa-circle-o"></i> Actuales</a></li>
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
                    <h1><i class="fa fa-dashboard"></i> COOPERATIVA</h1>
                    <p>Sistema de gestion de afiliados</p>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div class="tile-body">Create a beautiful dashboard</div>
                    </div>
                </div>
            </div>
        </main>
        <%@include file="/comunes/footer1.jsp" %>
    </body>
</html>