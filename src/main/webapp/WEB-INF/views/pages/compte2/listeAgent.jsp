<jsp:include page="../../includes/tag.jsp"/>
<jsp:include page="../../includes/header.jsp"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="../../menu/menu_verticale.jsp"/>

<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
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
<fmt:parseNumber var="i" type="number" value="0"/>

<div class="container-fluid" >
    <div class="row justify-content-center card mx-2">
        <div class="card-body col-md-12" style="background-color: white">

                <div class="table-responsive">
                    <div class="row justify-content-start ">
                        <div class="col-lg-12 pr-0">

                        </div>
                        <div class="col-lg-12 pr-0">
                            <div class="row m-0 pt-5">
                                <div class="col-4 pl-0">
                                    <h4 class="ml6">
                                        <span>Gestion des agents</span>
                                    </h4>
                                </div>
                                <div class="col-8">
                                    <a class="button text-white bgMyColor float-right"
                                       href="/api/getFormToAddAgent"><span>Creation des agents </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table style="margin-bottom:12px;" class="table tablee table-hover">
                        <thead>
                        <tr>
                            <th class="text-center">Matricule</th>
                            <th class="text-center"><spring:message code="label.Nom"/></th>
                            <th class="text-center">Prenom</th>
                            <th class="text-center"><spring:message code="label.Email"/></th>
                            <th class="text-center"><spring:message code="label.Telephone"/></th>
                            <th class="text-center">date de Recrutement</th>
                            <%--<th class="text-center"><spring:message code="label.Region"/></th>--%>
                            <th class="text-center"><spring:message code="label.Action"/></th>
                        </tr>
                        </thead>
                        <tbody class="tbodyy table-bordered">
                        <c:forEach items="${listF}" var="f">

                            <tr id="tr-${f.agentId}">

                                <%--<td><label class="switch">--%>
                                    <%--<input name="inputR" ${f.active ==true ? 'checked' : ''} class="form-check-input" type="checkbox" onclick="activepetitionnaire(${f.agentId})" id="id-${f.agentId}">--%>
                                    <%--<span class="slider round"></span>--%>
                                <%--</label></td>--%>
                                <td>${f.matricule}</td>
                                <td>${f.nom}</td>
                                <td>${f.prenom}</td>
                                <td>${f.email}</td>
                                <td>${f.tel}</td>
                                <td>${f.dateRecrutement_s}</td>
                                <%--<td>${f.profil.nom}</td>--%>
                                <%--<td>${f.region.nom_fr}</td>--%>
                                <td class="text-center">
                                    <ul class="list-inline m-0">
                                        <li class="list-inline-item text-center">
                                            <a href="/api/updateAgent/${f.agentId}"
                                               class="btn btn-outline-warning btn-sm rounded-circle tab_edit text-center"
                                               type="button" data-toggle="tooltip" data-placement="top" title="Editer"
                                               style="background-color: white">
                                                <div class="icon_trash_1">
                                                <span class="fas fa-pencil-alt"
                                                      style="color: orange;margin-top: 10px"></span>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <button onclick="deleteAgent(${f.agentId})"
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

                                <a style="background-color: #2196f3     ;text-align: center;background-size: 100% 100%" onclick="getParamAgent(0)" class="pageStyle"><i class="mdi mdi-arrow-collapse-left m-0"></i></a>
                                <a  style="background-color: #2196f3   !important;" onclick="getParamAgent(${page_db})" class="pageStyle">&laquo;</a>

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
                                        <a style="background-color: #2196f3   !important; ${page+toAdd}" onclick="getParamAgent(${c})"  ${c==number ? 'class=" pageStyle1 active "' : 'class=" pageStyle"'}>${c+1}</a>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${(page)>=(totalPage-1)}">
                                    <c:set value="${totalPage-1}" var="page_end"/>
                                </c:if>

                                <c:if test="${(page)<(totalPage-1)}">
                                    <c:set value="${page+1}" var="page_end"/>
                                </c:if>

                                <a style="background-color: #2196f3   !important;" onclick="getParamAgent(${page_end})" class="pageStyle">&raquo;</a>
                                <a style="background-color: #2196f3     ;text-align: center;background-size: 100% 100%" onclick="getParamAgent(${totalPage-1})" class="pageStyle"><i class="mdi mdi-arrow-collapse-right m-0"></i></a>

                            </div>
                        </c:when>
                    </c:choose>
                </div>



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

               // swal("lademandeabieneteaffecte")
                $("input[name=inputR]").removeAttr("disabled")
                //$("#input"+cpt).attr("disabled","true")
            },
            error: function (response) {

                //swal("leagentpossededejauneaffectation");
                alert("error")
            }
        });
    }

    function getParamAgent(vals) {
        window.location.href = '/api/getAgent/' + vals + '/40';

    }

    function getParamAgentP(vals, type) {
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

    function deleteAgent(id) {
        Swal.fire({
            title: 'etesvousure',
            text: "si vous cliquez sur supprimer vous ne pouvez pas le recuperer",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#42ba96',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Supprimer'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    type: "POST",
                    url: "/api/deleteAgent/" + id,
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
                    'Supprimer !',
                    'votre fichieraete supprime avec succes',
                    'success'
                )
            }
        })

    }

    function editAgent(id) {
        $.ajax({
            type: "GET",
            url: "/api/updateAgent5/" + id,
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
