    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

        <spring:url value="/resources/" var="resources" />
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <style>
        /* Dropdown Button */
        .dropbtn {
        color: white;
        font-size: 16px;
        border: none;
        }

        /* The container <div> - needed to position the dropdown content */
        .dropdown {
        position: relative;
        display: inline-block;
        }

        /* Dropdown Content (Hidden by Default) */
        .dropdown-content {
        display: none;
        background-color: #f1f1f1;

        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
        }

        /* Links inside the dropdown */
        .dropdown-content a {
        color: black;

        text-decoration: none;
        display: block;
        }
        .navbar-nav li {
        margin-right: 15px;
        }

        .submenu{

        }


        /* Change color of dropdown links on hover */
        .dropdown-content a:hover {background-color: #e5cb9c;}

        /* Show the dropdown menu on hover */
        .dropdown:hover .dropdown-content {display: block;}
        h1{
        color: #184a00bd   !important; font-family: Calibri !important;font-weight: bold
        }

        </style>

        <nav class="navbar navbar-expand-xl navbar-light position-fixed w-100 my_menu" >
        <div class="row  pl-0 m-0 top_bar_top justify-content-end">

        <div class="dropdown col-auto" style="margin-top: 0.6rem">
        <a class="pr-2 nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown" onclick="getfunction()">


        </a>

        </div>
        </div>
        <a class="navbar-brand mt-4" href="#">
        <div class="mt-4 mr-auto logo position-relative">
        <a href="/api/getMenu" style="text-decoration: none">
        <img src="${pageContext.request.contextPath}/assets/images/logo_1.png" style="width: 80px;background: white;border-radius: 5px;" class="d-inline-block align-top pos-absolute shadow " alt="">
        </a>
        </div>
        </a>
        <a class="navbar-brand mt-4" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation" >
        <span class="navbar-toggler-icon text-white" style="color: white !important"></span>
        </button>
        <div class="collapse navbar-collapse mt-4 myCollpase" id="navbarNavDropdown">
        <div class="position-relative align-items-baseline mt-4 w-100">
        <ul class="navbar-nav my_ul">
        <li class="nav-item ">
        <a class="nav-link nl" href="/api/getMenu"><i class="fa fa-home" style="color: #e0e0e0"></i> <spring:message code="label.accueil" /> <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item ">
        <a class="nav-link nl" href="/api/getMenu"><i class="fa fa-file" style="color: #e0e0e0"></i> Ordre de mutation<span class="sr-only">(current)</span></a>
        </li>
            <li class="nav-item dropdown">
            <a class="nav-link nl dropdown-toggle" href="#" id="om" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-cog" style="color: #e0e0e0"></i> Ordre de mutation
            </a>
            <div class="dropdown-menu" >
            <a class="dropdown-item" type="button" onclick="goToLien_menu('/OM/listeOM',10)">OM</a>
            <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeSCategorieAEB',10)">OM changement classification </a>
            <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Création du matériel </a>

            </div>
            </li>

            <li class="nav-item ">
        <a class="nav-link nl" href="/api/getMenu"><i class="fa fa-file" style="color: #e0e0e0"></i> TED<span class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item dropdown">
        <a class="nav-link nl dropdown-toggle" href="#" id="param" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-cog" style="color: #e0e0e0"></i> <spring:message code='Button.Parametre' />
        </a>
        <div class="dropdown-menu" style="text-align: ${pageContext.response.locale=='ar'?'right':'left'}">
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeCategorie_materiel',9)">Catégorie du matériel </a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeSCategorieAEB',10)">Sous-Catégorie du matériel  </a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/NT/0/6/0',13)">Catégorie et Sous-Catégorie</a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Marque </a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Sous-Catégorie et marque</a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Paramètres techniques </a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Services et bureaux</a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Détenteurs des véhicules </a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Détachement des véhicules</a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Classification du matériel</a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Marché Fermé</a>
        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Création du matériel </a>
        <%--<a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">ici</a>--%>
        <%--<a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">ici</a>--%>
        </div>
        </li>

        </ul>
        <ul class="nav-right user_nav mb-0">
        <li class="user-profile header-notification">
        <%-- <div class="dropdown" >
             <div class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                 <span  class="fa fa-user" style="color:white;font-size:20px"></span>
                 <span style="color:white;text-transform: capitalize;">${user.nom}</span>
                 <i class="feather icon-chevron-down"></i>
             </div>
             <div class="dropdown-menu drop">
                     <a href="/logout" class="dropdown-item">
                         <i class="mdi mdi-logout text-primary mr-0 pl-1 f-14" ></i><spring:message code='label.SeDeconnecter' />
                     </a>
                     <a href="/api/droit_acces/0" class="dropdown-item">
                         <i class="fa fa-key text-primary mr-0 pl-1 f-14 " ></i></i><spring:message code='label.DroitAcces' />
                     </a>
                     <a href="/api/getAccount5" class="dropdown-item">
                         <i class="fa fa-users text-primary mr-0 pl-1 f-14" ></i></i><spring:message code='label.CreationComptes' />
                     </a>
             </div>--%>
        <div class="dropdown" style="text-align: ${pageContext.response.locale=='ar'?'right':'left'}">
        <div class="dropdown-toggle dropbtn" data-toggle="dropdown" aria-expanded="false">
        <span  class="fa fa-user" style="color:white;font-size:20px;padding:10px;border-radius:50%;background: #e0e0e0;"></span>
        <span style="color:white;text-transform: capitalize;">${user.nom}</span>
        <i class="mdi mdi-chevron-down"></i>
        </div>

        <div class="dropdown-content">
        <a type="button" onclick="goToLien_menu('/api/getListProfile/0/6',11)" class="dropdown-item">
        <i class="fas fa-key text-primary mr-2 pl-1 f-10 " ></i><spring:message code='label.gestionprofils' />
        </a>
        <a type="button" onclick="goToLien_menu('/api/getAccount5/0/6/0',11)"  class="dropdown-item">
        <i class="fa fa-users text-primary mr-2 pl-1 f-10" ></i><spring:message code='label.gestioncomptes' />
        </a>
        <a type="button" onclick="goToLien_menu('/api/getAccount5/0/6/1',11)"  class="dropdown-item">
        <i class="fa fa-users text-primary mr-2 pl-1 f-10" ></i><spring:message code='label.gestioncomptesP' />
        </a>
        <a href="/logout" class="dropdown-item">
        <i class="mdi mdi-logout text-primary mr-2 pl-1 f-10" ></i><spring:message code='label.SeDeconnecter' />
        </a>
        </div>
        </div>
        </li>
        </ul>
        </div>
        </div>

        </nav>
