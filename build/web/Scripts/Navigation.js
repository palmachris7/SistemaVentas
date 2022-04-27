/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var Navigation = {
    _URL_Controller: "/MenuPermiso",
    index: function () {
        $.ajax({
            url: Navigation._URL_Controller + "/Listar",
            type: 'POST',
            dataType: "json",
            data: {},
            contentType: "application/json; charset=utf-8",
            beforeSend: function () {
                $('.ibox-content').addClass('sk-loading');
            },
            success: function (res) {
                $('.ibox-content').removeClass('sk-loading');
                Navigation.SendData(res);

            },
            error: function (res) {
                $('.ibox-content').removeClass('sk-loading');
                toastr.error("Error al cargar registros");
            }
        });
    },
    Listar: function () {
        let objEntidad = new Object();
        
        $.ajax({
            url: Navigation._URL_Controller + "/Listar",
            type: 'POST',
            dataType: "json",
            data: JSON.stringify(objEntidad),
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                $('.ibox-content').removeClass('sk-loading');
                //Navigation.SendData(data);

            },
            error: function (res) {
                $('.ibox-content').removeClass('sk-loading');
                toastr.error('!!! Error al encontrar Datos')
            }
        });
    },
    SendData: function () {
       

                
                    $('#productos').append(
                        `<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu ClassMenuContent" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element">
                    <img alt="image" class="logo-parking" src="/Content/images/logo_white.png" />
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="block m-t-xs font-bold">@Session["USUARIONAME"]</span>
                        <span class="text-muted text-xs block">@Session["ROL"]<b class="caret"></b></span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs" style="position: absolute; top: 91px; left: 0px; will-change: top, left;">
                        <li><a class="dropdown-item" href="@Url.Action("Profile", "MSAdministrador")">Perfil</a></li>
                        <li><a class="dropdown-item" href="@Url.Action("ChangePass", "MSAdministrador")">Cambiar Contraseña</a></li>

                        <li class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="@Url.Action("Logout", "MSeguridad")">Cerrar Session</a></li>
                    </ul>
                </div>
                <div class="logo-element">
                    <img alt="image" class="logo-parking-short" src="/Content/images/logo-w.png" />
                </div>
            </li>

        </ul>

    </div>
`
                    );
                

                


    }
  

}
