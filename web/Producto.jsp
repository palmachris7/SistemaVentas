

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Menu Principal </title>
    <link rel="stylesheet" href="style.css">
    <!-- Boxiocns CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
    
   
      <div class="sidebar ">
        <div class="logo-details">
          <i class='bx bxl-c-plus-plus'></i>
          <span class="logo_name">Sistema Ventas </span>
        </div>
        <ul class="nav-links">
   
      <li>
        <a href="Controlador?menu=Producto&accion=Listar">
          <i class="bx bx-grid-alt"></i>
          <span class="link_name">Productos</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name">Productos</a></li>
        </ul>
      </li>
      <li>
        <a href="Controlador?menu=Empleado&accion=Listar">
          <i class='bx bx-user'></i>
          <span class="link_name">Empleados</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name">Empleados</a></li>
        </ul>
      </li>
      <li>
        <a href="Controlador?menu=Cliente&accion=Listar">
          <i class='bx bxs-user-rectangle'></i>
          <span class="link_name">Clientes</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name">Clientes</a></li>
        </ul>
      </li>
      <li>
        <a href="Controlador?menu=NuevaVenta&accion=default">
          <i class='bx bx-line-chart' ></i>
          <span class="link_name">Ventas</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name">Ventas</a></li>
        </ul>
      </li>
     
      
        <li>
            <div class="profile-details">
              <div class="profile-content">
<!--                <img src="image/profile.jpg" alt="profileImg">-->
              </div>
              <div class="name-job">
                <div class="profile_name">Bienvenido</div>
                <div class="job">${usuario.getUser()}</div>
              </div>
              <i class='bx bx-log-out' ></i>
            </div>
        </li>
    </ul>
      </div>

   <section class="home-section">
    <div class="home-content">
      <i class='bx bx-menu' ></i>
      <span class="text"></span>
      
    </div>
    <div class="container"   style="max-width: 1650px">
        <div class="row wrapper border-bottom white-bg page-heading" style="color:#33130F;">
            <div class="col-lg-12">
                <h2><b>PRODUCTOS</b></h2>
                <ol class="breadcrumb" style="background-color: #ffffff;">
                    <li class="breadcrumb-item">
                        <a href="@Url.Action("Index", "Home")">Inicio</a>
                    </li>

                    <li class="active breadcrumb-item">
                        <strong>Modulo de Productos</strong>
                    </li>
                </ol>
            </div>
        </div>
        
          <div class="d-flex" id="productos">
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-body">
                            <form action="Controlador?menu=Producto" method="POST">
                                <div class="form-group">
                                    <label>Prenda</label>
                                    <input type="text" value="${producto.getNom()}" name="txtDni" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Precio</label>
                                    <input type="text" value="${producto.getPre()}" name="txtNombres" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Stock</label>
                                    <input type="text" value="${producto.getStock()}" name="txtTel" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Estado</label>
                                    <input type="text" value="${producto.getEstado()}" name="txtEstado" class="form-control">
                                </div>                        
                                <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                                <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                            </form>
                        </div>                         
                    </div>
                </div>                     
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombres</th>
                                    <th>Precio</th>
                                    <th>Stock</th>                                    
                                    <th>ESTADO</th>                                    
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="em" items="${productos}">
                                    <tr>
                                        <td>${em.getId()}</td>                                      
                                        <td>${em.getNom()}</td>
                                        <td>${em.getPre()}</td>
                                        <td>${em.getStock()}</td>
                                        <td>${em.getEstado()}</td>                                        
                                        <td>
                                            <a class="btn btn-outline-primary" href="Controlador?menu=Producto&accion=Editar&id=${em.getId()}"><i class='bx bx-edit-alt'></i></a>
                                            <a class="btn btn-outline-danger" href="Controlador?menu=Producto&accion=Delete&id=${em.getId()}"><i class='bx bx-trash'></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>     
      
    </div>
   
  </section>
        <script src="script.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="Scripts/Productos.js" type="text/javascript"></script>
    </body>
</html>

