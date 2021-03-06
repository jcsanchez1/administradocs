<%@page import="com.jcsm.entidades.TblPersonas"%>
<%
    if (request.getSession(false) == null) {
        response.sendRedirect("index.jsp");
    }
%>
<%
    TblPersonas pers = new TblPersonas();
    pers = (TblPersonas) session.getAttribute("persona");
    int a;
    a = pers.getIdrol().getIdrol();
    if (a != 1) {
        response.sendRedirect("prohibido.jsp");
    }
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
                        <form action="loginControlador" method="POST">
                            <li><button name="btn-out" id="btn-out" class="dropdown-item" /><i class="fa fa-sign-out fa-lg"></i> Logout</li>

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
                <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Filiales</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                    <ul class="treeview-menu">
                        <li><a class="treeview-item" href="table-basic.html"><i class="icon fa fa-circle-o"></i> Basic Tables</a></li>
                        <li><a class="treeview-item" href="table-data-table.html"><i class="icon fa fa-circle-o"></i> Data Tables</a></li>
                    </ul>
                </li>
                <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Empleados</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                    <ul class="treeview-menu">
                        <li><a class="treeview-item" href="blank-page.html"><i class="icon fa fa-circle-o"></i> Blank Page</a></li>
                        <li><a class="treeview-item" href="page-login.html"><i class="icon fa fa-circle-o"></i> Login Page</a></li>
                        <li><a class="treeview-item" href="page-lockscreen.html"><i class="icon fa fa-circle-o"></i> Lockscreen Page</a></li>
                        <li><a class="treeview-item" href="page-user.html"><i class="icon fa fa-circle-o"></i> User Page</a></li>
                        <li><a class="treeview-item" href="page-invoice.html"><i class="icon fa fa-circle-o"></i> Invoice Page</a></li>
                        <li><a class="treeview-item" href="page-calendar.html"><i class="icon fa fa-circle-o"></i> Calendar Page</a></li>
                        <li><a class="treeview-item" href="page-mailbox.html"><i class="icon fa fa-circle-o"></i> Mailbox</a></li>
                        <li><a class="treeview-item" href="page-error.html"><i class="icon fa fa-circle-o"></i> Error Page</a></li>
                    </ul>
                </li>
                <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Cursos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                    <ul class="treeview-menu">
                        <li><a class="treeview-item" href="blank-page.html"><i class="icon fa fa-circle-o"></i> Blank Page</a></li>
                        <li><a class="treeview-item" href="page-login.html"><i class="icon fa fa-circle-o"></i> Login Page</a></li>
                        <li><a class="treeview-item" href="page-lockscreen.html"><i class="icon fa fa-circle-o"></i> Lockscreen Page</a></li>
                        <li><a class="treeview-item" href="page-user.html"><i class="icon fa fa-circle-o"></i> User Page</a></li>
                        <li><a class="treeview-item" href="page-invoice.html"><i class="icon fa fa-circle-o"></i> Invoice Page</a></li>
                        <li><a class="treeview-item" href="page-calendar.html"><i class="icon fa fa-circle-o"></i> Calendar Page</a></li>
                        <li><a class="treeview-item" href="page-mailbox.html"><i class="icon fa fa-circle-o"></i> Mailbox</a></li>
                        <li><a class="treeview-item" href="page-error.html"><i class="icon fa fa-circle-o"></i> Error Page</a></li>
                    </ul>
                </li>
                <li><a class="app-menu__item" href="docs.html"><i class="app-menu__icon fa fa-file-code-o"></i><span class="app-menu__label">Docs</span></a></li>
            </ul>
        </aside>
        <main class="app-content">
            <div class="app-title">
                <div>
                    <h1><i class="fa fa-dashboard"></i> Usuarios</h1>
                    <p>Sistema de gestion de afiliados</p>
                </div>
                <ul class="app-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
                    <li class="breadcrumb-item"><a href="#">Usuarios</a></li>
                    <li class="breadcrumb-item active"><a href="#">Nuevo</a></li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <form class="login-form" action="/administradocs/personaControlador" method="POST">
                        <div class="card">
                            <div class="card-header">
                                Nuevo Registro
                            </div>
                            <div class="card-body">

                                <div class="form-group row">
                                    <label for="id" class="col-2 col-form-label">DNI</label> 
                                    <div class="col-8">
                                        <input id="dni" name="dni" type="text" class="form-control" required="required">
                                        <span>*Omita el cero a la izquierda.</span>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="nombre" class="col-2 col-form-label">Nombre</label> 
                                    <div class="col-8">
                                        <input id="nombre" name="nombre" type="text" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="apellido" class="col-2 col-form-label">Apellido</label> 
                                    <div class="col-8">
                                        <input id="apellido" name="apellido" type="text" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="telefono" class="col-2 col-form-label">Telefono</label> 
                                    <div class="col-8">
                                        <input id="telefono" name="telefono" type="text" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="email" class="col-2 col-form-label">Email</label> 
                                    <div class="col-8">
                                        <input id="email" name="email" type="text" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="pasword" class="col-2 col-form-label">Pasword</label> 
                                    <div class="col-8">
                                        <input id="pasword" name="pasword" type="password" class="form-control" required="required">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="fechanacimiento" class="col-2 col-form-label">Fecha nacimiento</label> 
                                    <div class="col-8">
                                        <input id="fechanacimiento" name="fechanacimiento" type="date" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="filial" class="col-2 col-form-label">Genero</label> 
                                    <div class="col-8">
                                        <select id="filial" name="genero" class="custom-select">
                                            <option value="f">Femenino</option>
                                            <option value="m">Masculino</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="foto" class="col-2 col-form-label">Foto</label> 
                                    <div class="col-8 file-upload-wrapper">
                                        <input id="foto" name="foto" type="file" class="form-control file-upload">
                                    </div>
                                </div> 
                            </div>
                            <div class="card-footer text-muted">
                                <div class="form-group row">
                                    <div class="offset-4 col-8">
                                        <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>                                                   
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