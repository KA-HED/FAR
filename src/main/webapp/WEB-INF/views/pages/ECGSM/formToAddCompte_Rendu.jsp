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
    .table td {
        padding-top: 0px !important;
        padding-bottom: 0px !important;
    }
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
<%--<th class="text-center">Réf-C.R </th>--%>
<%--<th class="text-center">Réf-OM</th>--%>
<%--<th class="text-center">Date C.R</th>--%>
<%--<th class="text-center">N°SISMAT</th>--%>

<div class="col-12 from_add"  style="margin: 60px 0px 20px 0px;">
    <div class="row p-0 m-0 justify-content-center">
        <div class="col-md-8 mt-5 col-sm-12 grid-margin">
            <div class="row pl-3 pr-3 mt-4" >
                <div class="container-fluid" >
                    <div class="row justify-content-center card mx-2">
                        <div class="card-body col-md-12" style="background-color: white">

                            <%--<div class="col-md-6 card p-4 col-sm-12 col-lg-6">--%>
                                <div class="" style="height: 70px; display: flex; justify-content: center;background-color: #184a00bd     ">
                                    <div class="col-md-12 my-4 text-center">
                                        <strong class="profil text-white">Compte Rendu <i class="ml-2 fa fa-list-alt"></i></strong><br>
                                    </div>
                                </div>
                                <div class="row mt-5">
                                    <form id="myForm">
                                        <div class="row" style="padding-right: 30px;padding-left: 30px;">
                                            <div class="col-md-2 col-sm-2 col-lg-2" >
                                                <label>Réf-C.R</label>
                                            </div>
                                            <div class="col-md-5 col-sm-5 col-lg-5" >
                                                <div class="form-group">
                                                    <input class="form-control" type="hidden" name="crId" id="crId" value="${Compte_Rendu.crId}">
                                                    <input class="form-control" type="text" name="refCr" id="refCr" value="${Compte_Rendu.refCr}" required>
                                                </div>
                                            </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2" >
                                                    <label>Date C.R: </label>
                                                </div>
                                            <div class="col-md-3 col-sm-3 col-lg-3" >
                                                <div class="form-group">
                                                    <input class="form-control" type="date" name="dateCr" id="dateCr" value="${Compte_Rendu.dateCr}" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row" style="padding-right: 30px;padding-left: 30px;">
                                            <div class="col-md-2 col-sm-2 col-lg-2" >
                                                <label>Réf-OM</label>
                                            </div>
                                            <div class="col-md-5 col-sm-5 col-lg-5" >
                                                <div class="form-group">

                                                    <select class="selectpicker form-control"  data-live-search="true"  id="refOm" name="refOm" onchange="selecteLigneOM_popup(this.value)" >
                                                        <option selected  value="0">Choose...</option>
                                                        <c:forEach items="${listeom}" var="ed">
                                                            <option value="${ed.omId }" >${ed.refOM } </option>
                                                        </c:forEach>
                                                    </select>
                                                    <%--<input class="form-control" type="text" name="refOm" id="refOm" value="${Compte_Rendu.refOm}" required>--%>
                                                </div>
                                            </div>

                                                <%--<div class="col-md-2 col-sm-2 col-lg-2" >--%>
                                                    <%--<label>N°SISMAT</label>--%>
                                                <%--</div>--%>
                                            <%--<div class="col-md-3 col-sm-3 col-lg-3" >--%>
                                                <%--<div class="form-group">--%>
                                                    <%--&lt;%&ndash;<input class="form-control" type="text" name="num_sismat" id="num_sismat" value="${Compte_Rendu.num_sismat}" required>&ndash;%&gt;--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        </div>
                                        <button type="button" id="Btn_add_lingom" class="btn btn-primary" data-toggle="modal" data-target="#AddParametre_T_Form">
                                            .
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="AddParametre_T_Form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 60px;">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel1">Sélectionnez la liste des articles à ajouter dans ce compte rendu.</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">

                                                        <form class="col-12 from_add" id="classeForm" name="classeForm" >
                                                            <div class="row justify-content-center">
                                                                <div class="progress">
                                                                    <div class="progress-bar" role="progressbar" style="width: 29%; background-color: seagreen" aria-valuenow="29" aria-valuemin="0" aria-valuemax="100">

                                                                    </div>
                                                                </div>

                                                                <div class="col-10 mt-4" >

                                                                    <div class="row p-0 m-0 mt-5">
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <div class="form-group">

                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">
                                                                        <%--<input class="form-control" id="myInput" type="text" placeholder="Search..">--%>
                                                                        <form id="Form_Add_lingom">

                                                                            <table class="table table-bordered table-checkable  tablee table-hover">
                                                                                <thead>
                                                                                <tr>
                                                                                    <%--<th class="text-center"></th>--%>
                                                                                    <th class="text-center">N° MINERALOGIQUE</th>
                                                                                    <th class="text-center">DESIGNATION</th>
                                                                                    <th class="text-center">UNITE DESTINATAIRE</th>
                                                                                    <th class="text-center">POSITION DESTINATAIRE</th>
                                                                                    <th class="text-center"><spring:message code="label.Action"/></th>
                                                                                </tr>
                                                                                </thead>
                                                                                <tbody id="LigneOm_popup">

                                                                                </tbody>
                                                                            </table>
                                                                        </form>

                                                                    </div>

                                                                </div>
                                                            </div>
                                                            <div class="row justify-content-center mb-4" style="margin:14px;">
                                                                <div class="col-md-5">
                                                                    <%--<button type="button" class="btn btn-success col-md-5 m-1" id="btnToParamètre" onclick="addAgent_classe()"><spring:message code="label.Enregistrer"/></button>--%>
                                                                    <button type="button"  class="btn btn-danger-2  col-md-5 m-1" id="close_form_cl" data-dismiss="modal">
                                                                        <spring:message code="label.Retour"/>
                                                                    </button>
                                                                    <%--<a type="button" class="btn btn-danger-2  col-md-5 m-1" href="#"  data-dismiss="modal" aria-label="Close"><span style="color: white"> <spring:message code="label.Annuler"/></span></a>--%>
                                                                </div>
                                                            </div>
                                                        </form>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="row" style="padding-right: 30px;padding-left: 30px;">
                                            <div class="col-md-6 col-sm-6 col-lg-6" >
                                                <label>Unite Gestion</label>

                                                <div class="form-group">

                                                    <select class="selectpicker form-control"  data-live-search="true"  id="uniteGestion" name="uniteGestion" >
                                                        <option selected  value="0">Choose...</option>
                                                        <c:forEach items="${unt}" var="ed">
                                                            <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                        </c:forEach>
                                                    </select>
                                                    <%--<input class="form-control" type="text" name="uniteGestion" id="uniteGestion" value="${Compte_Rendu.uniteGestion.untId}" required>--%>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-lg-3" >
                                                <label>N° facture m14</label>

                                                <div class="form-group">
                                                    <input class="form-control" type="text" name="num_facture_M14" id="num_facture_M14" value="${Compte_Rendu.num_facture_M14}" required>
                                                </div>
                                            </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3" >
                                                    <label>N° Bon Mat1</label>

                                                <div class="form-group">
                                                    <input class="form-control" type="text" name="num_bonMat1" id="num_bonMat1" value="${Compte_Rendu.num_bonMat1}" required>
                                                </div>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                                <div class="row justify-content-center sw">
                                    <div class="col-5 toolbar">
                                        <button class="btn sw-btn-next btn-danger-2 " onclick="goToList()"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i><spring:message code="label.Retour"/></button>
                                        <button class="btn btn-success float-right" onclick="save()"><i class="ml-2 fa fa-save"></i><spring:message code="label.Enregistrer"/></button>

                                    </div>
                                </div>
                                <div class="card" style="padding: 10px;    max-width: 1000px;">
                                    <label class="label_card">Articles </label>
                                    <div id="ta" class="container__inner content__description" style="padding-bottom: 10px;   min-height: 201px;">
                                        <%--<input class="form-control" id="myInput" type="text" placeholder="Search..">--%>
                                        <form id="Form_type">

                                        <table class="table table-bordered table-checkable  tablee table-hover">
                                            <thead>
                                            <tr>
                                                <%--<th class="text-center"></th>--%>
                                                <th class="text-center">N° MINERALOGIQUE</th>
                                                <th class="text-center">DESIGNATION</th>
                                                <th class="text-center">UNITE DESTINATAIRE</th>
                                                <th class="text-center">POSITION DESTINATAIRE</th>
                                                <th class="text-center"><spring:message code="label.Action"/></th>
                                            </tr>
                                            </thead>
                                            <tbody id="LigneOmINI">
                                            <c:forEach items="${TypeAEBCompte_Rendu}" var="f">
                                                <tr id="tr_type${f.typeId}" onclick="showVersions2(${f.typeId})" >
                                                    <td>${f.desigType}</td>
                                                    <td>${f.abrType}</td>
                                                    <td class="text-center">
                                                        <ul class="list-inline m-0">
                                                            <li class="list-inline-item">
                                                                <button onclick="deleteTypeAEB(${f.typeId})"
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
                                            <tbody id="LigneOm">

                                            </tbody>
                                        </table>
                                        </form>
                                    </div>
                                </div>

                                <div class="col-md-1 col-sm-12 col-lg-1" ></div>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../../includes/footer.jsp"/>

