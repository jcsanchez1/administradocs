<%@page import="com.jcsm.entidades.TblAlertas"%>
<%@page import="com.jcsm.entidades.TblPersonas"%>
<%@page import="com.jcsm.DAO.alertasDAO"%>
<%@page import="com.jcsm.configuracion.Dba"%>
<%@page import="com.jcsm.entidades.seguridad.TblBitacora"%>
<%@page import="java.sql.ResultSet"%>
<%
    if (request.getSession(false) == null) {
        response.sendRedirect("index.jsp");
    }
%>
<%
    TblPersonas pers = new TblPersonas();
    pers = (TblPersonas) session.getAttribute("persona");
    int a, b;
    a = pers.getIdrol().getIdrol();
    b = pers.getId();
    if (a != 1) {
        response.sendRedirect("prohibido.jsp");
    }
    alertasDAO adao = new alertasDAO();
    TblBitacora tmp = new TblBitacora();
    int respuesta = 0;
    String sql = "";
    ResultSet rs = null;
    Dba cn = new Dba();
        TblAlertas tale = new TblAlertas();
    TblPersonas tper = new TblPersonas();
        String b1 = "", b2 = "", b3 = "";
%>
<%
if ( request.getParameter("btn_guardar_ale-adm") !=null ) {
    try{
    b1= request.getParameter("idper");
    b2 = request.getParameter("descripcion");
    b3 =  request.getParameter("diaalerta");
    int idper,descripcion, diaalerta;
    idper = Integer.valueOf(b1);
    //descripcion = Integer.parseInt(b2);
    diaalerta = Integer.valueOf(b3);
    tper.setId(idper);
    tale.setIdpersona(tper);
    tale.setDescripcion(b2);
    tale.setDiaalerta(diaalerta);
    adao.isertaralerta(tale);
    }catch(Exception e) {
        
                        }
    finally{
        response.sendRedirect("admin-alertas.jsp?idper=${persona.id}");
    }
    
    
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
        <li><a class="app-menu__item" href="admin-backup.jsp"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Respaldo y restauracion</span></a></li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Dashboard</h1>
            <p>Sistema de gestion de afiliados</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <form action="" method="POST">
                    <div class="form-group row">
                        <label for="descripcion " class="col-2 col-form-label">Descripcion</label> 
                        <div class="col-8">
                            <input id="descripcion" name="descripcion" type="text" class="form-control" required="required">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="diaalerta" class="col-2 col-form-label">Dia Alerta</label> 
                        <div class="col-8">
                            <input id="diaalerta" name="diaalerta" type="number" min="1" max="31" class="form-control" required="required">
                        </div>
                    </div>
                    <input type="text" name="idper" value="<%=b%>">
                    <div class="form-group row">
                        <div class="offset-4 col-8">
                            <button name="btn_guardar_ale-adm" type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </div>
                </form>
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
