<%@page import="com.jcsm.DAO.personasDAO"%>
<%@page import="com.jcsm.entidades.TblPersonas"%>
<%@page import="com.jcsm.entidades.TblSubservicios"%>
<%@page import="com.jcsm.entidades.TblServicios"%>
<%@page import="com.jcsm.entidades.TblFiliales"%>
<%@page import="com.jcsm.DAO.turnoDAO"%>
<%@page import="com.jcsm.entidades.TblTurnos"%>
<%@page import="com.jcsm.configuracion.Dba"%>
<%@page import="com.jcsm.entidades.seguridad.TblBitacora"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.jcsm.entidades.TblPersonas"%>
<%@page import="com.jcsm.DAO.alertasDAO"%>
<%
    if (request.getSession(false) == null) {
        response.sendRedirect("index.jsp");
    }
%>
<%
    TblPersonas pers = new TblPersonas();
    pers = (TblPersonas) session.getAttribute("persona");
    int a, b, c;
    a = pers.getIdrol().getIdrol();
    b = pers.getId();
    c = pers.getIdFilial().getIdfilial();
    if (a != 2) {
        response.sendRedirect("prohibido.jsp");
    }
    alertasDAO adao = new alertasDAO();
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
        <title>Sistema de gestion de afiliados - ${persona.nombre} - Afiliado</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!-- Font-icon css-->
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    </head>
    <body class="app sidebar-mini" onload="mostrar_amigos()">
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

                <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> perfil</a></li>
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
            <div class="card">
                <h5 class="card-header">Ticket</h5>
                <div class="card-body">
                    <h5 class="card-title">Filiales</h5>
                    <p class="card-text">Selecciones una filial:</p>
                    <div class="container">

                        <div id="mapa" style="width: 1080px; height: 720px; border: 5px groove #006600;"></div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<%@include file="/comunes/footer1.jsp" %>
<script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript">
        function mostrar_amigos() {
            var ubicacion = new google.maps.LatLng(14.09654755, -87.20851210);
            var opciones = {zoom: 13,
                center: ubicacion,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("mapa"), opciones);

    <%
        String ami = "", lat = "", lon = "", info = "", link="";
        int cont = 1;
        try {
            sql = "SELECT tbl_filiales.nombrefilial, tbl_filiales.latitud, tbl_filiales.longitud, CONCAT('<h5><a href=afiliado-ubi-sel-map-crea.jsp?idfil=',tbl_filiales.idfilial,'>',tbl_filiales.nombrefilial,'</a></h5>','<p>direccion: ',tbl_filiales.direccion,'</p><p>telefono: ',tbl_filiales.telefono,'</p>','<p >horarios</p><p>semana: ',tbl_filiales.horariosemana,'</p><p>finde: ',tbl_filiales.horariofinsemana,'</p>') as info FROM tbl_filiales";
            rs = cn.ejecutarConsultaprograma(sql);

            while (rs.next()) {
                ami = rs.getString(1);
                lat = rs.getString(2);
                lon = rs.getString(3);
                info =  rs.getString(4);
link="<a href=afiliado-ubi-sel-map-crea?idfil="+info+">"+ami+"</a>";
    %>
            mi_ubicacion<%=cont%> = new google.maps.Marker({
                position: new google.maps.LatLng(<%=lat%>, <%=lon%>),
                map: map,
                title: '<%=ami%>'
            });

            var infowindow<%=cont%> = new google.maps.InfoWindow({
                content: '<%=info%>'
            });

            google.maps.event.addListener(mi_ubicacion<%=cont%>, 'click', function () {
                infowindow<%=cont%>.open(map, mi_ubicacion<%=cont%>);
            });

    <%
                cont++;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


    %>

        }



</script>
</body>
</html>
