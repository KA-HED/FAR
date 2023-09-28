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
        color: #2196f3   !important; font-family: Calibri !important;font-weight: bold
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
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation" style="margin-top: 5rem">
        <span class="navbar-toggler-icon text-white" style="color: white !important"></span>
    </button>
    <div class="collapse navbar-collapse mt-4 myCollpase" id="navbarNavDropdown">
        <div class="position-relative align-items-baseline mt-4 w-100">
            <ul class="navbar-nav my_ul">
                <li class="nav-item active">
                    <a class="nav-link nl" href="/api/getMenu"><i class="fa fa-home" style="color: #e0e0e0"></i> <spring:message code="label.accueil" /> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link nl dropdown-toggle" href="#" id="" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-file" style="color: #e0e0e0"></i> <spring:message code="label.Evaluationenvirementale" />
                    </a>
                    <div class="dropdown-menu" style="text-align: ${pageContext.response.locale=='ar'?'right':'left'}">
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/EE/0/6/0',9)"><spring:message code="label.Etudedimpactenvirementale" /></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getDre/0/6',10)"><spring:message code="label.Etudedimpactenvirementalee" /></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/NT/0/6/0',13)"><spring:message code="label.Noticedimpact" /></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)"><spring:message code="label.Auditenvirementale" /></a>
                        <%-- <a class="dropdown-item" href="/api/getEie/0/6"><spring:message code="label.Etudeenvirementalestrategique" /></a> --%>
                         </div>
                </li>
                <%-- <li class="nav-item">
                    <a class="nav-link nl" href="/api/Renseignement/11/0/6"><spring:message code="label.Renseignementprealable"/></a>
                </li> --%>
                <li class="nav-item">
                    <a type="button" onclick="goToLien_menu('/api/param',15)"  class="nav-link nl"><i class="fa fa-cog" style="color: #e0e0e0"></i> <spring:message code='Button.Parametre' /></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link nl dropdown-toggle" onclick="goToLien_menu('/api/statistiquee',16)" id="" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-chart-bar" style="color: #e0e0e0"></i> <spring:message code='Button.Statistique' />
                    </a>
                    <%--<div class="dropdown-menu">
                        &lt;%&ndash;<a class="dropdown-item" type="button" onclick="goToLien_menu('/api/statistique/autorisation',16)"><spring:message code="label.Autorisations" /></a>&ndash;%&gt;
                        &lt;%&ndash;<a class="dropdown-item" type="button" onclick="goToLien_menu('/api/statistique/evaluation',16)"><spring:message code="label.Evaluationenvirementale" /></a>&ndash;%&gt;
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/statistiquee',16)">Statistiques</a>
                    </div>--%>
                </li>
                <li class="nav-item dropdown" >
                    <a class="nav-link nl dropdown-toggle" href="#" id="" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-history" style="color: #e0e0e0"></i> <spring:message code="Button.Audit" />
                    </a>
                    <div class="dropdown-menu" style="text-align: ${pageContext.response.locale=='ar'?'right':'left'}">
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/Audit/0/6',17)"><spring:message code='label.Auditsysteme'/></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/AuditAutorisation/0/6/ZF',17)"><spring:message code='label.AuditImportationDesdechetsEnZoneFranche'/></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/AuditAutorisation/0/6/ET',17)"><spring:message code='label.AuditImportationDesDechetsNonDangereuxDunpaysEtranger'/></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/AuditAutorisation/0/6/XD',17)"><spring:message code='label.AuditExportationDesDechetsDangereux'/></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/AuditAutorisation/0/6/TR',17)"><spring:message code='label.AuditTransitDesDechets'/></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/AuditAutorisation/0/6/IT',17)"><spring:message code='label.AuditInstallationDeTraitementDesDechets'/></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/AuditAutorisation/0/6/CT',17)"><spring:message code='label.AuditCollecteTransportDesDechets'/></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/AuditAutorisation/0/6/RS',17)"><spring:message code='label.AuditRenseignementprealable'/></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/AuditAutorisation/0/6/EE',17)"><spring:message code='label.AuditEtudedImpactsurlEnvironnement'/></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/AuditAutorisation/0/6/NT',17)"><spring:message code='label.AuditNoticedImpactsurlEnvironnement'/></a>
                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/AuditAutorisation/0/6/AE',17)"><spring:message code='label.AuditEnvironnemental'/> </a>
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
