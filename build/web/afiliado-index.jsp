<%@include file="/comunes/sesion.jsp" %>
<%@include file="/comunes/noatras.jsp" %>
<%@include file="/comunes/validar_afil.jsp" %>
<%@include file="/comunes/deshabilitar.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="/comunes/head1.jsp" %>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
            <div class="col-md-6">
                <p>Ticket actual</p>
                <%                int cont = tdao.existeturnohoy(b);
                    if (cont > 0) {
                %>
                <%
                    try {
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

                <%
                    } catch (Exception e) {
                    }
                } else {
                %>
                <p class="text-center">No hay tickets para el dia de hoy</p><%
                    }
                %>

            </div>
            <div class="col-md-6">
                <%
                    int cantidad2 = adao.existealerta(b);
                    if (cantidad2 > 0) {
                %>
                <%
                    try {
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
                            } catch (Exception e) {
                            }
                        } else {
                        %>
                <p class="text-center">no tiene alertas</p><%
                    }%>

            </div>
        </div>
        <br>
        <br>
        <div class="row">
            <div class="col-12">
                <h2>Filiales</h2> <div id='p1Chart'></div>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                <h2>Comayaguela</h2> <div id='piechart'></div>
            </div>
            <div class="col-4">
                <h2>Plaza Miraflores</h2> <div id='piechart2'></div>
            </div>
            <div class="col-4">
                <h2>City Mall</h2> <div id='piechart3'></div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <h2>Frecuencias de visitas</h2> <div class="text-center" id='p5Chart'></div>
            </div>
        </div>
    </div>     
    <script type="text/javascript">
        google.charts.load('current', {'packages': ['sankey', 'corechart', 'bar', 'calendar']});
        google.charts.setOnLoadCallback(drawCharts);
        function drawCharts() {
            drawChartP1();
            drawChartP2();
            drawChartP3();
            drawChartP4();
            drawChartP5();
        }
        function drawChartP1() {
        <%            sql = "Select IF(t.estado = 4,'perdido',if(t.estado = 2,'atendido',if(t.estado = 1,'no atendido','atendiendo'))) as Tipo, count(*) as catidad from tbl_turnos as t inner join tbl_personas as p on  t.idpersona = p.id inner join tbl_filiales as f on p.id_filial = f.idfilial where p.id =" + b + "  and  t.idfilial = 1  group by t.estado ";
            rs = cn.ejecutarConsultaprograma(sql);
            String z1 = "", z2 = " ";
            while (rs.next()) {
                z1 += "['" + rs.getString(1) + "', " + rs.getString(2) + "],";
            }
            z2 = "['Estado', 'cantidad']," + z1;
            z2 = z2.substring(0, z2.length() - 1);
        %>
            var data = google.visualization.arrayToDataTable([
        <%=z2%>
            ]);

            var options = {

            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
        function drawChartP3() {
        <%            sql = "Select IF(t.estado = 4,'perdido',if(t.estado = 2,'atendido',if(t.estado = 1,'no atendido','atendiendo'))) as Tipo, count(*) as catidad from tbl_turnos as t inner join tbl_personas as p on  t.idpersona = p.id inner join tbl_filiales as f on p.id_filial = f.idfilial where p.id =" + b + "  and  t.idfilial = 2  group by t.estado ";
            rs = cn.ejecutarConsultaprograma(sql);
            String y1 = "", y2 = " ";
            while (rs.next()) {
                y1 += "['" + rs.getString(1) + "', " + rs.getString(2) + "],";
            }
            y2 = "['Estado', 'cantidad']," + y1;
            y2 = y2.substring(0, y2.length() - 1);
        %>
            var data = google.visualization.arrayToDataTable([
        <%=y2%>
            ]);

            var options = {

            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart2'));

            chart.draw(data, options);
        }
        function drawChartP2() {
        <%            sql = "Select IF(t.estado = 4,'perdido',if(t.estado = 2,'atendido',if(t.estado = 1,'no atendido','atendiendo'))) as Tipo, count(*) as catidad from tbl_turnos as t inner join tbl_personas as p on  t.idpersona = p.id inner join tbl_filiales as f on p.id_filial = f.idfilial where p.id =" + b + "  and  t.idfilial = 3  group by t.estado ";
            rs = cn.ejecutarConsultaprograma(sql);
            String x1 = "", x2 = " ";
            while (rs.next()) {
                x1 += "['" + rs.getString(1) + "', " + rs.getString(2) + "],";
            }
            x2 = "['Estado', 'cantidad']," + x1;
            x2 = x2.substring(0, x2.length() - 1);
        %>
            var data = google.visualization.arrayToDataTable([
        <%=x2%>
            ]);

            var options = {

            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart3'));

            chart.draw(data, options);
        }
        function drawChartP4() {
        <%            sql = "Select IF(t.idfilial = 1,'comayaguela',if(t.idfilial = 2,'Miraflores',if(t.idfilial = 3,'City Mall','otros'))) as Filial, count(*) as catidad from tbl_turnos as t inner join tbl_personas as p on  t.idpersona = p.id inner join tbl_filiales as f on p.id_filial = f.idfilial where p.id =" + b + " group by t.idfilial ";
            rs = cn.ejecutarConsultaprograma(sql);
            String p1 = "", p2 = " ";
            while (rs.next()) {
                p1 += "['" + rs.getString(1) + "', " + rs.getString(2) + "],";
            }
            p2 = "['Filial', 'cantidad']," + p1;
            p2 = p2.substring(0, p2.length() - 1);
        %>
            var data = google.visualization.arrayToDataTable([
        <%=p2%>
            ]);

            var options = {

            };

            var chart = new google.visualization.ColumnChart(document.getElementById('p1Chart'));

            chart.draw(data, options);
        }
        function drawChartP5() {
        <%            sql = "Select DATE_FORMAT(t.fechacreacion,'%Y, %m, %d') as fecha, count(*) as catidad from tbl_turnos as t inner join tbl_personas as p on  t.idpersona = p.id inner join tbl_filiales as f on p.id_filial = f.idfilial where p.id =" + b + " group by t.fechacreacion";
            rs = cn.ejecutarConsultaprograma(sql);
            String q1 = "", q2 = " ";
            while (rs.next()) {
                q1 += "[ new Date(" + rs.getString(1) + "), " + rs.getString(2) + " ],";
            }
            q2 = q1;
            q2 = q2.substring(0, q2.length() - 1);
        %>
            var datatable = new google.visualization.DataTable();
            datatable.addColumn({type: 'date', id: 'Date'});
            datatable.addColumn({type: 'number', id: 'frecuencia'});
            datatable.addRows([
        <%=q2%>
            ]);

            var options = {

            };

            var chart = new google.visualization.Calendar(document.getElementById('p5Chart'));

            chart.draw(datatable, {height: 450});
        }
    </script>
</main>
<%@include file="/comunes/footer1.jsp" %>
<script type="text/javascript" src="js/highcharts.js"></script>
<script type="text/javascript" src="js/exporting.js"></script>
</body>
</html>