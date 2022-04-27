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
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
    
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Sistema Ventas </span>
    </div>
    <ul class="nav-links">
        <!-- 
      <li>
        <a href="#">
          <i class='bx bx-grid-alt' ></i>
          <span class="link_name">Dashboard</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="Controlador?menu=Producto&accion=Listar">Category</a></li>
        </ul>
      </li>
      <li>
        <div class="iocn-link">
          <a href="#">
            <i class='bx bx-collection' ></i>
            <span class="link_name">Category</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">Category</a></li>
          <li><a href="Controlador?menu=Producto&accion=Listar">HTML & CSS</a></li>
          <li><a href="#">JavaScript</a></li>
          <li><a href="#">PHP & MySQL</a></li>
        </ul>
      </li>
      <li>
        <div class="iocn-link">
          <a href="#">
            <i class='bx bx-book-alt' ></i>
            <span class="link_name">Posts</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">Posts</a></li>
          <li><a href="#">Web Design</a></li>
          <li><a href="#">Login Form</a></li>
          <li><a href="#">Card Design</a></li>
        </ul>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-pie-chart-alt-2' ></i>
          <span class="link_name">Analytics</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#">Analytics</a></li>
        </ul>
      </li>
      
      -->
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
                <img src="image/profile.jpg" alt="profileImg">
              </div>
              <div class="name-job">
                <div class="profile_name">Prem Shahi</div>
                <div class="job">Web Desginer</div>
              </div>
              <i class='bx bx-log-out' ></i>
            </div>
        </li>
    </ul>
  </div>
    
  <section class="home-section">
    <div class="home-content">
      <i class='bx bx-menu' ></i>
      <span class="text">Drop Down Sidebar</span>
    </div>
      <div class="wrappers" id="">
          
      </div>
  </section>

  <script src="script.js"></script>

</body>
</html>