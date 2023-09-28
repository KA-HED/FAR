<jsp:include page="../../includes/tag.jsp"/>
<jsp:include page="../../includes/header.jsp"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<c:if test="${pageContext.response.locale=='ar' }">
    <style>
        .button {
            float: left;
        }
    </style>
</c:if>
<c:if test="${pageContext.response.locale!='ar' }">
    <style>
        .button {
            float: right;
        }
    </style>
</c:if>
<div class="col-12 from_add" style=" padding-left: 15px; float: none; margin: 15px;">


    <div class="col-12 from_add" id="frm_etatDoss"
         style="display: none; margin-top: 43px; padding-right: 20%; float: none;">

        <c:choose>
            <c:when test="${pageContext.response.locale=='ar'}">
                <c:set var="lng" value="nom_ar"/>
            </c:when>
            <c:otherwise>
                <c:set var="lng" value="nom_fr"/>
            </c:otherwise>
        </c:choose>
        <div class="row p-0 m-0 justify-content-center">
            <div class="col-xl-5 col-lg-7 mt-5 col-sm-12 mt-5 grid-margin">
                <div class="photo  hvr-buzz-out">
                    <i class="mdi icc mdi-folder-multiple menu-icon"></i>
                </div>
                <div class="card">
                    <div class="row justify-content-center">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 29%;" aria-valuenow="29"
                                 aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>

                        <div class="col-10 mt-4">

                            <h3 class="ml6 float-right mb-1">
                                                      <span class="text-wrapper">
                                                        <span class="letters"><span class="letters"><spring:message
                                                                code="label.Commission"/></span></span>
                                                      </span>
                            </h3>
                            <div class="row p-0 m-0 mt-5">
                                <input type="hidden" id="id_commission" value="${commission.id_commission}"/>

                            </div>
                            <div class="row p-0">
                                <div class="col-12 mt-4">
                                    <div class="form-group">
                                        <label><spring:message code="label.Nom"/></label>
                                        <input type="text" id="name" value="${commission.name}" class="form-control">
                                    </div>
                                </div>
                                <div class="col-12 mt-4">
                                    <div class="form-group">
                                        <label><spring:message code="label.Email"/></label>
                                        <input type="text" id="email" value="${commission.email}" class="form-control">
                                    </div>
                                </div>
                                <div class="col-12 mt-4">
                                    <div class="form-group">
                                        <label><spring:message code="label.password"/></label>
                                        <input type="password" id="password" value="${commission.email}" class="form-control">
                                    </div>
                                </div>
                                <div class="col-12 mt-4">
                                    <div class="form-group text-left">
                                        <label><spring:message code="label.Amal"/></label>
                                        <select id="typeaut" name="typeaut" multiple
                                                class="form-select bg-light"
                                                style="height: 100px">
                                            <option ${commission.typeaut.equals('ZF')?"selected":"" } value="ZF">
                                                <spring:message
                                                        code="label.Importationdesdechetsdunezonnefranche"/></option>
                                            <option ${commission.typeaut.equals('ET')?"selected":"" } value="ET">
                                                <spring:message
                                                        code="label.Importationdesdechetsnondangereuxdunpaysetranger"/></option>
                                            <option ${commission.typeaut.equals('IT')?"selected":"" } value="IT">
                                                <spring:message
                                                        code="label.Installationdetraitementdesdechets"/></option>
                                            <option ${commission.typeaut.equals('CT')? 'selected' :''} value="CT">
                                                <spring:message code="label.CollecteetTransport"/></option>
                                            <option ${commission.typeaut.equals('TR')?"selected":"" } value="TR">
                                                <spring:message
                                                        code="label.ExportationDesDechetsDangereux"/></option>
                                            <option ${commission.typeaut.equals('XD')?"selected":"" } value="XD">
                                                <spring:message code="label.TransitDesDechets"/></option>
                                            <option ${commission.typeaut.equals('EE')?"selected":"" } value="EE">
                                                <spring:message code="label.Etudedimpactenvirementale"/></option>
                                            <option ${commission.typeaut.equals('AE')?"selected":"" } value="AE">
                                                <spring:message code="label.Auditenvironnemental"/></option>
                                            <option ${commission.typeaut.equals('NT')?"selected":"" } value="NT">
                                                <spring:message code="label.NoticeImpact"/></option>
                                        </select>
                                    </div>

                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="row  mb-4" style="margin:14px;">
                        <a class="btn btn-primary btn-block " onclick="addCommission()"><spring:message
                                code="label.Enregistrer"/> </a>
                        <a class="btn btn-danger-2 text-white btn-block"
                           onclick="getFunctionParam('getParamCommission')"><spring:message code="label.Annuler"/></a>

                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
    <!-- fin etat Dossier -->
    <div class="col-12 grid-margin z_tab" id="subtab_0">
        <div>
            <div class="row justify-content-center">
                <div class="col-lg-12 pr-0 pl-0">
                    <div class="row m-0">
                        <div class="col-3">
                            <h4 class="ml6">
                                      <span class="text-wrapper">
                                        <span class="letters"><span class="letters"><spring:message
                                                code="label.Commission"/></span></span>
                                      </span>
                            </h4>

                        </div>
                        <div class="col-9">
                            <a class="button text-white fr_btn" onclick="frm_table('subtab_0','frm_etatDoss')">
                                <span><spring:message code="label.NouvelleCommission"/> </span></a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-12">
                    <table id="example2" class="table tablee table-hover">
                        <thead>
                        <tr>

                            <th class="text-center"><spring:message code="label.Nom"/></th>
                            <th class="text-center"><spring:message code="label.Email"/></th>
                            <th class="text-center"><spring:message code="label.password"/></th>
                            <th class="text-center"><spring:message code="label.Typeautorisation"/></th>
                            <th class="text-center"><spring:message code="label.Action"/></th>


                        </tr>
                        </thead>
                        <tbody class="tbodyy">

                        <c:forEach items="${listF}" var="f">

                            <tr id="tr-${f.id_commission}">

                                <td>${f.name}</td>
                                <td>${f.email}</td>
                                <td>${f.password}</td>
                                <td>${f.typeaut}</td>

                                <td class="text-center">
                                    <ul class="list-inline m-0">
                                        <li class="list-inline-item">
                                            <button onclick="updateCommission(${f.id_commission})"
                                                    class="btn btn-outline-warning btn-sm rounded-circle tab_edit"
                                                    type="button" title="Editer" style="background-color: white">
                                                <div class="icon_trash_1">
                                                    <span class="fas fa-pencil-alt" style="color: orange"></span>
                                                </div>

                                            </button>
                                        </li>
                                        <li class="list-inline-item">
                                            <button onclick="delete_Commission(${f.id_commission})"
                                                    class="btn btn-outline-danger btn-sm rounded-circle tab_trash"
                                                    type="button" title="Supprimer" style="background-color: white">
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
            </div>


        </div>
    </div>
