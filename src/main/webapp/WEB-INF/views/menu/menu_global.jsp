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
