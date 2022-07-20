<%@include file="/comunes/sesion.jsp" %>
<%@include file="/comunes/noatras.jsp" %>
<%@include file="/comunes/validar_caja.jsp" %>
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
            <li><a class="app-menu__item active" href="caja-index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Turnos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="caja-tur-per-hoy.jsp?id=<%=b%>&idfil=<%=c%>"><i class="icon fa fa-circle-o"></i> Perdidos</a></li>
                    <li><a class="treeview-item" href="caja-tur-ate-hoy.jsp?id=<%=b%>&idfil=<%=c%>"><i class="icon fa fa-circle-o"></i> Atendidos</a></li>
                    <li><a class="treeview-item" href="caja-tur-sin-hoy.jsp?id=<%=b%>&idfil=<%=c%>"><i class="icon fa fa-circle-o"></i> Sin atender</a></li>

                </ul>
            </li>
                        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Historicos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="admin-bit-new.jsp?id=<%=b%>&idfil=<%=c%>"><i class="icon fa fa-circle-o"></i> Perdidos</a></li>
                    <li><a class="treeview-item" href="admin-bit-upd.jsp?id=<%=b%>&idfil=<%=c%>"><i class="icon fa fa-circle-o"></i> Atendidos</a></li>
                    <li><a class="treeview-item" href="admin-bit-del.jsp?id=<%=b%>&idfil=<%=c%>"><i class="icon fa fa-circle-o"></i> Sin atender</a></li>

                </ul>
            </li>
            <li><a class="app-menu__item" href="caja-alertas.jsp?id=<%=b%>"><i class="app-menu__icon fa fa-file-code-o"></i><span class="app-menu__label">Alertas</span></a></li>
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
                    <div class="row">
                        <div class="col-6">
                            <a href="" class="btn btn-primary btn-lg btn-block">Llamar Turno</a>
                        </div>
                        <div class="col-6">
                            <a href="" class="btn btn-danger btn-lg btn-block">Marcar perdido</a>
                        </div>
                    </div>
                    <br><br>
                    <div class="row">
                        <div class="col-6">
                            <a href="" class="btn btn-success btn-lg btn-block">Marcar Atendido</a>
                        </div>
                        <div class="col-6">
                            <a href="" class="btn btn-info btn-lg btn-block">Reasignar Turno</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        This is some text within a card body.
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        This is some text within a card body.
                    </div>
                </div>
            </div>
        </div>
    </main>
    <%@include file="/comunes/footer1.jsp" %>
</body>
</html>