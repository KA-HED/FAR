<jsp:include page="../../includes/tag.jsp"/>
<jsp:include page="../../includes/header.jsp"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="../../menu/menu_verticale.jsp"/>

<%--eddaoudi--%>
<style>
    .form-container {
        margin-top: 80px;
        padding: 30px;
        border-raduis: 10px;
        box-shadow: 0px 0px 5px 0px #000;

    }

    .switch {
        position: relative;
        display: inline-block;
        width: 45px;
        height: 18px;
    }

    .switch input {
        opacity: 0;
        width: 0;
        height: 0;
    }

    .slider {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #ccc;
        -webkit-transition: .4s;
        transition: .4s;
    }

    .slider:before {
        position: absolute;
        content: "";
        height: 10px;
        width: 10px;
        left: 4px;
        bottom: 4px;
        background-color: white;
        -webkit-transition: .4s;
        transition: .4s;
    }

    input:checked + .slider {
        background-color: #2196F3;
    }

    input:focus + .slider {
        box-shadow: 0 0 1px #2196F3;
    }

    input:checked + .slider:before {
        -webkit-transform: translateX(26px);
        -ms-transform: translateX(26px);
        transform: translateX(26px);
    }

    /* Rounded sliders */
    .slider.round {
        border-radius: 34px;
    }

    .slider.round:before {
        border-radius: 50%;
    }
</style>


