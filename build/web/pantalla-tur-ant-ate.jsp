<%@page import="com.jcsm.configuracion.Dba"%>
<%@page import="com.jcsm.entidades.seguridad.TblBitacora"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.jcsm.entidades.TblPersonas"%>
<%
    String idfil = "";
    if (request.getSession(false) == null) {
        response.sendRedirect("index.jsp");
    }
%>
<%
    TblPersonas pers = new TblPersonas();
    pers = (TblPersonas) session.getAttribute("persona");
    int a;
    a = pers.getIdrol().getIdrol();
    if (a != 5) {
        response.sendRedirect("prohibido.jsp");
    }
    idfil = String.valueOf(pers.getIdFilial().getIdfilial());
%>
<%
    TblBitacora tmp = new TblBitacora();
    int respuesta = 0;
    String sql = "";
    ResultSet rs = null;
    Dba cn = new Dba();
%>
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
                <li class="app-search">
                    <input class="app-search__input" type="search" placeholder="Search">
                    <button class="app-search__button"><i class="fa fa-search"></i></button>
                </li>
                <!--Notification Menu-->
                <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i class="fa fa-bell-o fa-lg"></i></a>
                    <ul class="app-notification dropdown-menu dropdown-menu-right">
                        <li class="app-notification__title">You have 4 new notifications.</li>
                        <div class="app-notification__content">
                            <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                                    <div>
                                        <p class="app-notification__message">Lisa sent you a mail</p>
                                        <p class="app-notification__meta">2 min ago</p>
                                    </div></a></li>
                            <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                                    <div>
                                        <p class="app-notification__message">Mail server not working</p>
                                        <p class="app-notification__meta">5 min ago</p>
                                    </div></a></li>
                            <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                                    <div>
                                        <p class="app-notification__message">Transaction complete</p>
                                        <p class="app-notification__meta">2 days ago</p>
                                    </div></a></li>
                            <div class="app-notification__content">
                                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                                        <div>
                                            <p class="app-notification__message">Lisa sent you a mail</p>
                                            <p class="app-notification__meta">2 min ago</p>
                                        </div></a></li>
                                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                                        <div>
                                            <p class="app-notification__message">Mail server not working</p>
                                            <p class="app-notification__meta">5 min ago</p>
                                        </div></a></li>
                                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                                        <div>
                                            <p class="app-notification__message">Transaction complete</p>
                                            <p class="app-notification__meta">2 days ago</p>
                                        </div></a></li>
                            </div>
                        </div>
                        <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
                    </ul>
                </li>
                <!-- User Menu-->
                <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
                    <ul class="dropdown-menu settings-menu dropdown-menu-right">
                        <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
                        <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> Profile</a></li>
                        <li><a class="dropdown-item" href="page-login.html"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
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
                <li><a class="app-menu__item " href="admin-index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Turnos</span></a></li>
                <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Hoy</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                    <ul class="treeview-menu">
                        <li><a class="treeview-item" href="pantalla-tur-hoy-act.jsp"><i class="icon fa fa-circle-o"></i> Actuales</a></li>
                        <li><a class="treeview-item" href="pantalla-tur-hoy-ate.jsp"><i class="icon fa fa-circle-o"></i> Atendidos</a></li>
                        <li><a class="treeview-item" href="pantalla-tur-hoy-noa.jsp"><i class="icon fa fa-circle-o"></i> Sin Atender</a></li>
                        <li><a class="treeview-item" href="pantalla-tur-hoy-per.jsp"><i class="icon fa fa-circle-o"></i> Perdidos</a></li>

                    </ul>
                </li>
                <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Anteriores</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                    <ul class="treeview-menu">
                        <li><a class="treeview-item active" href="pantalla-tur-ant-ate.jsp"><i class="icon fa fa-circle-o"></i> Atendidos</a></li>
                        <li><a class="treeview-item" href="pantalla-tur-ant-per.jsp"><i class="icon fa fa-circle-o"></i> Perdidos</a></li>
                    </ul>
                </li>
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
                                            <th>Numero Turno</th>
                                            <th>Servicio</th>
                                            <th>Afiliacion</th>
                                            <th>Afiliado</th>
                                            <th>Filial</th>
                                            <th>Estado</th>
                                            <th>Tipo</th>

                                        </tr>
                                    </thead>
                                    <%
                                        try {
                                            sql = "SELECT tbl_turnos.correlativoturno as numeroturno, tbl_servicios.servicio, tbl_personas.idafiliacion, CONCAT(tbl_personas.nombre, ' ', tbl_personas.apellido) AS afiliado, tbl_filiales.nombrefilial, tbl_turnos.fechacreacion, tbl_turnos.estado, tbl_turnos.tipo FROM tbl_turnos INNER JOIN tbl_servicios ON tbl_turnos.idservicio = tbl_servicios.idservicios INNER JOIN tbl_personas ON tbl_turnos.idpersona = tbl_personas.id INNER JOIN tbl_filiales ON tbl_turnos.idfilial = tbl_filiales.idfilial WHERE tbl_turnos.idfilial =" + idfil + "  AND tbl_turnos.fechacreacion < CURRENT_DATE() AND tbl_turnos.estado = 3";
                                            rs = cn.ejecutarConsultaprograma(sql);
                                            String a1 = "", a2 = "", a3 = "", a4 = "", a5 = "", a6 = "", a7 = "";
                                    %>
                                    <tbody>
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
                                            <td><%=a4%></td> 
                                            <td><%=a5%></td>
                                            <td><%=a6%></td>
                                            <td><% if (a7.equals("4")) {%>
                                                <p class="btn btn-danger">Perdido</p>
                                                <%} else if (a7.equals("1")) {
                                                %>
                                                <p class="btn btn-secondary">No atendido</p>
                                                <%} else if (a7.equals("3")) {
                                                %>
                                                <p class="btn btn-success">Atendido</p>
                                                <%} else if (a7.equals("2")) { %>
                                                <p class="btn btn-success">Atendiendo</p>
                                                <%}%>
                                            </td> 
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