<%@include file="/comunes/sesion.jsp" %>
<%@include file="/comunes/noatras.jsp" %>
<%@include file="/comunes/validar_admin.jsp" %>
<%@include file="/comunes/deshabilitar.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
        <!-- Twitter meta-->
        <meta property="twitter:card" content="summary_large_image">
        <meta property="twitter:site" content="@pratikborsadiya">
        <meta property="twitter:creator" content="@pratikborsadiya">
        <!-- Open Graph Meta-->
        <meta property="og:type" content="website">
        <meta property="og:site_name" content="Vali Admin">
        <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
        <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
        <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
        <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
        <title>Sistema de gestion de afiliados - ${persona.nombre} - Administracion</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!-- Font-icon css-->
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body class="app sidebar-mini">
        <!-- Navbar-->
        <header class="app-header"><a class="app-header__logo" href="admin-index.jsp"><img src="images/logo2.png" height="50px" width="150px" alt=""/></a>

            <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
            <!-- Navbar Right Menu-->
            <ul class="app-nav">
                <!--Notification Menu-->
                <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i class="fa fa-bell-o fa-lg"></i></a>
                    <ul class="app-notification dropdown-menu dropdown-menu-right">
                        <li class="app-notification__title"><%
                            int cantidad = adao.existealerta(b);
                            if (cantidad > 0) {
                            %>
                            <p> tiene <%=cantidad%> alertas</p><%
                            } else {
                            %>
                            <p>no tiene alertas</p><%
                                }%>
                        </li></li>
                <div class="app-notification__content">
                    <%                                        try {
                            sql = "SELECT tbl_alertas.Descripcion, tbl_alertas.diaalerta, tbl_alertas.estado FROM tbl_alertas WHERE tbl_alertas.diaalerta = DAY(CURRENT_DATE) AND tbl_alertas.idpersona = " + b + " LIMIT 5";
                            rs = cn.ejecutarConsultaprograma(sql);
                            String a1 = "";
                            while (rs.next()) {
                                a1 = rs.getString(1);
                    %>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message"><%=a1%></p>

                            </div></a></li>
                            <%
                                }
                            %>
                </div>
                <%
                    } catch (Exception e) {
                    }
                %>
            </ul>
        </li>
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">

                <li><a class="dropdown-item" href="admin-perfil.jsp?idper=<%=b%>"><i class="fa fa-user fa-lg"></i> perfil</a></li>
                <form action="loginControlador" method="POST">
                    <li><button name="btn-out" id="btn-out" class="dropdown-item" /><i class="fa fa-sign-out fa-lg"></i> Salir</li>

                </form>
            </ul>
        </li>
    </ul>
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
        <li><a class="app-menu__item active" href="admin-index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Bitacoras</span><i class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="admin-bit-new.jsp"><i class="icon fa fa-circle-o"></i> Registros nuevos</a></li>
                <li><a class="treeview-item" href="admin-bit-upd.jsp"><i class="icon fa fa-circle-o"></i> Registros modificados</a></li>
                <li><a class="treeview-item" href="admin-bit-del.jsp"><i class="icon fa fa-circle-o"></i> Registros eliminados</a></li>

            </ul>
        </li>
        <li><a class="app-menu__item" href="admin-config.jsp"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Configuracion</span></a></li>
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Usuarios</span><i class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item active" href="admin-user-adm-index.jsp"><i class="icon fa fa-circle-o"></i> Administradores</a></li>
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
        <li><a class="app-menu__item" href="admin-backup.jsp"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Respaldo y restauracion</span></a></li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-th-list"></i> COOPERATIVA</h1>
            <p>Sistema de gestion de afiliados</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">Usuarios</li>
            <li class="breadcrumb-item active"><a href="#">Administradores</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <a href="admin-per-new-adm.jsp" class="btn btn-primary">Nuevo usuarios administracion</a><br><br>
        </div>
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered" id="sampleTable">
                            <thead>
                                <tr class="text-center">
                                    <th>Id</th>
                                    <th>Afiliacion</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Telefono</th>
                                    <th>email</th>
                                    <th>password</th>
                                    <th>fechanacimiento</th>
                                    <th>genero</th>
                                    <th>foto</th>
                                    <th>estado</th>
                                    <th>accion</th>

                                </tr>
                            </thead>
                            <%                                        try {
                                    sql = "SELECT tbl_personas.id, tbl_personas.idafiliacion, tbl_personas.nombre, tbl_personas.apellido, tbl_personas.telefono, tbl_personas.email, tbl_personas.`password`, tbl_personas.idrol, tbl_roles.nombrerol, tbl_personas.estado, tbl_personas.fechanacimiento, tbl_personas.id_filial, tbl_personas.genero, tbl_personas.foto FROM tbl_personas INNER JOIN tbl_roles ON tbl_personas.idrol = tbl_roles.idrol WHERE tbl_personas.idrol = 1";
                                    rs = cn.ejecutarConsultaprograma(sql);
                                    String id, idafiliacion, nombre, apellido, telefono, email, password, estado, fechanacimiento, genero, foto;
                            %>
                            <tbody class="text-center">
                                <%
                                    while (rs.next()) {
                                        id = rs.getString(1);
                                        idafiliacion = rs.getString(2);
                                        nombre = rs.getString(3);
                                        apellido = rs.getString(4);
                                        telefono = rs.getString(5);
                                        email = rs.getString(6);
                                        password = rs.getString(7);
                                        fechanacimiento = rs.getString(11);
                                        genero = rs.getString(13);
                                        foto = rs.getString(14);
                                        estado = rs.getString(10);
                                %><tr>
                                    <td><%=id%> </td>
                                    <td><%=idafiliacion%></td> 
                                    <td><%=nombre%></td> 
                                    <td><%=apellido%></td> 
                                    <td><%=telefono%></td>
                                    <td><%=email%></td>
                                    <td><input type="password" class="border-0" disabled="disabled" value="<%=password%>"></</td>
                                    <td><%=fechanacimiento%></td>
                                    <td><% if (genero.equals("f")) {%>
                                        <i class="fa fa-female" aria-hidden="true"></i>
                                        <%} else {
                                        %>
                                        <i class="fa fa-male" aria-hidden="true"></i>
                                        <%}%></td>
                                    <<td><img height="100px" width="100px" src="fotos/<%=foto%>"></td>
                                    <td><% if (estado.equals("1")) {%>
                                        <p class="btn btn-info">Activo</p>
                                        <%} else {
                                        %>
                                        <p class="btn btn-secondary">Inactivo</p>
                                        <%}%></td> 
                                    <td>
                                        <a href="sac-afi-mod.jsp?id=<%=id%>" class="btn btn-info">modificar</a>
                                        <a href="sac-afi-cam.jsp?id=<%=id%>"class="btn btn-secondary">Cambiar estado</a>
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
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">$('#sampleTable').DataTable();</script>
<!-- Google analytics script-->
<script type="text/javascript">
    if (document.location.hostname == 'pratikborsadiya.in') {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
</script>
</body>
</html>