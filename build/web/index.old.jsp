<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sistema de gestion de afiliados - Administracion</title>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" href="assets/css/app.css">
        <link rel="stylesheet" href="assets/css/pages/auth.css">
    </head>

    <body>
        <div id="auth">

            <div class="row h-100">
                <div class="col-lg-5 col-12">
                    <div id="auth-left">
                        <div class="auth-logo">
                            <a href="index.jsp"><img src="assets/images/logo/logocoop.png" alt="Logo"></a>
                        </div>
                        <h1 class="auth-title">Ingresar</h1>
                        <form action="/administradocs/loginControlador" method="POST">
                            <div class="form-group position-relative has-icon-left mb-4">
                                <input name="txtusuario" type="text" class="form-control form-control-xl" placeholder="Username">
                                <div class="form-control-icon">
                                    <i class="bi bi-person"></i>
                                </div>
                            </div>
                            <div class="form-group position-relative has-icon-left mb-4">
                                <input name="txtclave" type="password" class="form-control form-control-xl" placeholder="Password">
                                <div class="form-control-icon">
                                    <i class="bi bi-shield-lock"></i>
                                </div>
                            </div>

                            <button name="btn-login" class="btn btn-primary btn-block btn-lg shadow-lg mt-5">Log in</button>
                        </form>
                        <div class="text-center mt-5 text-lg fs-4">
                            <p><a class="font-bold" href="recuperar.jsp">Forgot password?</a>.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 d-none d-lg-block">
                    <div id="auth-right">

                    </div>
                </div>
            </div>

        </div>
    </body>

</html>