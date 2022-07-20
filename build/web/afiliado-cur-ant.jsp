<%@include file="/comunes/noatras.jsp" %>
<%@include file="/comunes/sesion.jsp" %>
<%@include file="/comunes/validar_afil.jsp" %>
<%@include file="/comunes/deshabilitar.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <%        ResultSet rs2 = null;
        ResultSet rs3 = null;
        String sql2 = "";
    %>
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
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Turnos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="afiliado-ubi-select.jsp"><i class="icon fa fa-circle-o"></i> Nuevo Turno</a></li>
                    <li><a class="treeview-item" href="afiliado-tur-list.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Ver mis tickets</a></li>
                    <li><a class="treeview-item" href="afiliado-tur-actual.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Ver ticket actual</a></li>

                </ul>
            </li>
            <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Cursos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="afiliado-cur-dis.jsp"><i class="icon fa fa-circle-o"></i> Disponibles</a></li>
                    <li><a class="treeview-item" href="afiliado-cur-ins.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Inscritos</a></li>
                    <li><a class="treeview-item active" href="afiliado-cur-ant.jsp?idper=${persona.id}"><i class="icon fa fa-circle-o"></i> Anteriores</a></li>
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
                                    <tr>
                                        <th>No</th>
                                        <th>Curso</th>
                                        <th>Fecha Inicio</th>
                                        <th>Fecha Final</th>                                    
                                        <th>Instructor</th>
                                        <th>Categoria</th>
                                        <th>Accion</th>                                           
                                    </tr>
                                </thead>
                                <%                                    try {
                                        String dni = request.getParameter("dni");
                                        sql = "SELECT tbl_cursos.curid, tbl_cursos.nombrecurso, tbl_cursos.fechainicio, tbl_cursos.fechafinal, CONCAT(tbl_instructores.nombre, ' ', tbl_instructores.apellido) as instructor, tbl_categoriacursos.nombrecategoria FROM tbl_cursos INNER JOIN tbl_instructores ON tbl_cursos.instid = tbl_instructores.instid INNER JOIN tbl_categoriacursos ON tbl_cursos.categoriaid = tbl_categoriacursos.catid WHERE tbl_cursos.fechafinal < CURRENT_DATE();";
                                        rs = cn.ejecutarConsultaprograma(sql);
                                        String a1 = "", a2 = "", a3 = "", a4 = "", a5 = "", a6 = "", a7 = "", a8 = "", a9 = "";
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
                                            sql2 = "SELECT tbl_certificaciones.idcertificacion FROM tbl_certificaciones INNER JOIN tbl_participantescursos ON tbl_certificaciones.curparid = tbl_participantescursos.curparid WHERE tbl_participantescursos.personaid = " + b + " AND tbl_certificaciones.idcurso = " + a1 + ";";
                                            rs2 = cn.ejecutarConsultaprograma(sql);
                                            while (rs2.next()) {
                                                a8 = rs2.getString(1);
                                            }
                                            sql = "SELECT  COUNT(*) as cantidad FROM tbl_participantescursos WHERE tbl_participantescursos.cursoid = " + a1 + " AND tbl_participantescursos.personaid = " + String.valueOf(b) + ";";
                                            rs2 = cn.ejecutarConsultaprograma(sql);
                                            while (rs2.next()) {
                                                a7 = rs2.getString(1);
                                                if (a7.equals("1")) {

                                    %>
                                    <tr>
                                        <td><%=a1%></td>
                                        <td><%=a2%></td>
                                        <td><%=a3%></td>
                                        <td><%=a4%></td>
                                        <td><%=a5%></td>
                                        <td><%=a6%></td>
                                        <td><a href="ver.jsp?dni=<%=a8%>" target="_blank" class="btn btn-primary">ver diploma</a></td>
                                    </tr>
                                </tbody>                                         
                                <%
                                                }
                                            }
                                        }
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
    <%@include file="/comunes/footer2.jsp" %>
</body>
</html>