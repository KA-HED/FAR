
<jsp:include page="../../includes/tag.jsp" />
<jsp:include page="../../includes/header.jsp" />
<jsp:include page="../../menu/menu_verticale.jsp" />
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>

<style>
    .active a{
        background-color: #0a88f7;
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
    /***************************************************************/
    .container input {
        position: absolute;
        opacity: 0;
        cursor: pointer;
        height: 0;
        width: 0;
    }
    .checkmark {
        position: absolute;
        top: 0;
        left: 15px;
        height: 25px;
        width: 25px;
        background-color: #eee;
    }
    .container:hover input ~ .checkmark {
        background-color: #ccc;
    }

    /* When the checkbox is checked, add a blue background */
    .container input:checked ~ .checkmark {
        background-color:  #184a00bd  ;
    }

    /* Create the checkmark/indicator (hidden when not checked) */
    .checkmark:after {
        content: "";
        position: absolute;
        display: none;
    }

    /* Show the checkmark when checked */
    .container input:checked ~ .checkmark:after {
        display: block;
    }

    /* Style the checkmark/indicator */
    .container .checkmark:after {
        left: 9px;
        top: 5px;
        width: 5px;
        height: 10px;
        border: solid white;
        border-width: 0 3px 3px 0;
        -webkit-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        transform: rotate(45deg);
    }
    #message {
        display:none;
        color: #000;
        position: relative;
        padding: 10px;
    }

    #message p {
        font-family:"Open Sans", sans-serif;
        font-size: 14px;
        margin-left: 25px;
    }

    /* Add a green text color and a checkmark when the requirements are right */
    .valide {
        color: #50D2C2;
    }

    .valide:before {
        position: relative;
        left: -12px;
        font-family: "Font Awesome 5 Free";
        content: "\f058";
        margin-left:0;
    }

    /* Add a red text color and an "x" icon when the requirements are wrong */
    .invalide {
        color: #ee0000;
    }

    .invalide:before {
        position: relative;
        left: -12px;
        font-family: "Font Awesome 5 Free";
        content: "\f057";
        margin-left:0;
    }
    .form-container{
    background: #fff;
    padding: 30px;
    border-raduis: 10px;
    box-shadow:0px 0px 5px 0px #000;

    }
    .error{
        font-size: small !important;
        color: red !important;
    }
</style>
<c:if test="${pageContext.response.locale=='ar' }">
    <style>
        label {
            float: right;
            direction: rtl;
        }
        input{
            direction: rtl;
        }
        select{
            direction: rtl;
        }
        .invalid-feedback{
            text-align: right;
        }
    </style>
</c:if>
<c:if test="${pageContext.response.locale!='ar' }">
    <style>
        label {
            float: left;
        }
        input{
            direction: ltr;
        }
        select{
            direction: ltr;
        }
        .invalid-feedback{
            text-align: left;
        }
    </style>
</c:if>
<c:choose>
    <c:when test="${pageContext.response.locale=='ar'}">
        <c:set var="lng" value="nom_ar"/>
    </c:when>
    <c:otherwise>
        <c:set var="lng" value="nom_fr"/>
    </c:otherwise>
</c:choose>

