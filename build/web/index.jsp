<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
        <link rel="stylesheet" href="style.css">
        <title>Login</title>



    </head>
    <body>
        <div class="vh-100 d-flex justify-content-center align-items-center">

            <div class="container  col-lg-5" >
                <div class="card col-sm-10">
                    <div class="card-body">
                        <form class="form-sign" action="Validar" method="POST">
                            <div class="form-group text-center">
                                <h1>INICIAR SESION</h1>
                                <br>
                                <br>

                            </div>

                            <div class="form-group Icon-inside">
                                <i> </i> 

                                <div class="row">
                                    <div class="col-lg-1">
                                        <i class="fas fa-user"></i> 

                                    </div>
                                    <div class="col-lg-11">
                                        <input type="text"placeholder="Ingresar Usuario" name="txtuser"  class="form-control">
                                    </div>

                                </div>
                            </div>

                             
  
                            <div class="form-group Icon-inside">
                                <i> </i> 
                                <div class="row">
                                    <div class="col-lg-1">
                                        <i class="fas fa-key"></i> 
                                    </div>
                                    <div class="col-lg-11">
                                        <input type="password" placeholder="Ingresar Contraseña" name="txtpass" class="form-control">
                                    </div>
                                </div>
                            </div>
                              <br>
                                
                            <input style = align-content: center type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block">
                        </form>



                    </div>

                </div>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="script.js"></script>
    </body>

</html>