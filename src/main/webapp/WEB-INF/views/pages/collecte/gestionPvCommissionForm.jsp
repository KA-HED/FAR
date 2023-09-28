<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<spring:url value="/resources/" var="resources"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div id="form_PvComission" class="mt-5">
    <form class="col-12 from_add" id="frm_etatDoss" name="compteForm">
        <div class="row p-0 m-0 justify-content-center">
            <div class="col-md-5 mt-5 col-sm-12 grid-margin">
                <div class="photo  hvr-buzz-out" >
                    <i class="mdi icc mdi-account-multiple menu-icon"></i>
                </div>
                <div class="card" >
                    <div class="row justify-content-center">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 29%; background-color: seagreen" aria-valuenow="29" aria-valuemin="0" aria-valuemax="100">

                            </div>
                        </div>

                        <div class="col-10 mt-4" dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}">
                            <h3 class="ml6 float-right mb-1">
                                                      <span class="text-wrapper">
                                                        <span class="letters"><span class="letters"><spring:message code="label.NouvPvComission"/></span></span>
                                                      </span>
                            </h3>
                            <div class="row p-0 m-0 mt-5">
                            </div>

                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group mt-3">
                                        <label><spring:message code="label.Titre"/></label>
                                        <input id="id_pv_commission" type="hidden" value="${(empty onepvcomission)?'0':onepvcomission.id_pv_commission}">
                                        <input  required type="text" id="titre" name="titre"  value="${onepvcomission.titre}" class="form-control" >
                                        <small style="color: #d32f2f; font-style: italic" id="spnom"></small>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group mt-3">
                                        <label><spring:message code="label.CollecteetTransport" /></label>
                                        <select id="collecte" name="collecte" multiple class="form-control select2">
                                            <c:choose>
                                                <c:when test="${empty onepvcomission}">
                                                    <c:forEach items="${collectes}" var="collecte">
                                                        <option value="${collecte.id_collecte}">${collecte.num_demande}</option>
                                                    </c:forEach>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${onepvcomission.collecte}" var="one">
                                                        <option selected value="${one.id_collecte}"> ${one.num_demande} </option>
                                                    </c:forEach>
                                                    <c:forEach items="${collectes}" var="collecte">
                                                        <option value="${collecte.id_collecte}"> ${collecte.num_demande} </option>
                                                    </c:forEach>
                                                </c:otherwise>
                                            </c:choose>

                                            <c:if test="${empty collectes}">
                                                <option disabled >Aucun Resultat</option>
                                            </c:if>

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group mt-3">
                                        <label><spring:message code="label.dateDepot"/></label>
                                        <fmt:formatDate dateStyle="long" pattern="yyyy-MM-dd" var="date" value="${onepvcomission.date_commission }"/>
                                        <input id="date_commission" name="date_commission" type="date" value="${date}" class="form-control">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <c:choose>
                                    <c:when test="${not empty onepvcomission.url_file_pv}">
                                        <div class="col-md-11 col-sm-11">
                                            <div class="form-group mt-3">
                                                <label><spring:message code="label.AttacherlePV"/></label>
                                                <input id="url_file_pv" type="file" accept="application/pdf,image/png, image/jpeg">
                                            </div>
                                        </div>
                                        <div class="col-md-1 col-sm-11 pl-0" style="top: 45px">
                                            <a id="btn_download_file" href="${fn:replace(onepvcomission.url_file_pv,'/assets/myFile/','/dowload_uploaded/')}" class="btn btn-primary btn-block">
                                                <i class="fa fa-download"></i>
                                            </a>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="col-md-12 col-sm-12">
                                            <div class="form-group mt-3">
                                                <label><spring:message code="label.AttacherlePV"/></label>
                                                <input id="url_file_pv" type="file" accept="application/pdf,image/png, image/jpeg">
                                            </div>
                                        </div>
                                    </c:otherwise>
                                </c:choose>

                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center mb-4" style="margin:14px;">
                        <div class="col-md-5">
                            <a type="button" class="btn btn-danger-2  col-md-5 m-1" href="/api/getListePvCommission/0/40"><span style="color: white"> <spring:message code="label.Annuler"/></span></a>
                            <button type="button" class="btn btn-success col-md-5 m-1" id="btnTo" onclick="addPvCommision()"><spring:message code="label.Enregistrer"/></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<!-- main-panel ends -->
<jsp:include page="../../includes/footer.jsp"/>

