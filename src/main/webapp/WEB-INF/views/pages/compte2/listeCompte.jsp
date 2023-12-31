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
<c:if test="${pageContext.response.locale=='ar' }">
    <style>
        .fl {
            float: right;
        }

        .fr {
            float: left;
        }

        table {
            direction: rtl;
        }

    </style>
</c:if>
<c:if test="${pageContext.response.locale!='ar' }">
    <style>
        .fl {
            float: left;
        }

        .fr {
            float: right;
        }

        table {
            direction: ltr;
        }
    </style>
</c:if>
<c:set var="lng" value="nom_${pageContext.response.locale}"/>
<fmt:parseNumber var="i" type="number" value="0"/>

<div class="container-fluid" >
    <div class="row justify-content-center card mx-2">
        <div class="card-body col-md-12" style="background-color: white">
            <c:if test="${type==0}">
                <div class="table-responsive">
                    <div class="row justify-content-start ">
                        <div class="col-lg-12 pr-0">

                        </div>
                        <div class="col-lg-12 pr-0">
                            <div class="row m-0 pt-5">
                                <div class="col-4 pl-0">
                                    <h4 class="ml6">
                                        <span><spring:message code="label.listDesComptes"/></span>
                                    </h4>
                                </div>
                                <div class="col-8">
                                    <a class="button text-white bgMyColor float-right"
                                       href="/api/getFormToAdd"><span><spring:message
                                            code="label.Creationdescomptes"/></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table style="margin-bottom:12px;" class="table tablee table-hover">
                        <thead>
                        <tr>
                            <th class="text-center"></th>
                            <th class="text-center"><spring:message code="label.Nom"/></th>
                            <th class="text-center">Login</th>
                            <th class="text-center"><spring:message code="label.Telephone"/></th>
                            <th class="text-center"><spring:message code="label.Profile"/></th>
                            <%--<th class="text-center"><spring:message code="label.Region"/></th>--%>
                            <th class="text-center"><spring:message code="label.Action"/></th>
                        </tr>
                        </thead>
                        <tbody class="tbodyy table-bordered">
                        <c:forEach items="${listF}" var="f">

                            <tr id="tr-${f.compteId}">

                                <td><label class="switch">
                                    <input name="inputR" ${f.active ==true ? 'checked' : ''} class="form-check-input" type="checkbox" onclick="activepetitionnaire(${f.compteId})" id="id-${f.compteId}">
                                    <span class="slider round"></span>
                                </label></td>
                                <td>${f.nom}</td>
                                <td>${f.email}</td>
                                <td>${f.tel}</td>
                                <td>${f.profil.nom}</td>
                                <%--<td>${f.region.nom_fr}</td>--%>
                                <td class="text-center">
                                    <ul class="list-inline m-0">
                                        <li class="list-inline-item text-center">
                                            <a href="/api/updateCompte5/${f.compteId}"
                                               class="btn"
                                               type="button" data-toggle="tooltip" data-placement="top" title="Editer">
                                                <div class="icon_trash_1">
                                                <span class="fas fa-pencil-alt"
                                                      style="color: orange;margin-top: 10px"></span>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <button onclick="deleteCompte(${f.compteId})"
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
                    <c:choose>
                        <c:when test="${not empty listF}">
                            <div class="pagination pagination-lg justify-content-center mt-3" dir="ltr">
                                <c:if test="${(page)>0}">
                                    <c:set value="${page-1}" var="page_db"/>
                                    <c:set value="${totalPage-1}" var="page_LAST"/>
                                </c:if>
                                <c:if test="${(page)<=0}">
                                    <c:set value="0" var="page_db"/>
                                    <c:set value="0" var="page_LAST"/>
                                </c:if>

                                <a style="background-color: #184a00bd     ;text-align: center;background-size: 100% 100%" onclick="getParamCompte(0, ${type})" class="pageStyle"><i class="mdi mdi-arrow-collapse-left m-0"></i></a>
                                <a  style="background-color: #184a00bd   !important;" onclick="getParamCompte(${page_db}, ${type})" class="pageStyle">&laquo;</a>

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
                                        <a style="background-color: #184a00bd   !important; ${page+toAdd}" onclick="getParamCompte(${c}, ${type})"  ${c==number ? 'class=" pageStyle1 active "' : 'class=" pageStyle"'}>${c+1}</a>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${(page)>=(totalPage-1)}">
                                    <c:set value="${totalPage-1}" var="page_end"/>
                                </c:if>

                                <c:if test="${(page)<(totalPage-1)}">
                                    <c:set value="${page+1}" var="page_end"/>
                                </c:if>

                                <a style="background-color: #184a00bd   !important;" onclick="getParamCompte(${page_end}, ${type})" class="pageStyle">&raquo;</a>
                                <a style="background-color: #184a00bd     ;text-align: center;background-size: 100% 100%" onclick="getParamCompte(${totalPage-1}, ${type})" class="pageStyle"><i class="mdi mdi-arrow-collapse-right m-0"></i></a>

                            </div>
                        </c:when>
                    </c:choose>
                </div>
            </c:if>
            <c:if test="${type==1}">
                <table style="margin-bottom:12px;" class="table tablee table-hover">
                    <thead>
                    <tr>
                        <th class="text-center"></th>
                        <th class="text-center"><spring:message code="label.Nom"/></th>
                        <th class="text-center">Login</th>
                        <th class="text-center"><spring:message code="label.Telephone"/></th>
                        <th class="text-center"><spring:message code="label.Raisonsociale"/></th>
                        <th class="text-center"><spring:message code="label.Adresse"/></th>
                        <th class="text-center"><spring:message code="label.Date_de_creation"/></th>
                    </tr>
                    </thead>
                    <tbody class="tbodyy table-bordered">
                    <c:forEach items="${listF}" var="f">

                        <tr id="tr-${f.compteId}">

                            <td><label class="switch">
                                <input name="inputR" ${f.active ==true ? 'checked' : ''} class="form-check-input" type="checkbox" onclick="activepetitionnaire(${f.compteId})" id="id-${f.compteId}">
                                <span class="slider round"></span>
                            </label></td>
                            <td>${f.nom}</td>
                            <td>${f.emailRecup}</td>
                            <td>${f.st.tel}</td>
                            <td>${f.st.raison_fr}</td>
                            <td>${f.st.adresse_fr}</td>
                            
                            
                            <td><span>${fn:replace(f.createDateTime, "T", "<br>à ")}</span>
                            </td>
                            <%--<td class="text-center">
                                <ul class="list-inline m-0">
                                    <li class="list-inline-item text-center">
                                        <a href="/api/updateCompte5/${f.compteId}"
                                           class="btn"
                                           type="button" data-toggle="tooltip" data-placement="top" title="Editer">
                                            <div class="icon_trash_1">
                                                <span class="fas fa-pencil-alt"
                                                      style="color: orange;margin-top: 10px"></span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <button onclick="deleteCompte(${f.compteId})"
                                                class="btn"
                                                type="button" data-toggle="tooltip" data-placement="top"
                                                title="Supprimer">
                                            <div class="icon_trash_1">
                                                <span class="fas fa-trash" style="color: red"></span>
                                            </div>
                                        </button>
                                    </li>
                                </ul>
                            </td>--%>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <c:choose>
                    <c:when test="${not empty listF}">
                        <div class="pagination pagination-lg justify-content-center mt-3" dir="ltr">
                            <c:if test="${(page)>0}">
                                <c:set value="${page-1}" var="page_db"/>
                                <c:set value="${totalPage-1}" var="page_LAST"/>
                            </c:if>
                            <c:if test="${(page)<=0}">
                                <c:set value="0" var="page_db"/>
                                <c:set value="0" var="page_LAST"/>
                            </c:if>

                            <a style="background-color: #184a00bd     ;text-align: center;background-size: 100% 100%" onclick="getParamCompteP(0, ${type})" class="pageStyle"><i class="mdi mdi-arrow-collapse-left m-0"></i></a>
                            <a  style="background-color: #184a00bd   !important;" onclick="getParamCompteP(${page_db}, ${type})" class="pageStyle">&laquo;</a>

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
                                    <a style="background-color: #184a00bd   !important; ${page+toAdd}" onclick="getParamCompteP(${c}, ${type})"  ${c==number ? 'class=" pageStyle1 active "' : 'class=" pageStyle"'}>${c+1}</a>
                                </c:forEach>
                            </c:if>
                            <c:if test="${(page)>=(totalPage-1)}">
                                <c:set value="${totalPage-1}" var="page_end"/>
                            </c:if>

                            <c:if test="${(page)<(totalPage-1)}">
                                <c:set value="${page+1}" var="page_end"/>
                            </c:if>

                            <a style="background-color: #184a00bd   !important;" onclick="getParamCompteP(${page_end}, ${type})" class="pageStyle">&raquo;</a>
                            <a style="background-color: #184a00bd     ;text-align: center;background-size: 100% 100%" onclick="getParamCompteP(${totalPage-1}, ${type})" class="pageStyle"><i class="mdi mdi-arrow-collapse-right m-0"></i></a>

                        </div>
                    </c:when>
                </c:choose>
            </c:if>

        </div>
    </div>