<div class="col-12 from_add">



            <div class="row p-0 m-0 justify-content-center">
                <div class="col-md-8 mt-5 col-sm-12 grid-margin">



                    <div class="card" >

                        <ul class="nav nav-tabs nav-justified nav-inline navbar-primary-menu">
                            <li class="active"><a href="#div1" data-toggle="tab">information personnelle</a></li>
                            <li><a href="#div2" data-toggle="tab">Position</a></li>
                            <li><a href="#div3" data-toggle="tab" class=" ${Agent.contractuelle=="oui"?"hidden":"" } ">Classe</a></li>
                            <li><a href="#div4" data-toggle="tab" class=" ${Agent.contractuelle=="oui"?"hidden":"" } ">Niveaux</a></li>
                            <li><a href="#div5" data-toggle="tab">Indemnité individuelle</a></li>
                        </ul>

                        <div class="tab-content" >
                            <div class="tab-pane active" id="div1">

                                <form class="col-12 from_add" id="agentForm" name="agentForm" >
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
                                                        <input  type="hidden" id="agentId" name="agentId" value="${Agent.agentId}" class="form-control" >
                                                        <%--<input type="hidden" id="chequer" value="${Agent.chequer}" name="chequer" class="form-control">--%>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4 col-sm-12">
                                                    <div class="form-group">
                                                        <label>Matricule</label>
                                                        <input  required type="number" id="matricule" name="matricule"  value="${Agent.matricule}" class="form-control" >
                                                        <small style="color: #d32f2f; font-style: italic" id="spmatricule"></small>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-sm-12">
                                                    <div class="form-group">
                                                        <label><spring:message code="label.Nom"/></label>
                                                        <input  required type="text" id="nom" name="nom"  value="${Agent.nom}" class="form-control" >
                                                        <small style="color: #d32f2f; font-style: italic" id="spnom"></small>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-sm-12">
                                                    <div class="form-group">
                                                        <label>Prenom</label>
                                                        <input autocomplete="false" required type="text" id="prenom" name="prenom"  value="${Agent.prenom}" class="form-control">
                                                        <small style="color: #d32f2f; font-style: italic" id="spprenom"></small>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3 col-sm-12">
                                                    <div class="form-group">
                                                        <label>cin</label>
                                                        <input  required type="text" id="cin" name="cin"  value="${Agent.cin}" class="form-control" >
                                                        <small style="color: #d32f2f; font-style: italic" id="spcin"></small>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-12">
                                                    <div class="form-group">
                                                        <label>sexe</label>
                                                        <select  required id="sexe"  name="sexe" class="custom-select" style="height: 40px">
                                                            <option value="Homme" ${Agent.sexe=='Homme'?'selected':''}>Homme</option>
                                                            <option value="Femme" ${Agent.sexe=='Femme'?'selected':''}>Femme</option>
                                                        </select>
                                                        <%--<input  required type="text" id="nom" name="nom"  value="${Agent.nom}" class="form-control" >--%>
                                                        <small style="color: #d32f2f; font-style: italic" id="spnom"></small>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-12">
                                                    <div class="form-group">
                                                        <label>SituationFamiliale</label>
                                                        <select  required id="SituationFamiliale"  name="situationFamiliale" class="custom-select" style="height: 40px">
                                                            <option value="Célibataire" ${Agent.situationFamiliale=='Célibataire'?'selected':''}>Célibataire</option>
                                                            <option value="Marié(e)" ${Agent.situationFamiliale=='Marié(e)'?'selected':''}>Marié(e)</option>
                                                            <option value="Divorcé(e)" ${Agent.situationFamiliale=='Divorcé(e)'?'selected':''}>Divorcé(e)</option>
                                                            <option value="Veuf (ve)" ${Agent.situationFamiliale=='Veuf (ve)'?'selected':''}>Veuf (ve)</option>

                                                        </select>

                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-12  " id="nbr_enfantsdiv">
                                                    <div class="form-group text-left">
                                                        <label for="posteId">nbr enfants</label>
                                                        <input  required type="number" id="nbr_enfants" name="nbr_enfants"  value="${Agent.nbr_enfants}" class="form-control" >
                                                        <small style="color: #d32f2f; font-style: italic" id="spnbr_enfants"></small>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3 col-sm-12">
                                                    <div class="form-group">
                                                        <label>date de Naissances</label>
                                                        <div class="input-group">
                                                        <input  required type="date" id="dateNaissance_s" name="dateNaissance_s"  value="${Agent.dateNaissance_s}"  class="form-control datepicker"  >
                                                        </div>
                                                            <small style="color: #d32f2f; font-style: italic" id="spdateNaissance"></small>

                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-12">
                                                    <div class="form-group">
                                                        <label>date de Recrutement</label>
                                                        <div class="input-group">
                                                            <input  required type="date" id="dateRecrutement_s" name="dateRecrutement_s"  value="${Agent.dateRecrutement_s}"  class="form-control datepicker"  >
                                                        </div>
                                                        <small style="color: #d32f2f; font-style: italic" id="spdateRecrutement_s"></small>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-12">
                                                    <div class="form-group">
                                                        <label>CMR</label>
                                                        <div class="input-group">
                                                            <label class="switch">
                                                                    <input  ${Agent.cmr ==1 ? 'checked' : ''} class="form-check-input" type="checkbox" onclick="cmrchrk()" id="cmr__chek" >
                                                                    <span class="slider round"></span>
                                                                    <input type="hidden" name="cmr" id="cmr_H">
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-12">
                                                    <div class="form-group">
                                                        <label>Montant CMR</label>
                                                        <div class="input-group">
                                                            <input  required type="number" id="montant_cmr" name="montant_cmr"  value="${Agent.montant_cmr}"  class="form-control datepicker"  >
                                                        </div>
                                                        <small style="color: #d32f2f; font-style: italic" id="spmontant_cmr"></small>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-10 col-sm-12">
                                                    <div class="form-group">
                                                        <label> Adresse </label>
                                                        <input  required type="text" id="adresse" name="adresse"  value="${Agent.adresse}" class="form-control" >
                                                        <small style="color: #d32f2f; font-style: italic" id="spadresse"></small>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-md-5 col-sm-12">
                                                    <div class="form-group">
                                                        <label><spring:message code="label.Telephone"/></label>
                                                        <input  required type="text"  id="tel" name="tel" value="${Agent.tel}" class="form-control">
                                                        <small style="color: #d32f2f; font-style: italic" id="sptel"></small>
                                                    </div>
                                                </div>
                                                <div class="col-md-5 col-sm-12">
                                                        <div class="form-group">
                                                            <label>Email</label>
                                                            <input autocomplete="false" required type="email" id="email" name="email"  value="${Agent.email}" class="form-control">
                                                            <small style="color: #d32f2f; font-style: italic" id="spemail"></small>
                                                            <div class="invalid-feedback emailInvalid" >
                                                                <spring:message code="label.existe"/>
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3 col-sm-12">
                                                    <div class="form-group text-left">
                                                        <label for="posteId">Contractuelle</label><br>
                                                        <select class="custom-select  bg-light" id="contractuelle" name="contractuelle" style="height: 40px"  onchange="schotypecontra()">
                                                            <option ${Agent.contractuelle=="non"?"selected":"" } value="non">Non</option>
                                                            <option ${Agent.contractuelle=="oui"?"selected":"" } value="oui">Oui</option>
                                                        </select>

                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-12 ${Agent.contractuelle=="oui"?"":"hidden" }  " id="type_Contra">
                                                    <div class="form-group text-left">
                                                        <label for="posteId">Type de Contrat</label>
                                                        <select class="custom-select  bg-light" id="type_Contras" name="type_Contra" style="height: 40px" onclick="show_salire_de_base()">
                                                            <option ${Agent.type_Contra=="Contrat responsable"?"selected":"" } value="Contrat responsable">Contrat responsable</option>
                                                                <option ${Agent.type_Contra=="Contrat"?"selected":"" } value="Contrat">Contrat</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-2 col-sm-12 ${Agent.type_Contra=="Contrat"?"":"hidden"}  " id="salaire_de_basediv">
                                                    <div class="form-group text-left">
                                                        <label for="posteId">salaire de base</label>
                                                        <input  required type="number" id="salaire_de_base" name="salaire_de_base"  value="${Agent.salaire_de_base}" class="form-control" >
                                                        <small style="color: #d32f2f; font-style: italic" id="spindice_D3"></small>

                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-sm-12">
                                                    <div class="form-group text-left">
                                                        <label for="posteId">Poste</label>
                                                        <select class="custom-select  bg-light" id="posteId" style="height: 40px">
                                                            <c:forEach items="${postes}" var="p">
                                                                <option ${Agent.poste.id_Poste==p.id_Poste?"selected":"" } value="${p.id_Poste}">${p.nom_fr}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="form-group text-left">
                                                        <label><spring:message code="label.Type" /></label>
                                                        <select  required id="typeregion"  name="typeregion" class="custom-select" onchange="changeType(this.value)" style="height: 40px">
                                                            <option selected value="1" ${Agent.typeregion=='1'?'selected':''}><spring:message code="label.Regionale" /></option>
                                                            <option value="2" ${Agent.typeregion=='2'?'selected':''}><spring:message code="label.Centrale" /></option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="row region1 ${Agent.typeregion.equals('2')?'hidden':''}">
                                                        <div class="col-12" dir="ltr">
                                                            <div class="form-group text-left" id="region_form_group">
                                                                <label><spring:message code="label.Region"/></label>

                                                                <select id="id" name="region11"  class="custom-select" style="height: 40px">
                                                                    <option  selected value="0"><spring:message code="label.Choisir" /></option>
                                                                    <c:forEach items="${regionss }" var="r">
                                                                        <option ${Agent.region.id==r.id?"selected":"" } value="${r.id}">${r.nom_fr}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row justify-content-center mb-4" style="margin:14px;">
                                        <div class="col-md-5">
                                            <button type="button" class="btn btn-success col-md-5 m-1" id="btnTo" onclick="addAgent()"><spring:message code="label.Enregistrer"/></button>
                                            <a type="button" class="btn btn-danger-2  col-md-5 m-1" href="/api/getAgent/0/40"><span style="color: white"> <spring:message code="label.Annuler"/></span></a>
                                        </div>
                                    </div>
                                </form>

                            </div>
                            <div class="tab-pane" id="div2">
                                <div id="Div_position">
                                    <table style="margin-bottom:12px;" class="table tablee table-hover">
                                    <thead>
                                    <tr>
                                        <th class="text-center">Position</th>
                                        <th class="text-center">date début</th>
                                        <th class="text-center">date Fin</th>
                                        <%--<th class="text-center"><spring:message code="label.Action"/></th>--%>
                                    </tr>
                                    </thead>
                                    <tbody class="tbodyy table-bordered">
                                    <c:forEach items="${agentPosition}" var="f">

                                        <tr id="tr-${f.agentPositionId}" style="background-color: ${f.etat=="0"?"#c9d4dd7a":"#ecffde" };">

                                            <td>${f.position.nom}</td>
                                            <td>${f.datedebut_s} </td>
                                            <td>${f.datefin_s} </td>
                                            <%--<td class="text-center">
                                                <ul class="list-inline m-0">
                                                    <li class="list-inline-item text-center">
                                                        <a href="#" onclick="updateAgentIndemnite(${f.agentPositionId})"
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
                                                        <button onclick="deleteAgentIndemnite(${f.agentPositionId})"
                                                                class="btn btn-outline-danger btn-sm rounded-circle tab_trash"
                                                                type="button" data-toggle="tooltip" data-placement="top"
                                                                title="Supprimer" style="background-color: white">
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
                                </div>

                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#AddPositionForm">
                                    Ajoute Position.
                                </button>

                                <!-- Modal -->
                                <div class="modal fade" id="AddPositionForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 60px;">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel2">Ajoute Position.</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <form class="col-12 from_add" id="positionForm" name="positionForm" >
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
                                                                        <input  type="hidden" id="agentId"  value="${Agent.getAgentId()}" class="form-control" >
                                                                        <%--<input type="hidden" id="chequer" value="${Agent.chequer}" name="chequer" class="form-control">--%>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-12 col-sm-12">
                                                                    <div class="form-group text-left">
                                                                        <label for="posteId">Position</label>
                                                                        <select class="custom-select  bg-light" id="positionId"  style="height: 40px">
                                                                            <c:forEach items="${Position}" var="p">
                                                                                <option  value="${p.positionId}">${p.nom}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label>date debut</label>
                                                                        <div class="input-group">
                                                                            <input  required type="date" id="datedebut_s_po" name="datedebut_s"  value=""  class="form-control datepicker"  >
                                                                        </div>
                                                                        <small style="color: #d32f2f; font-style: italic" id="spddatedebut_s_po"></small>

                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label>date fin</label>
                                                                        <div class="input-group">
                                                                            <input  required type="date" id="datefin_s_po" name="datefin_s"  value="2999-01-01"  class="form-control datepicker"  >
                                                                        </div>
                                                                        <small style="color: #d32f2f; font-style: italic" id="spdatefin_s_po"></small>

                                                                    </div>
                                                                </div>


                                                            </div>


                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-center mb-4" style="margin:14px;">
                                                        <div class="col-md-5">
                                                            <button type="button" class="btn btn-success col-md-5 m-1" id="btnToPosition" onclick="addAgent_Position()"><spring:message code="label.Enregistrer"/></button>
                                                            <button type="button" class="btn btn-danger-2  col-md-5 m-1" id="close_form_Po" data-dismiss="modal">
                                                                <spring:message code="label.Annuler"/>
                                                            </button>
                                                            <%--<a type="button" class="btn btn-danger-2  col-md-5 m-1" href="#"  data-dismiss="modal" aria-label="Close"><span style="color: white"> <spring:message code="label.Annuler"/></span></a>--%>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="tab-pane" id="div3">
                                <div id="Div_classe">
                                <table style="margin-bottom:12px;" class="table tablee table-hover">

                                    <tr>
                                        <th class="text-center"> Classe </th>
                                        <th class="text-center"> date début </th>
                                        <th class="text-center"> date fin </th>


                                    </tr>

                                    <tbody class="tbodyy table-bordered">
                                    <c:forEach items="${agentClasse}" var="f">

                                        <tr id="tr-${f.agentClasseId}" style="background-color: ${f.etat=="0"?"#c9d4dd7a":"#ecffde" };">
                                            <td>${f.classe.nom}</td>
                                            <td>${f.datedebut}</td>
                                            <td>${f.datefin}</td>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                </div>

                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#AddClasseForm">
                                    Ajoute Classe.
                                </button>

                                <!-- Modal -->
                                <div class="modal fade" id="AddClasseForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 60px;">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel1">Ajoute Classe.</h5>
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
                                                                        <input  type="hidden" id="agentId"  value="${Agent.getAgentId()}" class="form-control" >
                                                                        <%--<input type="hidden" id="chequer" value="${Agent.chequer}" name="chequer" class="form-control">--%>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-12 col-sm-12">
                                                                    <div class="form-group text-left">
                                                                        <label for="posteId">Classe</label>
                                                                        <select class="custom-select  bg-light" id="ClasseId"  style="height: 40px">
                                                                            <c:forEach items="${Classe}" var="p">
                                                                                <option  value="${p.classeId}">${p.nom}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label>date debut</label>
                                                                        <div class="input-group">
                                                                            <input  required type="date" id="datedebut_s_cl" name="datedebut_s"  value=""  class="form-control datepicker"  >
                                                                        </div>
                                                                        <small style="color: #d32f2f; font-style: italic" id="spddatedebut_s_cl"></small>

                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label>date fin</label>
                                                                        <div class="input-group">
                                                                            <input  required type="date" id="datefin_s_cl" name="datefin_s"  value="2999-01-01"  class="form-control datepicker"  >
                                                                        </div>
                                                                        <small style="color: #d32f2f; font-style: italic" id="spdatefin_s_cl"></small>

                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-center mb-4" style="margin:14px;">
                                                        <div class="col-md-5">
                                                            <button type="button" class="btn btn-success col-md-5 m-1" id="btnToClasse" onclick="addAgent_classe()"><spring:message code="label.Enregistrer"/></button>
                                                            <button type="button"  class="btn btn-danger-2  col-md-5 m-1" id="close_form_cl" data-dismiss="modal">
                                                                <spring:message code="label.Annuler"/>
                                                            </button>
                                                            <%--<a type="button" class="btn btn-danger-2  col-md-5 m-1" href="#"  data-dismiss="modal" aria-label="Close"><span style="color: white"> <spring:message code="label.Annuler"/></span></a>--%>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="tab-pane" id="div4">
                                <div id="Div_niveaux">
                                    <table style="margin-bottom:12px;" class="table tablee table-hover">
                                        <thead>
                                        <tr>
                                            <th class="text-center">niveaux</th>
                                            <th class="text-center">date début</th>
                                            <th class="text-center">date fin</th>
                                            <%--<th class="text-center"><spring:message code="label.Action"/></th>--%>
                                        </tr>
                                        </thead>
                                        <tbody class="tbodyy table-bordered">
                                        <c:forEach items="${agentNiveaux}" var="f">

                                            <tr id="tr-${f.agentNiveauxId}" style="background-color: ${f.etat=="0"?"#c9d4dd7a":"#ecffde" };">

                                                <td>${f.niveaux.niveaux_val}</td>
                                                <td>${f.datedebut}</td>
                                                <td>${f.datefin}</td>

                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#AddniveauxForm">
                                    Ajoute Niveaux.
                                </button>

                                <!-- Modal -->
                                <div class="modal fade" id="AddniveauxForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 60px;">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" >Ajoute Niveaux.</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form class="col-12 from_add" id="niveauxForm" name="niveauxForm" >
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
                                                                        <input  type="hidden" id="agentId"  value="${Agent.getAgentId()}" class="form-control" >
                                                                        <%--<input type="hidden" id="chequer" value="${Agent.chequer}" name="chequer" class="form-control">--%>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-12 col-sm-12">
                                                                    <div class="form-group text-left">
                                                                        <label for="posteId">Niveaux</label>
                                                                        <select class="custom-select  bg-light" id="niveauxId"  style="height: 40px">
                                                                            <c:forEach items="${niveaux}" var="p">
                                                                                <option  value="${p.niveauxId}"> ${p.niveaux_val}  </option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label>date debut</label>
                                                                        <div class="input-group">
                                                                            <input  required type="date" id="datedebut_s_Ni" name="datedebut_s"  value=""  class="form-control datepicker"  >
                                                                        </div>
                                                                        <small style="color: #d32f2f; font-style: italic" id="spddatedebut_s_Ni"></small>

                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label>date fin</label>
                                                                        <div class="input-group">
                                                                            <input  required type="date" id="datefin_s_Ni" name="datefin_s"  value="2999-01-01"  class="form-control datepicker"  >
                                                                        </div>
                                                                        <small style="color: #d32f2f; font-style: italic" id="spdatefin_s_Ni"></small>

                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-center mb-4" style="margin:14px;">
                                                        <div class="col-md-5">
                                                            <button type="button" class="btn btn-success col-md-5 m-1" id="btnToniveaux" onclick="addAgent_niveaux()"><spring:message code="label.Enregistrer"/></button>
                                                            <button type="button"  class="btn btn-danger-2  col-md-5 m-1" id="close_form_Ni" data-dismiss="modal">
                                                                <spring:message code="label.Annuler"/>
                                                            </button>
                                                            <%--<a type="button" class="btn btn-danger-2  col-md-5 m-1" href="#"  data-dismiss="modal" aria-label="Close"><span style="color: white"> <spring:message code="label.Annuler"/></span></a>--%>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="tab-pane" id="div5">
                                <div id="Div_indemnite">
                                <table style="margin-bottom:12px;" class="table tablee table-hover">
                                    <thead>
                                    <tr>
                                        <th class="text-center">Indemnité</th>
                                        <th class="text-center">date début</th>
                                        <th class="text-center">date fin</th>
                                        <th class="text-center">Montant</th>
                                        <%--<th class="text-center">etat</th>--%>
                                        <th class="text-center">Exclu du S.B.I</th>
                                        <th class="text-center"><spring:message code="label.Action"/></th>
                                    </tr>
                                    </thead>
                                    <tbody class="tbodyy table-bordered">
                                    <c:forEach items="${agentIndemnite}" var="f">

                                        <tr id="trIndemnite-${f.agentIndemniteId}">

                                            <td>${f.indemnite.nom}</td>
                                            <td>${f.datedebut_s}</td>
                                            <td>${f.datefin_s}</td>
                                            <td>${f.montant}</td>
                                            <%--<td>${f.etat}</td>--%>
                                            <td><label class="switch">
                                                <input name="inputR" ${f.exclu_salaire_brut_imposable ==1 ? 'checked' : ''} class="form-check-input" type="checkbox" onclick="exclu_salaire_brut_imposable(${f.agentIndemniteId})" id="id-${f.agentIndemniteId}">
                                                <span class="slider round"></span>
                                            </label>
                                            </td>
                                            <td class="text-center">
                                                <ul class="list-inline m-0">
                                                    <li class="list-inline-item text-center">
                                                        <a href="#" onclick="updateAgentIndemnite(${f.agentIndemniteId},'${f.datedebut_s}','${f.datefin_s}',${f.indemnite.indemniteId},${f.montant})"
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
                                                        <button onclick="deleteAgentIndemnite(${f.agentIndemniteId})"
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
                                </div>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#AddindemniteForm" id="btnAjouter_indemnite">
                                    Ajoute l'indemnité.
                                </button>

                                <!-- Modal -->
                                <div class="modal fade" id="AddindemniteForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 60px;">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Ajoute l'indemnité.</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <form class="col-12 from_add" id="indemniteForm" name="indemniteForm" >
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
                                                                        <input  type="hidden" id="agentId"  value="${Agent.getAgentId()}" class="form-control" >
                                                                        <%--<input  type="hidden" id="etat_in" name="etat"  value="1" class="form-control" >--%>
                                                                        <input  type="hidden" id="agentIndemniteId" name="agentIndemniteId"  value="0" class="form-control" >
                                                                        <%--<input type="hidden" id="chequer" value="${Agent.chequer}" name="chequer" class="form-control">--%>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-12 col-sm-12">
                                                                    <div class="form-group text-left">
                                                                        <label for="posteId">Indemnité</label>
                                                                        <select class="custom-select  bg-light" id="indemniteId"  style="height: 40px">
                                                                            <c:forEach items="${Indemnite}" var="p">
                                                                                <option  value="${p.indemniteId}">${p.nom}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label>date debut</label>
                                                                        <div class="input-group">
                                                                            <input  required type="date" id="datedebut_s_in" name="datedebut_s"  value=""  class="form-control "  >
                                                                        </div>
                                                                        <small style="color: #d32f2f; font-style: italic" id="spddatedebut_s"></small>

                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label>date fin</label>
                                                                        <div class="input-group">
                                                                            <input  required type="date" id="datefin_s_in" name="datefin_s"  value="2999-01-01"  class="form-control date"  >
                                                                        </div>
                                                                        <small style="color: #d32f2f; font-style: italic" id="spdatefin_s"></small>

                                                                    </div>
                                                                </div>


                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label>Montant</label>
                                                                        <div class="input-group">
                                                                            <input  required type="number" id="montant" name="montant"  value=""  class="form-control datepicker"  >
                                                                        </div>
                                                                        <small style="color: #d32f2f; font-style: italic" id="spmontant"></small>

                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-center mb-4" style="margin:14px;">
                                                        <div class="col-md-5">
                                                            <button type="button" class="btn btn-success col-md-5 m-1" id="btnToIndemnite" onclick="addAgent_indemnite()"><spring:message code="label.Enregistrer"/></button>
                                                            <button type="button"  class="btn btn-danger-2  col-md-5 m-1" data-dismiss="modal" id="close_form_in">
                                                                <spring:message code="label.Annuler"/>
                                                            </button>
                                                            <%--<a type="button" class="btn btn-danger-2  col-md-5 m-1" href="#"  data-dismiss="modal" aria-label="Close"><span style="color: white"> <spring:message code="label.Annuler"/></span></a>--%>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                </div>
            </div>
        </div>