<script>

    function goToList() {
        window.location.href="/ECGSM/listeCompte_Rendu"
    }

    function save(){
        var id=$("#compte_RenduId").val();
        var se = $("#myForm").serializeObject();

            $.ajax({
                url: '/ECGSM/addCompte_Rendu/', // url where to submit the request
                type : "POST", // type of action POST || GET
                contentType : 'application/json; charset=utf-8',
                data : JSON.stringify(se),

                success : function(result) {

                    window.location = "/ECGSM/listeCompte_Rendu";



                },
                error: function(xhr, resp, text) {
                    console.log(xhr, resp, text);
                }
            })

    }


    function showVersions2(id) {
        // var trid= '#tr_'+id;

        $.ajax({
            type : "POST",
            // url :"/api/param/selecteLigne_OM",
            url: "/ECGSM/selecteLigneOM",
            data:{
                "id":id
            },
            success: function (response) {
                $("#typeId").val(id);
                $("#LigneOm").empty();
                $("#LigneOm").html(response);
            },
            error : function(response) {
                alert("error")
            }
        });
    }

 function selecteLigneOM(id) {
        var ob = {"id":id};
        $.ajax({
            type : "POST",
            url: "/ECGSM/selecteLigne_OM",
            data:ob,
            success: function (response) {
                $("#Btn_add_lingom").click();
                var ancienContenu = $("#LigneOm").html(); // Sauvegarde de l'ancien contenu
                $("#LigneOm").empty(); // Vide #LigneOm
                $("#LigneOm").html(ancienContenu + response);
            },
            error: function (response) {
                alert('Erreur');
            }
        });
    }

 function selecteLigneOM_popup(id) {
        var ob = {"id":id};
        $.ajax({
            type : "POST",
            url: "/ECGSM/selecteLigne_OM",
            data:ob,
            success: function (response) {
                $("#Btn_add_lingom").click();
                $("#LigneOm_popup").empty(); // Vide #LigneOm
                $("#LigneOm_popup").html(response);
            },
            error: function (response) {
                alert('Erreur');
            }
        });
    }

</script>
