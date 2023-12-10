<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



        <nav class="navbar navbar-expand-xl navbar-light position-fixed bg-light w-100 my_menu" >
                <a class="navbar-brand " href="#">
                        <div class=" mr-auto logo position-relative">
                                <a href="/api/getMenu" style="text-decoration: none">
                                        <img src="${pageContext.request.contextPath}/assets/images/logo_1.png" style="width: 55px;background:
                                        white;border-radius: 5px;" class="d-inline-block align-top pos-absolute shadow " alt="">
                                </a>
                        </div>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation" >
                        <span class="navbar-toggler-icon text-white" style="color: white !important"></span>
                </button>
                <div class="collapse navbar-collapse myCollpase" id="navbarNavDropdown">
                        <div class="position-relative align-items-baseline w-100">
                                <ul class="navbar-nav my_ul">
                                        <li class="nav-item ">
                                        <a class="nav-link nl" href="/api/getMenu"><i class="fa fa-home" style="color: #e0e0e0"></i>
                                        <spring:message code="label.accueil"/>
                                        <span class="sr-only">(current)</span></a>
                                        </li>

                                        <li class="nav-item dropdown">
                                        <a class="nav-link nl dropdown-toggle" href="#" id="om" data-toggle="dropdown" role="button"
                                        aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-cog" style="color: #e0e0e0"></i> Factures
                                        </a>
                                        <div class="dropdown-menu" >
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/OM/listeCOMPTE_RENDU',10)">COMPTE-RENDU </a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/OM/listeOM',10)">M16 entré  </a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/OM/listeOM',10)">M16 sortie </a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/OM/listeOM',10)">M15 </a>

                                        </div>
                                        </li>
                                        <li class="nav-item dropdown">
                                        <a class="nav-link nl dropdown-toggle" href="#" id="om" data-toggle="dropdown" role="button"
                                        aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-cog" style="color: #e0e0e0"></i> Ordre de mutation
                                        </a>
                                        <div class="dropdown-menu" >
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/OM/listeOM',10)">OM</a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/OM/listeOM_changement_classification',10)">OM changement classification</a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/OM/listeMateriel',12)">Matériel </a>

                                        </div>
                                        </li>
                                        <li class="nav-item dropdown">
                                        <a class="nav-link nl dropdown-toggle" href="#" id="om" data-toggle="dropdown" role="button"
                                        aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-cog" style="color: #e0e0e0"></i> TED
                                        </a>
                                        <div class="dropdown-menu" >
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/TedAeb/listeTedAeb',10)">TED</a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/OM/listeOM_changement_classification',10)">Consultation Globale des TED</a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Consultation des TED par Inspection</a>

                                        </div>
                                        </li>
                                        <li class="nav-item ">
                                        <a class="nav-link nl" href="/TedAeb/listeIndispo"><i class="fa fa-file" style="color: #e0e0e0"></i> Indispo<span
                                        class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item dropdown">
                                        <a class="nav-link nl dropdown-toggle" href="#" id="param" data-toggle="dropdown" role="button"
                                        aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-cog" style="color: #e0e0e0"></i>
                                        <spring:message code='Button.Parametre'/>
                                        </a>
                                        <div class="dropdown-menu" style="text-align: ${pageContext.response.locale=='ar'?'right':'left'}">
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeCategorie_materiel',9)">Catégorie
                                        du matériel </a>
                                        <a class="dropdown-item" type="button"
                                        onclick="goToLien_menu('/api/param/listeSCategorieAEB',10)">Sous-Catégorie du matériel </a>
                                        <%--<a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/NT/0/6/0',13)">Catégorie et--%>
                                        <%--Sous-Catégorie</a>--%>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeMarqueAEB',12)">Marque </a>
                                        <%--<a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Sous-Catégorie et marque</a>--%>
                                        <%--<a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Paramètres techniques                                        </a>--%>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeServices_bureaux',12)">Services et bureaux</a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeDetenteur',12)">Détenteurs des                                        véhicules </a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeDetachement_Vehicules',12)">Détachement des
                                        véhicules</a>
                                        <%--<a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeArt',12)">Classification du matériel</a>--%>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeModeleAeb',12)">Classification du matériel</a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/param/listeMar',12)">Marché Fermé</a>
                                        <a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">Création du matériel
                                        </a>
                                        <%--<a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">ici</a>--%>
                                        <%--<a class="dropdown-item" type="button" onclick="goToLien_menu('/api/getEie/AE/0/6/0',12)">ici</a>--%>
                                        </div>
                                        </li>
                                </ul>
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
                                                                <%--<a type="button" onclick="goToLien_menu('/api/getAccount5/0/6/0',11)" class="dropdown-item">--%>
                                                                <%--<i class="fa fa-users text-primary mr-2 pl-1 f-10" ></i>--%>
                                                                <%--<spring:message code='label.gestioncomptes'/>--%>
                                                                <%--</a>--%>
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