</div>


<script type="text/javascript">
    function addCommission() {

        var typeaut = $("#typeaut option:selected").map(function () {
            return $(this).val();
        }).get().join(',');

        var id_commission = $("#id_commission").val();
        var name = $("#name").val();
        var email = $("#email").val();
        var password = $("#password").val();

        var commission = {
            "name": name,
            "email": email,
            "password": password,
            "typeaut": typeaut,
            "id_commission": id_commission
        }


        $.ajax({
            type: "POST",

            url: "/api/addCommission",
            contentType: 'application/json; charset=utf-8',

            data: JSON.stringify(commission),

            success: function (response) {

                $(".mpParam").html(response);
            },
            error: function (response) {

                alert('Erreur ajout non effectu�');

            }
        });


    }


    /*  delete famille  begin */

    function delete_Commission(id) {
        Swal.fire({
            title: '<spring:message code="label.etesvousure"/>',
            text: "<spring:message code="label.sivouscliquezsursupprimervousnepouvezpaslerecuperer"/>",
            type: 'Attention',
            showCancelButton: true,
            confirmButtonColor: '#42ba96',
            cancelButtonColor: '#d33',
            confirmButtonText: '<spring:message code="label.supprimer"/>',
            cancelButtonText: '<spring:message code="label.Annuler"/>'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    type: "POST",
                    url: "/api/deleteCommission/" + id,
                    data: {
                        "id": id
                    },
                    success: function (data) {
                        $("#tr-" + id).css("display", "none");
                    },
                    error: function (response) {
                        alert("error")
                    }
                });
                Swal.fire(
                    '<spring:message code="label.Supprimer"/>!',
                    '<spring:message code="label.suppressionValider"/>.',
                    'Succès',
                )
            }
        })


    }

    function updateCommission(id) {
        $.ajax({
            type: "GET",
            url: "/api/updateCommission/" + id,
            data: {},
            success: function (data) {
                $(".mpParam").html(data);
                $("#subtab_0").hide("slow");
                $("#frm_etatDoss").show("slow");
            },
            error: function (response) {
                alert("error")
            }
        });


    }

</script>
<jsp:include page="../../includes/footer.jsp"/>