<div class="col-12 from_add"  style="margin: 60px 0px 20px 0px;">
    <div class="row p-0 m-0 justify-content-center">
        <div class="col-md-8 mt-5 col-sm-12 grid-margin">
            <div class="row pl-3 pr-3 mt-4" >
                <div class="container-fluid" >
                    <div class="row justify-content-center card mx-2">
                        <div class="card-body col-md-12" style="background-color: white">
                                <div class="table-responsive">
                                    <div class="row justify-content-start ">
                                        <div class="col-lg-12 pr-0">

                                        </div>
                                        <div class="col-lg-12 pr-0">
                                            <div class="row m-0 pt-5">
                                                <div class="col-6 pl-0">
                                                    <h4 class="ml6">
                                                        <span>Marché fermé  </span>
                                                    </h4>
                                                </div>
                                                <div class="col-6">
                                                    <a class="button text-white bgMyColor float-right"
                                                       href="/api/param/formToAddMar/0"><span>Ajouter </span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    </br>
                                    <div id="ta" class="container__inner content__description" style="padding-bottom: 10px;   min-height: 201px;">
                                        <input class="form-control" id="myInput" type="text" placeholder="Search..">


                                        <table class="table table-bordered table-checkable  tablee table-hover">
                                            <thead>
                                            <tr>
                                                <%--<th class="text-center"></th>--%>
                                                <th class="text-center">Identifiant Marché</th>
                                                <th class="text-center">N° Marché </th>
                                                <th class="text-center">Etablissement </th>
                                                <th class="text-center">Fournisseur</th>
                                                <th class="text-center"><spring:message code="label.Action"/></th>
                                            </tr>
                                            </thead>
                                            <tbody id="myTable">
                                                <c:forEach items="${listF}" var="f">

                                                <tr id="tr-${f.marqueId}">
                                                    <td>${f.desiMarque}</td>
                                                    <td>${f.abrMarque}</td>
                                                    <td>${f.abrMarque}</td>
                                                    <td>${f.abrMarque}</td>
                                                    <td class="text-center">
                                                        <ul class="list-inline m-0">
                                                            <li class="list-inline-item text-center">
                                                                <a href="/api/param/formToAddMar/${f.marqueId}"
                                                                   class="btn"
                                                                   type="button" data-toggle="tooltip" data-placement="top" title="Editer">
                                                                    <div class="icon_trash_1">
                                                                <span class="fas fa-pencil-alt"
                                                                      style="color: orange;margin-top: 10px"></span>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <button onclick="deleteCompte(${f.marqueId})"
                                                                        class="btn"
                                                                        type="button" data-toggle="tooltip" data-placement="top"
                                                                        title="Supprimer">
                                                                    <div class="icon_trash_1">
                                                                        <span class="fas fa-trash" style="color: red"></span>
                                                                    </div>
                                                                </button>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>

                                    </div>
                                    <%--<table style="margin-bottom:12px;" class="table tablee table-hover">--%>
                                        <%--<thead>--%>
                                        <%--<tr>--%>
                                            <%--&lt;%&ndash;<th class="text-center"></th>&ndash;%&gt;--%>
                                            <%--<th class="text-center">desigSCat</th>--%>
                                            <%--<th class="text-center">abrSCat</th>--%>
                                            <%--<th class="text-center"><spring:message code="label.Action"/></th>--%>
                                        <%--</tr>--%>
                                        <%--</thead>--%>
                                        <%--<tbody class="tbodyy table-bordered">--%>
                                       <%----%>
                                        <%--</tbody>--%>
                                    <%--</table>--%>
                                    <%--<c:choose>--%>
                                        <%--<c:when test="${not empty listF}">--%>
                                            <%--<div class="pagination pagination-lg justify-content-center mt-3" dir="ltr">--%>
                                                <%--<c:if test="${(page)>0}">--%>
                                                    <%--<c:set value="${page-1}" var="page_db"/>--%>
                                                    <%--<c:set value="${totalPage-1}" var="page_LAST"/>--%>
                                                <%--</c:if>--%>
                                                <%--<c:if test="${(page)<=0}">--%>
                                                    <%--<c:set value="0" var="page_db"/>--%>
                                                    <%--<c:set value="0" var="page_LAST"/>--%>
                                                <%--</c:if>--%>

                                                <%--<a style="background-color: #184a00bd     ;text-align: center;background-size: 100% 100%" onclick="getParamCompte(0, ${type})" class="pageStyle"><i class="mdi mdi-arrow-collapse-left m-0"></i></a>--%>
                                                <%--<a  style="background-color: #184a00bd   !important;" onclick="getParamCompte(${page_db}, ${type})" class="pageStyle">&laquo;</a>--%>

                                                <%--<c:set var="salary" value="${totalPage-page-1}"/>--%>
                                                <%--<c:choose>--%>
                                                    <%--<c:when test="${salary>5 }">--%>
                                                        <%--<c:set var="toAdd" value="3"/>--%>
                                                    <%--</c:when>--%>
                                                    <%--<c:otherwise>--%>
                                                        <%--<c:set var="toAdd" value="${totalPage-page-1}"/>--%>
                                                    <%--</c:otherwise>--%>
                                                <%--</c:choose>--%>

                                                <%--<c:if test="${totalPage>0}">--%>
                                                    <%--<c:forEach begin="${page}" end="${page+toAdd}" var="c">--%>
                                                        <%--<a style="background-color: #184a00bd   !important; ${page+toAdd}" onclick="getParamCompte(${c}, ${type})"  ${c==number ? 'class=" pageStyle1 active "' : 'class=" pageStyle"'}>${c+1}</a>--%>
                                                    <%--</c:forEach>--%>
                                                <%--</c:if>--%>
                                                <%--<c:if test="${(page)>=(totalPage-1)}">--%>
                                                    <%--<c:set value="${totalPage-1}" var="page_end"/>--%>
                                                <%--</c:if>--%>

                                                <%--<c:if test="${(page)<(totalPage-1)}">--%>
                                                    <%--<c:set value="${page+1}" var="page_end"/>--%>
                                                <%--</c:if>--%>

                                                <%--<a style="background-color: #184a00bd   !important;" onclick="getParamCompte(${page_end}, ${type})" class="pageStyle">&raquo;</a>--%>
                                                <%--<a style="background-color: #184a00bd     ;text-align: center;background-size: 100% 100%" onclick="getParamCompte(${totalPage-1}, ${type})" class="pageStyle"><i class="mdi mdi-arrow-collapse-right m-0"></i></a>--%>

                                            <%--</div>--%>
                                        <%--</c:when>--%>
                                    <%--</c:choose>--%>
                                    <%----%>
                                </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });

</script>

<jsp:include page="../../includes/footer.jsp"/>
