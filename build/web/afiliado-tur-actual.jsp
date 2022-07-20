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
            <li><a class="app-menu__item active" href="afiliado-index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
            <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Turnos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="afiliado-ubi-select.jsp"><i class="icon fa fa-circle-o"></i> Nuevo Turno</a></li>
                    <li><a class="treeview-item" href="afiliado-tur-list.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Ver mis tickets</a></li>
                    <li><a class="treeview-item active" href="afiliado-tur-actual.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Ver ticket actual</a></li>

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
                <h1><i class="fa fa-dashboard"></i> Dashboard</h1>
                <p>Sistema de gestion de afiliados</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <%                try {
                        sql = "SELECT CONCAT(tbl_personas.nombre,' ', tbl_personas.apellido) AS afiliado, tbl_roles.nombrerol, tbl_servicios.servicio, tbl_filiales.nombrefilial,tbl_turnos.fechacreacion, tbl_turnos.tipo, MAX(tbl_turnos.correlativoturno) as correlativo FROM tbl_turnos INNER JOIN tbl_personas ON tbl_turnos.idpersona = tbl_personas.id INNER JOIN tbl_servicios ON tbl_turnos.idservicio = tbl_servicios.idservicios INNER JOIN tbl_filiales ON tbl_turnos.idfilial = tbl_filiales.idfilial INNER JOIN tbl_roles ON tbl_personas.idrol = tbl_roles.idrol WHERE tbl_turnos.idpersona = " + b + " AND tbl_turnos.fechacreacion = CURRENT_DATE()";
                        rs = cn.ejecutarConsultaprograma(sql);
                        String a1 = "", a2 = " ", a3 = " ", a4 = " ", a5 = " ", a6 = " ", a7 = " ";
                        while (rs.next()) {
                            a1 = rs.getString(1);
                            a2 = rs.getString(2);
                            a3 = rs.getString(3);
                            a4 = rs.getString(4);
                            a5 = rs.getString(5);
                            a6 = rs.getString(6);
                            a7 = rs.getString(7);
                        }
                %>
                <section class="vh-100" style="background-color: #9de2ff;">
                    <div class="container py-5 h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col col-md-9 col-lg-7 col-xl-5">
                                <div class="card" style="border-radius: 15px;">
                                    <div class="card-body p-4">
                                        <div class="d-flex text-black">
                                            <div class="flex-shrink-0">
                                                <img src="fotos/${persona.foto}"
                                                     alt="Generic placeholder image" class="img-fluid"
                                                     style="width: 180px; border-radius: 10px;">
                                            </div>
                                            <div class="flex-grow-1 ms-3 text-center">
                                                <h5 class="mb-1">${persona.nombre}</h5>
                                                <p class="mb-1 " style="color: #2b2a2a;">${persona.idrol.nombrerol}</p>
                                                <p class="mb-1 " style="color: #2b2a2a;"><%=a4%></p>
                                                <p class="mb-1 " style="color: #2b2a2a;">${turno.tipo}</p>
                                                <p class="mb-1" style="color: #2b2a2a;"><strong>turno</strong></p>
                                                <h3 class="mb-1"><%=a7%></h3>
                                                <p class="mb-1 " style="color: #2b2a2a;"><%=a3%></p>

                                                <p class="mb-1 " style="color: #2b2a2a;"><%=a5%></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <%
                    } catch (Exception e) {
                    }
                %>
            </div>
        </div>
    </div>
</main>
<!-- Essential javascripts for application to work-->
    <%@include file="/comunes/footer1.jsp" %>
</body>
</html>