

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url value="/resources/" var="resources" />
<jsp:include page="../../includes/header.jsp" />
<jsp:include page="../../menu/menu_global.jsp" />
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/ED/style_card_per.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />


<div class="col-12 from_add"  style="margin: 60px 0px 20px 0px;">
    <div class="row p-0 m-0 justify-content-center">
        <div class="col-md-8 mt-5 col-sm-12 grid-margin">
            <div class="row pl-3 pr-3 mt-4" >
                <div class="card-body col-md-12" style="background-color: white">
                    <%--<div class="row mt-20">--%>
                        <%--<div class="col-lg-6 col-xl-4 mb-5 animate__bounceIn">--%>
                            <%--<div class="card card-custom wave wave-animate-slow mb-8 mb-lg-0" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;">--%>


                                <%--<div class="card-body" style="border-bottom: 6px solid #FFA800;">--%>
                                    <%--<div class="d-flex align-items-center p-5">--%>
                                        <%--<div class="mr-6">--%>

                                        <%--</div>--%>
                                        <%--<div class="d-flex flex-column">--%>
                                            <%--<a href="/api/getMenuAEB" class="text-dark text-hover-primary font-weight-bold  mb-3">MODULE AEB</a>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-lg-6 col-xl-4 mb-5 animate__bounceIn">--%>
                            <%--<div class="card card-custom wave wave-animate-slower mb-8 mb-lg-0" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;background-color: #dfdfdfad;">--%>
                                <%--<div class="card-body" style="border-bottom: 6px solid #1BC5BD;">--%>
                                    <%--<a  href="${pageContext.request.contextPath}/assets/pdf/Guide_utilisation/reservation.pdf" class="menu-link"  title="Aider"--%>
                                        <%--style="z-index: 1;position: absolute;">--%>
                                        <%--<span  class="menu-text"><i class="fa fa-question-circle  mr-2" style=" color: #1bc5bd;"></i>  </span>--%>
                                    <%--</a>--%>
                                    <%--<div class="d-flex align-items-center p-5">--%>
                                        <%--<div class="mr-6">--%>
                                        <%--</div>--%>
                                        <%--<div class="d-flex flex-column">--%>
                                            <%--<a href="#" class="text-dark text-hover-primary font-weight-bold  mb-3">MODULE ACHAT</a>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-lg-6 col-xl-4 mb-5 animate__bounceIn">--%>
                            <%--<div class="card card-custom wave wave-animate-fast" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;background-color: #dfdfdfad;">--%>
                                <%--<div class="card-body" style="border-bottom: 6px solid #1BC5BD;">--%>
                                    <%--<a  href="${pageContext.request.contextPath}/assets/pdf/Guide_utilisation/ordre.pdf" class="menu-link" title="Aider"--%>
                                        <%--style="z-index: 1;position: absolute;">--%>
                                        <%--<span  class="menu-text"><i class="fa fa-question-circle  mr-2" style=" color: #1bc5bd;"></i>  </span>--%>
                                    <%--</a>--%>
                                    <%--<div class="d-flex align-items-center p-5">--%>
                                        <%--<div class="mr-6">--%>

                                        <%--</div>--%>
                                        <%--<div class="d-flex flex-column">--%>
                                            <%--<a href="#" class="text-dark text-hover-primary font-weight-bold  mb-3">MODULE CARBURANT</a>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                    <%--</div>--%>

                    <div class="pricing-table-title">
                        <h2>Modules Stratégiques</h2>
                    </div>
                    <div class="pricing-table table">

                        <div class="ptable-item">
                            <div class="ptable-single">

                                <div class="ptable-header">
                                    <div class="ptable-icon">
                                        <i class="fa fa-home"></i>
                                    </div>
                                    <div class="ptable-title">
                                        <h2>MODULE ACHAT</h2>
                                    </div>

                                </div>

                                <div class="ptable-body">
                                    <div class="ptable-description">
                                    </div>
                                </div>

                                <div class="ptable-footer">
                                    <div class="ptable-action">
                                        <a href="#"><i class="fa fa-click"></i>Accédez</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="ptable-item featured-item">
                            <div class="ptable-single">

                                <div class="ptable-header">
                                    <div class="ptable-icon">
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="ptable-title">
                                        <h2>MODULE AEB</h2>
                                    </div>

                                </div>

                                <div class="ptable-body">
                                    <div class="ptable-description">
                                    </div>
                                </div>

                                <div class="ptable-footer">
                                    <div class="ptable-action">
                                        <a href="/api/getMenuAEB"><i class="fa fa-shopping-cart"></i>Accédez</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="ptable-item">
                            <div class="ptable-single">

                                <div class="ptable-header">
                                    <div class="ptable-icon">
                                        <i class="fa fa-gift"></i>
                                    </div>
                                    <div class="ptable-title">
                                        <h2>MODULE CARBURANT</h2>
                                    </div>
                                    <%--<div class="ptable-price">--%>
                                    <%--<h2><small>$</small>299 <span>/ M</span></h2>--%>
                                    <%--</div>--%>
                                </div>

                                <div class="ptable-body">
                                    <div class="ptable-description">
                                    </div>
                                </div>

                                <div class="ptable-footer">
                                    <div class="ptable-action">
                                        <a href="#"><i class="fa fa-shopping-cart"></i>Accédez</a>
                                    </div>
                                </div>
                            </div>
                        </div>




                    </div>


                </div>
            </div>



        </div>
    </div>
</div>