</div>

<jsp:include page="../../includes/footer.jsp"/>
<script type="text/javascript">

    function activepetitionnaire(id) {
        $.ajax({
            url: "/api/activepetitionnaire",
            type: "POST",

            data: {
                "id": id
            },


            success: function (response) {

               // swal("<spring:message code="label.lademandeabieneteaffecte"/>")
                $("input[name=inputR]").removeAttr("disabled")
                //$("#input"+cpt).attr("disabled","true")
            },
            error: function (response) {

                //swal("<spring:message code="label.lecomptepossededejauneaffectation"/>");
                alert("error")
            }
        });
    }

    function getParamCompte(vals, type) {
        var id = $("#selectBox").val()
        $.ajax({
            type: "GET",
            url: '/api/getAccountByProfil/' + id + '/' + vals + '/40/' + type,
            data: {},
            success: function (data) {
                $(".container-fluid").html(data)
                document.getElementsByClassName('navbar')[1].style.display = 'none';
                $(".container-fluid").css('margin-top', '90px')
                if (($('.tbodyy').find('tr').length) === 0) {
                    $("#h1").removeClass("d-none");
                }
            },
            error: function (response) {
                alert("Erreur")
            }
        });
    }

    function getParamCompteP(vals, type) {
        $.ajax({
            type: "GET",
            url: '/api/getAccountByProfilP/' + vals + '/40/' + type,
            data: {},
            success: function (data) {
                $(".container-fluid").html(data)
                document.getElementsByClassName('navbar')[1].style.display = 'none';
                $(".container-fluid").css('margin-top', '90px')
                if (($('.tbodyy').find('tr').length) === 0) {
                    $("#h1").removeClass("d-none");
                }
            },
            error: function (response) {
                alert("Erreur")
            }
        });
    }

    function deleteCompte(id) {
        Swal.fire({
            title: '<spring:message code="label.etesvousure"/>',
            text: "<spring:message code="label.sivouscliquezsursupprimervousnepouvezpaslerecuperer"/>",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#42ba96',
            cancelButtonColor: '#d33',
            confirmButtonText: '<spring:message code="label.Supprimer"/>'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    type: "POST",
                    url: "/api/deleteCompte5/" + id,
                    data: {
                        "id": id
                    },
                    success: function (data) {
                        $("#tr-" + id).css("display", "none");
                    },
                    error: function (response) {
                        alert("Erreur")
                    }
                });
                Swal.fire(
                    '<spring:message code="label.Supprimer"/>!',
                    '<spring:message code="label.votrefichieraetesupprimeavecsucces"/>.',
                    'success'
                )
            }
        })

    }

    function editCompte(id) {
        $.ajax({
            type: "GET",
            url: "/api/updateCompte5/" + id,
            data: {},
            success: function (data) {
                window.location.href = ''
                $(".mpParam").html(data);
            },
            error: function (response) {
                alert("error")
            }
        });

    }

    function getFunctionProfil(id, page, type) {
        $("#h1").html("");
        $.ajax({
            type: "GET",
            url: '/api/getAccountByProfil/' + id + '/' + page + '/40/'+ type,
            success: function (data) {
                $(".container-fluid").html(data)
                document.getElementsByClassName('navbar')[1].style.display = 'none';
                $(".container-fluid").css('margin-top', '90px')
                if (($('.tbodyy').find('tr').length) === 0) {
                    $("#h1").removeClass("d-none");
                }
            },
            error: function (response) {
                alert("error")
            }
        });
    }
</script>
