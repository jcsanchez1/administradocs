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
                <li><a class="treeview-item active" href="afiliado-ubi-select.jsp"><i class="icon fa fa-circle-o"></i> Nuevo Turno</a></li>
                <li><a class="treeview-item" href="afiliado-tur-list.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Ver mis tickets</a></li>
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
            <h1><i class="fa fa-dashboard"></i> COOPERATIVA</h1>
            <p>Sistema de gestion de afiliados</p>
        </div>

    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <h5 class="card-header">Ticket</h5>
                <div class="card-body">
                    <h5 class="card-title">Nuevo ticket</h5>
                    <p class="card-text">Selecciones una opcion:</p>
                    <div class="row">
                        <div class="col-6 text-center">
                            <a href="afiliado-ubi-sel-fil.jsp"><img src="images/building.png">
                                <p>por filial</p></a>
                        </div>
                        <div class="col-6 text-center">
                            <a href="afiliado-ubi-sel-map.jsp"><img src="images/location.png">
                                <p>por ubicacion</p></a>
                        </div>                                
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
        <%@include file="/comunes/footer1.jsp" %>
</body>
</html>