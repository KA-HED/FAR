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
                                    <h4 class="ml4">
                                        <span>Calcul du salaire </span>
                                    </h4>
                                </div>
                                <div class="col-3">

                                    anneé  <input  value="2023" required type="text" id="annee" name="annee"  class="form-control" >
                                    <small style="color: #d32f2f; font-style: italic" id="spnom"></small>
                                </div>
                                <div class="col-3">
mois <br>
                                    <select id="mois" >
                                        <option value="01">Janvier</option>
                                        <option value="02">Février</option>
                                        <option value="03">Mars</option>
                                        <option value="04">Avril</option>
                                        <option value="05">Mai</option>
                                        <option value="06">Juin</option>
                                        <option value="07">Juillet</option>
                                        <option value="08">Août</option>
                                        <option value="09">Septembre</option>
                                        <option value="10">Octobre</option>
                                        <option value="11">Novembre</option>
                                        <option value="12">Décembre</option>
                                    </select>
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
                            <%--<th class="text-center">salaire brut global</th>--%>
                            <th class="text-center">date de Recrutement</th>
                            <%--<th class="text-center">salaire de base</th>--%>
                            <%--<th class="text-center"><spring:message code="label.Region"/></th>--%>
                            <th class="text-center"><spring:message code="label.Action"/></th>
                        </tr>
                        </thead>
                        <tbody class="tbodyy table-bordered">
                        <c:forEach items="${listF}" var="f">

                            <tr id="tr-${f.agentId}">
                                <td>${f.matricule}</td>
                                <td>${f.nom}</td>
                                <td>${f.prenom}</td>
                                <td>${f.dateRecrutement_s}</td>
                                <td class="text-center">
                                    <ul class="list-inline m-0">
                                        <li class="list-inline-item text-center">
                                            <a href="#" onclick="Calcul_du_salaire_agnet(${f.agentId})"
                                               class="btn btn-outline-warning btn-sm rounded-circle tab_edit text-center"
                                               type="button" data-toggle="tooltip" data-placement="top" title="Calcul_du_salaire"
                                               style="background-color: white">
                                                <div class="icon_trash_1">
                                                <span class="fas fa-Print"
                                                      style="color: #29dcff;margin-top: 10px"></span>
                                                </div>
                                            </a>
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

                                <a style="background-color: #184a00bd     ;text-align: center;background-size: 100% 100%" onclick="getParamAgent(0)" class="pageStyle"><i class="mdi mdi-arrow-collapse-left m-0"></i></a>
                                <a  style="background-color: #184a00bd   !important;" onclick="getParamAgent(${page_db})" class="pageStyle">&laquo;</a>

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
                                        <a style="background-color: #184a00bd   !important; ${page+toAdd}" onclick="getParamAgent(${c})"  ${c==number ? 'class=" pageStyle1 active "' : 'class=" pageStyle"'}>${c+1}</a>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${(page)>=(totalPage-1)}">
                                    <c:set value="${totalPage-1}" var="page_end"/>
                                </c:if>

                                <c:if test="${(page)<(totalPage-1)}">
                                    <c:set value="${page+1}" var="page_end"/>
                                </c:if>

                                <a style="background-color: #184a00bd   !important;" onclick="getParamAgent(${page_end})" class="pageStyle">&raquo;</a>
                                <a style="background-color: #184a00bd     ;text-align: center;background-size: 100% 100%" onclick="getParamAgent(${totalPage-1})" class="pageStyle"><i class="mdi mdi-arrow-collapse-right m-0"></i></a>

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

        window.location.href = '/api/getAgentCalculSalaire/' + vals + '/40';

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

    function Calcul_du_salaire_agnet(agentId) {
        var annee =  $("#annee").val();
        var mois =  $("#mois").val();
        var url = '/api/Calcul_du_salaire_agnet/'+agentId+'/'+annee+'/'+mois+"/"+$( "#mois option:selected" ).text()
        window.open(url, "_blank");
    }

    function editAgent(id) {
        $.ajax({
            type: "GET",
            url: "/api/updateAgent5/" + id,
            data: {},
            success: function (data) {

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
