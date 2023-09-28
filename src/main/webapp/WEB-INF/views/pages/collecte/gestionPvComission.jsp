<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<spring:url value="/resources/" var="resources"/>
<jsp:include page="../../includes/header.jsp"/>
<jsp:include page="../../menu/menu_verticale.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<style>
    .orientation_ar{
        margin: -1rem -1rem auto -1rem !important;
        border-bottom-left-radius: 0 !important;
        border-bottom-right-radius: 47px !important;
    }
</style>
<div class="container-fluid page-body-wrapper" style="margin: 20px 0px 20px 0px;">
    <div class="main-panel" style="margin-top:150px" >
        <div class="content-wrapper">
            <c:choose>
                <c:when test="${pageContext.response.locale=='ar'}">
                    <c:set var="lng" value="nom_ar"/>
                </c:when>
                <c:otherwise>
                    <c:set var="lng" value="nom_fr"/>
                </c:otherwise>
            </c:choose>

            <div class="col-12" dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb ml-4" style="margin-top: -18px !important;">
                        <li class="breadcrumb-item" style="${pageContext.response.locale=='ar'?'right:3px !important;':'left:-10px !important;'}">
                            <a href="/api/getMenu"><i class="fa fa-home pt-3 Pl-2"></i></a>
                        </li>
                        <li class="breadcrumb-item ">
                            <a style="font-size: 14px;" class="" href="/api/getListePvCommission/0/40" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"  >
                                <spring:message code="label.GestionPvComission"/>
                            </a>
                        </li>
                    </ol>
                </nav>
            </div>



            <div id="table_PvComission" >
                <div class="row justify-content-end pr-3">
                    <div class="col-md-2 mt-3">
                        <button class="btn btn-primary  btn-block" onclick="addPvCommision_form(0)">
                            <i class="fa fa-plus"></i>
                            <spring:message code="label.Ajouter"/>
                        </button>
                    </div>
                </div>
                <div class="mt-2">
                    <div class="col-12 table-responsive" dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}">
                        <table style="width:100% !important; " id="tableProfils"
                               class="table table-bordered display responsive nowrap">
                            <thead style="background: gray;color: white;border-color: #737373;">
                            <tr style="background-color:#2196f3     ">
                                <th ><spring:message code="label.Titre"/> </th>
                                <th ><spring:message code="label.dateDepot"/> </th>
                                <th ><spring:message code="label.CollecteetTransport" /> </th>
                                <th > <spring:message code="label.PvDeLaCommision" /> </th>
                                <th class="all"><spring:message code="label.Action"/></th>
                            </tr >
                            </thead>
                            <tbody>

                            <c:forEach items="${pvcomission}" var="pv" varStatus="loopp">

                                <tr>
                                    <td class="font-weight-semibold">
                                        ${pv.titre}
                                    </td>
                                    <td class="text-center">
                                        <fmt:formatDate dateStyle="long" pattern="dd/MM/yyyy" value="${pv.date_commission }"/>
                                    </td>
                                    <td class="text-center">
                                        <button class="btn btn-primary" data-toggle="modal" data-target="#collecte-${pv.id_pv_commission}">
                                            <i class="fa fa-truck"></i>
                                        </button>
                                    </td>
                                    <td class="text-center">
                                        <a href="${fn:replace(pv.url_file_pv,'/assets/myFile/','/dowload_uploaded/')}" class="btn btn-primary">
                                            <i class="fa fa-download"></i>
                                        </a>
                                    </td>

                                    <td class="text-center">
                                        <ul class="list-inline m-0">
                                            <li class="list-inline-item text-center">
                                                <button  onclick="addPvCommision_form(${pv.id_pv_commission})"
                                                   class="btn btn-outline-warning btn-sm rounded-circle tab_edit text-center"
                                                   type="button" data-toggle="tooltip" data-placement="top" title="Editer"
                                                   style="background-color: white;padding-top: 1px;padding-bottom: 10px">
                                                    <div class="icon_trash_1">
                                                <span class="fas fa-pencil-alt"
                                                      style="color: orange;margin-top: 10px"></span>
                                                    </div>
                                                </button>
                                            </li>
                                            <li class="list-inline-item">
                                                <button onclick="deletePvCommision_form(${pv.id_pv_commission})"
                                                        class="btn btn-outline-danger btn-sm rounded-circle tab_trash"
                                                        type="button" data-toggle="tooltip" data-placement="top"
                                                        title="Supprimer" style="background-color: white">
                                                    <div class="icon_trash_1">
                                                        <span class="fas fa-trash" style="color: red"></span>
                                                    </div>
                                                </button>
                                            </li>
                                        </ul>
                                    </td>

                                    <!-- Modal -->
                                    <div class="modal fade" id="collecte-${pv.id_pv_commission}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLongTitle"><spring:message code="label.CollecteetTransport"/> </h5>
                                                    <button type="button" class="close ${pageContext.response.locale=="ar"?'orientation_ar':''} " data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row pl-2 pr-2">
                                                        <div class="col-12 border  bg-gradient-light ">
                                                            <p class="text-center  pt-3 ">
                                                                <spring:message code="label.Numerodedemande"/>
                                                            </p>
                                                        </div>
                                                        <c:forEach items="${pv.collecte}" var="c">
                                                            <div class="col-12 border text-center p-2">
                                                                    ${c.num_demande}
                                                            </div>
                                                        </c:forEach>
                                                    </div>

                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button"  data-dismiss="modal" class="btn btn-primary"><spring:message code="button.Fermer"/> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </tr>

                            </c:forEach>
                            <c:if test="${empty pvcomission}" >
                                <tr>
                                    <td colspan="5" class="text-center">
                                        <spring:message code="label.AucunResultat"/>
                                    </td>
                                </tr>

                            </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>

                <c:choose>
                    <c:when test="${not empty pvcomission}">
                        <div class="pagination pagination-lg justify-content-center" dir="ltr">
                            <c:if test="${(page)>0}">
                                <c:set value="${page-1}" var="page_db"/>
                                <c:set value="${totalPage-1}" var="page_LAST"/>
                            </c:if>
                            <c:if test="${(page)<=0}">
                                <c:set value="0" var="page_db"/>
                                <c:set value="0" var="page_LAST"/>
                            </c:if>

                            <a style="background-color: #2196f3     ;text-align: center;background-size: 100% 100%" onclick="listAlimentation('${type}',0,6,)" class="pageStyle"><i class="mdi mdi-arrow-collapse-left m-0"></i></a>
                            <a  style="background-color: #2196f3   !important;" onclick="listAlimentation('${type}', ${page_db}, 6)" class="pageStyle">&laquo;</a>

                            <c:set var="salary" value="${totalPage-page-1}"/>
                            <c:choose>
                                <c:when test="${salary>5 }">
                                    <c:set var="toAdd" value="3"/>
                                </c:when>
                                <c:otherwise>
                                    <c:set var="toAdd" value="${totalPage-page-1}"/>
                                </c:otherwise>
                            </c:choose>

                            <c:if test="${totalPage>0}">
                                <c:forEach begin="${page}" end="${page+toAdd}" var="c">
                                    <a onclick="listAlimentation('${type}', ${c}, 6)"  ${c==number ? 'class=" btnss pageStyle"' : 'class="btnss pageStyle1"'}>${c+1}</a>
                                </c:forEach>
                            </c:if>
                            <c:if test="${(page)>=(totalPage-1)}">
                                <c:set value="${totalPage-1}" var="page_end"/>
                            </c:if>

                            <c:if test="${(page)<(totalPage-1)}">
                                <c:set value="${page+1}" var="page_end"/>
                            </c:if>


                            <a style="background-color: #2196f3   !important;" onclick="listAlimentation('${type}',${page_end},6)" class="pageStyle">&raquo;</a>
                            <a style="background-color: #2196f3     ;text-align: center;background-size: 100% 100%" onclick="listAlimentation('${type}',${totalPage-1},6)" class="pageStyle"><i class="mdi mdi-arrow-collapse-right m-0"></i></a>



                        </div>
                    </c:when>
                </c:choose>
            </div>



        </div>
    </div>

</div>



<!-- main-panel ends -->
<jsp:include page="../../includes/footer.jsp"/>