<%--</form>--%>

    <%--*****************************************************************************************************--%>
    <%--*****************************************************************************************************--%>


<%--*****************************************************************************************************--%>
    <%--*****************************************************************************************************--%>


 <script type="text/javascript">
     $('.input-group.date').datepicker({format: "dd/mm/yyyy"});

     function validateEmail($email) {
         var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
         return emailReg.test( $email );
     }

     function changeType(id){

         if(id=="1"){
             $(".region1").removeClass('hidden');
         }
         else{
             $(".region1").addClass('hidden');
         }
     }

     function validateTel($tel) {
         var tel = /^([0-9]{10})?$/;
         return tel.test( $tel );
     }

     $(document).ready(function (){
         <c:if test="${modifier.equals('modifier')}">
         $('.confirmm').hide();
         </c:if>
     });

     function validationmotpasse() {
         var password = $("input[name=password]").val();
         var password11 = $("input[name=passwordConfirm]").val();
         if($.trim(password11) =="" || $.trim(password11) !=$.trim(password))
         {
             $("#passcom").text("Vosmotsdepassedoiventcorrespondre");
             return false;
         }
         else
         {
             $("#passcom").text("");
             return true;
         }
     }



     function addAgent (){

      var agentid=$("#agentId").val();
      var regionId=$("#id").val();
      var posteId=$("#posteId").val();

         if(!validationmotpasse() && agentid==null){
             return false;
         }
         if(id==0 && typeregion==="1"){
             swal("Avertissement","S'il vous plaît choisir une région","error");
             return false;
         }
             if ($("form[name='agentForm']").valid()) {
                 var se = $("#agentForm").serializeObject();
                 $.ajax({
                     type: "POST",
                     url: "/api/addAgent/"+regionId+"/"+posteId,
                     contentType: 'application/json; charset=utf-8',
                     data: JSON.stringify(se),
                     success: function (response) {
                         window.location.href = '/api/getAgent/0/40'
                     },
                     error: function (response) {

                         alert('Erreur ajout non effectu�');

                     }
                 });
             } else {
                 return false;
             }
     }

     function addAgent_indemnite (){

      var agentid=$("#agentId").val();
      var indemniteId=$("#indemniteId").val();
         if ($("form[name='indemniteForm']").valid()) {
                 var Agentindemnite = $("#indemniteForm").serializeObject();
                 $.ajax({
                     type: "POST",
                     url: "/api/addAgent_indemnite/"+agentid+"/"+indemniteId,
                     contentType: 'application/json; charset=utf-8',
                     data: JSON.stringify(Agentindemnite),
                     success: function (response) {
                         $("#Div_indemnite").html(response);
                         $("#close_form_in").click();

                         //window.location.href = '/api/updateAgent/'+agentid+"#div5"
                     },
                     error: function (response) {
                         alert('Erreur ajout non effectu�');
                     }
                 });
             } else {
                 return false;
             }
     }


     function schotypecontra (){

      var contractuelle=$("#contractuelle").val();

         if (contractuelle == 'oui') {
             $("#type_Contra").removeClass("hidden");
             show_salire_de_base ();
         }else {$("#type_Contra").addClass("hidden");
                $("#salaire_de_basediv").addClass("hidden");

         }
     }
     function show_salire_de_base (){

      var type_Contras=$("#type_Contras").val();

         if (type_Contras == 'Contrat') {
             $("#salaire_de_basediv").removeClass("hidden");
         }else {$("#salaire_de_basediv").addClass("hidden");}
     }


     function addAgent_niveaux (){

      var agentid=$("#agentId").val();
      var niveauxId=$("#niveauxId").val();
         if ($("form[name='niveauxForm']").valid()) {
                 var Agentniveaux = $("#niveauxForm").serializeObject();
                 $.ajax({
                     type: "POST",
                     url: "/api/addAgent_niveaux/"+agentid+"/"+niveauxId,
                     contentType: 'application/json; charset=utf-8',
                     data: JSON.stringify(Agentniveaux),
                     success: function (response) {
                         $("#Div_niveaux").html(response);
                         $("#close_form_Ni").click();

                         //window.location.href = '/api/updateAgent/'+agentid+"#div5"
                     },
                     error: function (response) {
                         alert('Erreur ajout non effectu�');
                     }
                 });
             } else {
                 return false;
             }
     }


     function addAgent_classe_ok (){

      var agentid=$("#agentId").val();
      var classeId=$("#ClasseId").val();
         if ($("form[name='classeForm']").valid()) {
                 var Agentclasse = $("#classeForm").serializeObject();
                 $.ajax({
                     type: "POST",
                     url: "/api/addAgent_classe/"+agentid+"/"+classeId,
                     contentType: 'application/json; charset=utf-8',
                     data: JSON.stringify(Agentclasse),
                     success: function (response) {
                         $("#Div_classe").html(response);
                         $("#close_form_cl").click();

                         //window.location.href = '/api/updateAgent/'+agentid+"#div5"
                     },
                     error: function (response) {
                         alert('Erreur ajout non effectu�');
                     }
                 });
             } else {
                 return false;
             }
     }

     function addAgent_classe (){


         swal({
             title: 'êtes-vous sûre?',
             text: "Cette modification affectera les données de l'agent.\n Souhaitez-vous les enregistrer ?!",
             icon: 'warning',
             showCancelButton: true,
             confirmButtonColor: '#e0c44e',
             cancelButtonColor: '#184a00bd',
             confirmButtonText: 'Enregistrer',
             cancelButtonText: "Annuler",
         }, function (isConfirm) {
             if (isConfirm) {
                 swal("Supprimer!", "L'élément a bien été supprimé", "success");
                 //tableProfils.row($(btn).parents('tr')).remove().draw(false);
                 addAgent_classe_ok ()
             } else {
                 swal("Annuler!", "L'élément n'a pas été supprimé", "error");
             }
         });
     }


     function addAgent_Position (){


         swal({
             title: 'êtes-vous sûre?',
             text: "Cette modification affectera les données de l'agent.\n Souhaitez-vous les enregistrer ?!",
             icon: 'warning',
             showCancelButton: true,
             confirmButtonColor: '#e0c44e',
             cancelButtonColor: '#184a00bd',
             confirmButtonText: 'Enregistrer',
             cancelButtonText: "Annuler",
         }, function (isConfirm) {
             if (isConfirm) {
                 swal("Supprimer!", "L'élément a bien été supprimé", "success");
                 //tableProfils.row($(btn).parents('tr')).remove().draw(false);
                 addAgent_Position_ok ()
             } else {
                 swal("Annuler!", "L'élément n'a pas été supprimé", "error");
             }
         });
     }


     function addAgent_Position_ok (){

      var agentid=$("#agentId").val();
      var positionId=$("#positionId").val();
         if ($("form[name='positionForm']").valid()) {
                 var Agentposition = $("#positionForm").serializeObject();
                 $.ajax({
                     type: "POST",
                     url: "/api/addAgent_position/"+agentid+"/"+positionId,
                     contentType: 'application/json; charset=utf-8',
                     data: JSON.stringify(Agentposition),
                     success: function (response) {
                         $("#Div_position").html(response);
                         $("#close_form_Po").click();

                         //window.location.href = '/api/updateAgent/'+agentid+"#div5"
                     },
                     error: function (response) {
                         alert('Erreur ajout non effectu�');
                     }
                 });
             } else {
                 return false;
             }
     }


     function updateAgentIndemnite (id,date_d,date_f,id_ind,mon){

         $("#btnAjouter_indemnite").click();
         $("#agentIndemniteId").val(id);
         // $("#etat_in").val(etat);
         $("#datedebut_s_in").val(date_d);
         $("#datefin_s_in").val(date_f);
         $("#indemniteId").val(id_ind);
         $("#montant").val(mon);


     }

     function exclu_salaire_brut_imposable(id) {
         $.ajax({
             url: "/api/exclu_salaire_brut_imposable",
             type: "POST",

             data: {
                 "id": id
             },
             success: function (response) {
                 $("input[name=inputR]").removeAttr("disabled")
             },
             error: function (response) {
                 alert("error")
             }
         });
     }
     function cmrchrk() {
         // alert("ok");
         var t=$("#cmr_H").val();
         if(t==1)
         {$("#cmr_H").val("0");
             $("#cmr__chek").removeClass("checked");
             $("#cmr__chek").attr("checked");
         }else
         {$("#cmr_H").val("1");
             $("#cmr__chek").addClass("checked");
             $("#cmr__chek").removeAttr("disabled");
         }

     }

     function deleteAgentIndemnite(id){
         swal({
             title: 'êtes-vous sûre?',
             text: "si vous cliquez sur supprimer, vous ne pouvez pas le récupérer !",
             icon: 'warning',
             showCancelButton: true,
             confirmButtonColor: '#00695c',
             cancelButtonColor: '#d33',
             confirmButtonText: 'supprimer',
             cancelButtonText: "Annuler",
         }, function (isConfirm) {
             if (isConfirm) {
                 swal("Supprimer!", "L'élément a bien été supprimé", "success");
                 $.ajax({
                     type: "POST",
                     url: "/api/deleteAgentIndemnite/" + id,
                     data: {
                         "id": id
                     },
                     success: function (data) {
                         $("#trIndemnite-" + id).css("display", "none");
                     },
                     error: function (response) {
                         alert("Erreur")
                     }
                 });
                 Swal.fire(
                     'Supprimer !',
                     'Supprime avec succes',
                     'success'
                 )
             } else {
                 swal("Annuler!", "L'élément n'a pas été supprimé", "error");
             }
         });
     }
 </script>

<jsp:include page="../../includes/footer.jsp" />



