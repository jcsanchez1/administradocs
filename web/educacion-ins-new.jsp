<%@include file="/comunes/sesion.jsp" %>
<%@include file="/comunes/noatras.jsp" %>
<%@include file="/comunes/validar_educacion.jsp" %>
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
            <li><a class="app-menu__item active" href="educacion-index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Instructores</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="educacion-ins-act.jsp"><i class="icon fa fa-circle-o"></i> Activos</a></li>
                    <li><a class="treeview-item" href="educacion-ins-ina.jsp"><i class="icon fa fa-circle-o"></i> Inactivos</a></li>


                </ul>
            </li>

            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Cursos</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="educacion-cur-fut.jsp"><i class="icon fa fa-circle-o"></i> Futuros</a></li>
                    <li><a class="treeview-item" href="educacion-cur-act.jsp"><i class="icon fa fa-circle-o"></i> Actuales</a></li>
                    <li><a class="treeview-item" href="educacion-cur-ant.jsp"><i class="icon fa fa-circle-o"></i> Anteriores</a></li>
                    <li><a class="treeview-item" href="educacion-cur-new.jsp"><i class="icon fa fa-circle-o"></i> Nuevo</a></li>
                </ul>
            </li>
            <li><a class="app-menu__item" href="educacion-cat-cur.jsp"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label"> Categorias de cursos</span></a></li>
            <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Votaciones</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item" href="educacion-vot-crea.jsp"><i class="icon fa fa-circle-o"></i> Crear votacion</a></li>
                    <li><a class="treeview-item" href="educacion-vot-ver.jsp"><i class="icon fa fa-circle-o"></i> Ver votaciones</a></li>

                </ul>
            </li>
            <li><a class="app-menu__item active" href="educacion-alertas.jsp?idper=${persona.id}"><i class="app-menu__icon fa fa-file-code-o"></i><span class="app-menu__label">Alertas</span></a></li>
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
                    <form action="instructorControlador" method="POST">
                        <div class="card-header">
                            Nuevo Instructor
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="nombre" class="col-3 col-form-label">Nombre</label> 
                                <div class="col-9">
                                    <input id="nombre" name="nombre" type="text" required="required" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="apellido" class="col-3 col-form-label">Apellido</label> 
                                <div class="col-9">
                                    <input id="apellido" name="apellido" type="text" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="correo" class="col-3 col-form-label">Correo</label> 
                                <div class="col-9">
                                    <input id="correo" name="correo" type="email" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="genero" class="col-3 col-form-label">Genero</label> 
                                <div class="col-9">
                                    <select id="genero" name="genero" class="custom-select">
                                        <option value="f">Femenino</option>
                                        <option value="m">Masculino</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="telefono" class="col-3 col-form-label">Telefono</label> 
                                <div class="col-9">
                                    <input id="telefono" name="telefono" type="tel" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fechanacimiento" class="col-3 col-form-label">Fecha de Nacimiento</label> 
                                <div class="col-9">
                                    <input id="fechanacimiento" name="fechanacimiento" type="date" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="dni" class="col-3 col-form-label">DNI</label> 
                                <div class="col-9">
                                    <input id="dni" name="dni" type="text" class="form-control" required="required">
                                </div>
                            </div> 

                        </div>
                        <div class="card-footer text-muted">
                            <div class="form-group row">
                                <div class="offset-3 col-9">
                                    <button name="crear-inst" type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
    <%@include file="/comunes/footer1.jsp" %>
</body>
</html>