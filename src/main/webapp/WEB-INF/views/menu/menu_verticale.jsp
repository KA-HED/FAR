        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
                <style>

        .navbar-global {
        background-color: indigo;
        width: 100%;
        position: fixed;
        z-index: 100;
        }

        .navbar-global .navbar-brand {
        color: white;
        }

        .navbar-global .navbar-user > li > a
        {
        color: white;
        }

        .navbar-primary {
        background-color: #333;
        position: fixed;
        bottom: 0px;
        left: 0px;
        /*position: absolute;*/
        top: 51px;
        padding-top: 30px;
        width: 200px;
        z-index: 8;
        overflow: hidden;
        -webkit-transition: all 0.1s ease-in-out;
        -moz-transition: all 0.1s ease-in-out;
        transition: all 0.1s ease-in-out;
        }

        .navbar-primary.collapsed {
        width: 60px;
        }

        .navbar-primary.collapsed .glyphicon {
        font-size: 22px;
        }

        .navbar-primary.collapsed .nav-label {
        display: none;
        }

        .btn-expand-collapse {
        position: absolute;
        display: block;
        left: 0px;
        bottom:0;
        width: 100%;
        padding: 8px 0;
        border-top:solid 1px #666;
        color: grey;
        font-size: 20px;
        text-align: center;
        }

        .btn-expand-collapse:hover,
        .btn-expand-collapse:focus {
        background-color: #222;
        color: white;
        }

        .btn-expand-collapse:active {
        background-color: #111;
        }

        .navbar-primary-menu,
        .navbar-primary-menu li {
        margin:0; padding:0;
        list-style: none;
        }

        .navbar-primary-menu li a {
        display: block;
        padding: 10px 18px;
        text-align: left;
        border-bottom:solid 1px #444;
        color: #ccc;
        }

        .navbar-primary-menu li a:hover {
        background-color: #000;
        text-decoration: none;
        color: white;
        }

        .navbar-primary-menu li a .glyphicon {
        margin-right: 6px;
        }

        .navbar-primary-menu li a:hover .glyphicon {
        color: orchid;
        }

        .main-content {
        margin-top: 60px;
        margin-left: 200px;
        padding: 20px;
        }

        .collapsed + .main-content {
        margin-left: 60px;
        }
        </style>


        <nav class="navbar navbar-expand-xl navbar-light position-fixed w-100 my_menu" >
        <div class="row pl-0 m-0 top_bar_top justify-content-end">


        </div>
        <a class="navbar-brand mt-4" href="#">
        <div class="mt-4 mr-auto logo position-relative">
        <a href="/api/getMenu" style="text-decoration: none">
        <img src="${pageContext.request.contextPath}/assets/images/logo_1.png" style="width: 80px;background:
        white;border-radius: 5px;" class="d-inline-block align-top pos-absolute shadow " alt="">
        </a>
        </div>
        </a>
        <a class="navbar-brand mt-4" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation" style="margin-top: 5rem">
        <span class="navbar-toggler-icon text-white" style="color: white !important"></span>
        </button>
        <div class="collapse navbar-collapse mt-4 myCollpase" id="navbarNavDropdown">
        <div class=" align-items-baseline mt-4 w-100">

        <ul class="nav-right user_nav mb-0">
        <li class="user-profile header-notification">

        <div class="dropdown" style="text-align: ${pageContext.response.locale=='ar'?'right':'left'}">
        <div class="dropdown-toggle dropbtn" data-toggle="dropdown" aria-expanded="false">
        <span class="fa fa-user" style="color:white;font-size:20px;padding:10px;border-radius:50%;background:
        #e0e0e0;"></span>
        <span style="color:white;text-transform: capitalize;">${user.nom}</span>
        <i class="mdi mdi-chevron-down"></i>
        </div>

        <div class="dropdown-content">
        <a type="button" onclick="goToLien_menu('/api/getListProfile/0/6',11)" class="dropdown-item">
        <i class="fas fa-key text-primary mr-2 pl-1 f-10 " ></i>
        <spring:message code='label.gestionprofils'/>
        </a>
        <a type="button" onclick="goToLien_menu('/api/getAccount5/0/6/0',11)" class="dropdown-item">
        <i class="fa fa-users text-primary mr-2 pl-1 f-10" ></i>
                Gestion du personnel
                </a>
        <a type="button" onclick="goToLien_menu('/api/getAccount5/0/6/1',11)" class="dropdown-item">
        <i class="fa fa-users text-primary mr-2 pl-1 f-10" ></i>
        <spring:message code='label.gestioncomptesP'/>
        </a>
        <a href="/logout" class="dropdown-item">
        <i class="mdi mdi-logout text-primary mr-2 pl-1 f-10" ></i>
        <spring:message code='label.SeDeconnecter'/>
        </a>
        </div>
        </div>
        </li>
        </ul>
        </div>
        </div>

        </nav>

        <nav class="navbar-primary">
        <a href="#" class="btn-expand-collapse"><span class="glyphicon glyphicon-menu-left"></span></a>
        <ul class="navbar-primary-menu">
        <li>
        <a href="/api/getMenu"><span class="glyphicon glyphicon-list-alt"></span><span class="nav-label"> Accueil </span></a>
                <a href="/api/getAccount5/0/6/0"><span class="glyphicon glyphicon-cog"></span><span class="nav-label">Calcul du salaire </span></a>
        <a href="/api/getAccount5/0/6/0"><span class="glyphicon glyphicon-envelope"></span><span class="nav-label">Gestion du personnel</span></a>
        <a href="#"><span class="glyphicon glyphicon-film"></span><span class="nav-label">Paramètres</span></a>
        </li>
        </ul>
        </nav>


                <div class="main-content">
                <!-- partial -->

