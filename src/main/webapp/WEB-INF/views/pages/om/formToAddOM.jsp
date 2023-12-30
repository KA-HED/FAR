<%--<jsp:include page="../../includes/tag.jsp"/>--%>
<jsp:include page="../../includes/header.jsp"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="../../menu/menu_verticale.jsp"/>
<style>
    .nav-wizard > li {
        float: left;
        line-height: 20px !important;
    }
    .nav-wizard > li > a {
        position: relative !important;
        background-color: #eeeeee !important;
        padding: 10px 15px;
        /* position: relative; */
        padding-left: 100px !important;
        padding-right: 70px !important;
        display: block;
    }
    .nav-wizard > li > a .badge {
        margin-left: 3px !important;
        color: #eeeeee !important;
        background-color: #428bca !important;
    }
    .nav-wizard > li:not(:first-child) > a:before {
        width: 0px !important;
        height: 0px !important;
        border-top: 20px inset transparent !important;
        border-bottom: 20px inset transparent !important;
        border-left: 20px solid #ffffff !important;
        position: absolute !important;
        content: "" !important;
        top: 0 !important;
        left: 0 !important;
    }
    .nav-wizard > li:not(:last-child) > a {
        margin-right: 6px !important;
    }
    .nav-wizard > li:not(:last-child) > a:after {
        width: 0px !important;
        height: 0px !important;
        border-top: 20px inset transparent !important;
        border-bottom: 20px inset transparent !important;
        border-left: 20px solid #eeeeee !important;
        position: absolute !important;
        content: "" !important;
        top: 0 !important;
        right: -20px !important;
        z-index: 2 !important;
    }
    .nav-wizard > li:first-child > a {
        border-top-left-radius: 4px !important;
        border-bottom-left-radius: 4px !important;
    }
    .nav-wizard > li:last-child > a {
        border-top-right-radius: 4px !important;
        border-bottom-right-radius: 4px !important;
    }
    .nav-wizard > li.done:hover > a,
    .nav-wizard > li:hover > a {
        background-color: #d5d5d5 !important;
    }
    .nav-wizard > li.done:hover > a:before,
    .nav-wizard > li:hover > a:before {
        border-right-color: #d5d5d5 !important;
    }
    .nav-wizard > li.done:hover > a:after,
    .nav-wizard > li:hover > a:after {
        border-left-color: #d5d5d5 !important;
    }
    .nav-wizard > li.done > a {
        background-color: #e2e2e2 !important;
    }
    .nav-wizard > li.done > a:before {
        border-right-color: #e2e2e2 !important;
    }
    .nav-wizard > li.done > a:after {
        border-left-color: #e2e2e2 !important;
    }
    .nav-wizard > li.active > a,
    .nav-wizard > li.active > a:hover,
    .nav-wizard > li.active > a:focus {
        color: #ffffff !important;
        background-color: #428bca !important;
    }
    .nav-wizard > li.active > a:after {
        border-left-color: #428bca !important;
    }
    .nav-wizard > li.active > a .badge {
        color: #428bca !important;
        background-color: #ffffff !important;
    }
    .nav-wizard > li.disabled > a {
        color: #777777 !important;
    }
    .nav-wizard > li.disabled > a:hover,
    .nav-wizard > li.disabled > a:focus {
        color: #777777 !important;
        text-decoration: none !important;
        background-color: #eeeeee !important;
        cursor: default !important;
    }
    .nav-wizard > li.disabled > a:before {
        border-right-color: #eeeeee !important;
    }
    .nav-wizard > li.disabled > a:after {
        border-left-color: #eeeeee !important;
    }
    .nav-wizard.nav-justified > li {
        float: none !important;
        line-height: 20px !important;
    }
    .nav-wizard.nav-justified > li > a {
        padding: 10px 15px !important;
    }
    @media (max-width: 768px) {
        .nav-wizard.nav-justified > li > a {
            border-radius: 4px !important;
            margin-right: 0 !important;
        }
        .nav-wizard.nav-justified > li > a:before,
        .nav-wizard.nav-justified > li > a:after {
            border: none  !important;
        }
    }
</style>


<div class="col-12"  style="margin: 60px 0px 0px 0px;">
    <div class="row p-0 m-0 justify-content-center">
        <div class="col-md-11 mt-5 col-sm-12">
            <div class="card-body col-md-12" style="background-color: white">
                <div>
                    <ul class='nav-wizard'>

                        <li class=" ${OM.tracOM=='O' ? 'active' : ''}"><a href='#step1' data-toggle="tab">Order </a></li>

                        <li class=" ${OM.tracOM=='R' ? 'active' : ''}" ><a href='#step2' data-toggle="tab">Receprion </a></li>

                        <li class=" ${OM.tracOM=='A' ? 'active' : ''}"><a>Archivé</a></li>

                    </ul>

                </div><br>


                <div class="tab-content" >
                    <div class="tab-pane active" id="div1">
                        <form id="myForm">
                            <div class="card" style="padding: 10px;    ">
                                <label class="label_card">Référence </label>
                            <div class="form-row">
                                <div class="col-md-1">
                                    <label>TEXTE N°</label>
                                </div>
                                <div class="col-md-2">
                                    <input type="hidden"  id="omId" name="omId" value="${OM.omId}">
                                    <input class="form-control" type="text"   name="nTO" value="${OM.nTO}">
                                </div>
                                <div class="col-md-1">
                                    <label>/EMG/4°B.N°</label>
                                </div>
                                <div class="col-md-2">  <input class="form-control" type="text" name="dgmac" value="${OM.dgmac}" >
                                </div>
                                <div class="col-md-1">
                                    <label>/DMAC/</label>
                                </div>
                                <div class="col-md-1">
                                    <select class="form-control " id="s" NAME="s" >
                                        <option selected>Choose...</option>
                                        <option value="SGM" ${OM.s=='SGM' ? 'selected' : ''}>SGM</option>
                                        <option value="SGS" ${OM.s=='SGS' ? 'selected' : ''}>SGS</option>
                                        <option value="SEB" ${OM.s=='SEB' ? 'selected' : ''}>SEB</option>
                                    </select>
                                </div>
                                <div class="col-md-2">
                                    <input class="form-control" type="text" value="${OM.nOM}" name="nOM" >
                                </div>
                                <div class="col-md-1">
                                    <label>/OM</label>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-1">
                                    <label>DU</label>
                                </div>
                                <div class="col-md-2">
                                    <input class="form-control"  type="date"  class=" datepicker"  name="dateOM"  value="${fn:substring(OM.dateOM, 0, 10)}" >
                                </div>
                                <div class="col-md-2">
                                    <label>Type OM </label>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-control"  id="typeOM" NAME="typeOM" >
                                        <option selected>Choose...</option>
                                        <option value="1" ${OM.typeOM=='1' ? 'selected' : ''}> Affectation</option>
                                        <option value="2" ${OM.typeOM=='2' ? 'selected' : ''}> OM2</option>
                                    </select>
                                </div>
                                <div class="col-md-2">
                                    <label>Degré d’urgence</label>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-control"  id="degreUrg" name="degreUrg" >
                                        <option selected value="0">Choose</option>
                                        <option value="1" ${OM.degreUrg=='1' ? 'selected' : ''}>Normal</option>
                                        <option value="2" ${OM.degreUrg=='2' ? 'selected' : ''}>Urgent</option>
                                        <%--<option></option>--%>
                                    </select>
                                </div>

                            </div>

                                <div class="form-row">
                                    <div class="col-md-2">
                                        <label>Degré d’urgence</label>
                                    </div>
                                    <div class="col-md-2">
                                        <select class="form-control"  id="tracOM" name="tracOM" >
                                            <option selected value="0">Choose</option>
                                            <option value="1" ${OM.tracOM=='1' ? 'selected' : ''}>Normal</option>
                                            <option value="2" ${OM.tracOM=='2' ? 'selected' : ''}>Urgent</option>
                                            <%--<option></option>--%>
                                        </select>
                                    </div>

                                </div>
                        </div>
                            <div class="card" style="padding: 10px;    ">
                                <label class="label_card">Acteurs </label>
                                <div class="form-row">
                                    <div class="col-md-2">
                                        <label>Création</label>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control"   name="actOrdre"  readonly>
                                            <c:if test="${id_om.equals(0)}">
                                                <option value="${user.acteurId }" selected>${user.nom} ${user.prenom}</option>
                                            </c:if>
                                            <c:if test="${OM.actOrdre.acteurId!=null}">
                                                <option value="${OM.actOrdre.acteurId }" selected>${OM.actOrdre.nom} ${OM.actOrdre.prenom}</option>
                                            </c:if>
                                            <%--<option>...</option>--%>
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Validation  </label>
                                    </div>
                                    <div class="col-md-4">
                                        <select id="actReception" class="form-control" name="actReception" >

                                            <option selected value="0">Choose...</option>
                                            <c:forEach items="${acteur}" var="ed">
                                                <option value="${ed.acteurId }" ${ed.acteurId==OM.actReception.acteurId ? 'selected' : ''}>${ed.nom } ${ed.prenom }</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-2">
                                        <label>Date Ordre </label>
                                    </div>
                                    <div class="col-md-4">
                                        <input class="form-control"  type="date" name="dateOrdre" value="${fn:substring(OM.dateOrdre, 0, 10)}" class=" datepicker"  >
                                    </div>

                                    <div class="col-md-2">
                                        <label>Date Demande </label>
                                    </div>
                                    <div class="col-md-4">
                                        <%--<input class="form-control"  type="date" name="dateReception" value="${OM.dateReception}" class=" datepicker"  >--%>
                                        <input class="form-control"  type="date" name="dateReception" value="${fn:replace(OM.dateReception,' 00:00:00.0','')}" class=" datepicker"  >
                                    </div>

                                </div>
                            </div>
                        </form>
                        <%--</div>--%>
                    </div>

                    <div class="row justify-content-center sw">
                        <div class="col-5 toolbar">
                            <button class="btn btn-success float-right" onclick="AddOM()"><i class="ml-2 fa fa-save"></i><spring:message code="label.Enregistrer"/></button>
                        </div>
                    </div>
                    <%--<div class="card-body col-md-12" style="background-color: white">--%>
                    <div class="card" style="padding: 10px;    ">
                        <label class="label_card">Articles  </label>
                        <div class="card-body col-md-12" style="background-color: white">
                            <form id="myForm_l_om">
                                <table class="table table-bordered">
                                    <tr class="thead-dark">
                                        <th rowspan="2">N° Vhle</th>
                                        <th rowspan="2">Désignation</th>
                                        <%--<th rowspan="2">N° Chassis</th>--%>
                                        <th colspan="2">Origine</th>
                                        <%--<th>4 </th>--%>
                                        <th colspan="2">Destinataire</th>
                                        <th rowspan="2">unité Élémentaire</th>
                                        <th rowspan="2">unité Détachement  </th>
                                        <th rowspan="2">Détenteur</th>
                                        <th rowspan="2">Etat</th>
                                        <th rowspan="2">Action</th>
                                    </tr>
                                    <tr class="thead-dark">
                                        <th >unité</th>
                                        <th>Position</th>
                                        <th>unité </th>
                                        <th>Position</th>
                                    </tr>
                                    <tr id="tr">
                                        <input type="hidden" name="om" id="om_Ligne" value="${OM.omId}">
                                        <input type="hidden" name="modeleAeb" id="modeleAeb" >
                                        <td><select id="art" name="art" class="selectpicker form-control"  data-live-search="true" onchange="selectvl()" >
                                            <option selected  value="0">Choose...</option>
                                            <c:forEach items="${art}" var="ed">
                                                <option value="${ed.nNomencl }" id="vl-${ed.nNomencl}"
                                                        data-vl-${ed.nNomencl}="${ed.modeleId.designation}"
                                                        data-n_cha-${ed.nNomencl}="${ed.numChassis}"
                                                        data-n_unt-${ed.nNomencl}="${ed.unitesCriblees.untId}"
                                                        data-n_pos-${ed.nNomencl}="${ed.pos.posId}"
                                                        data-n_mod-${ed.nNomencl}="${ed.modeleId}"
                                                >${ed.nomineralogique } </option>
                                            </c:forEach>
                                        </select></td>
                                        <td><input class="form-control" type="text"  id="desig"></td>
                                        <%--<td>${ed.art.numChassis}</td>--%>
                                        <td><input type="hidden" id="n_chassis">
                                            <select class="form-control"  id="untOrigine" name="untOrigine" >
                                                <option selected  value="0">Choose...</option>
                                                <c:forEach items="${unt}" var="ed">
                                                    <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control"  id="posOrigine" name="posOrigine" >
                                                <option selected  value="0">Choose...</option>
                                                <c:forEach items="${Pos}" var="ed">
                                                    <option value="${ed.posId }" >${ed.posAbrev } </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control selectpicker"  id="untDest" name="untDest" >
                                                <option selected  value="0">Choose...</option>
                                                <c:forEach items="${unt}" var="ed">
                                                    <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control selectpicker"  id="posDest" name="posDest" >
                                                <option selected value="0">Choose...</option>
                                                <c:forEach items="${Pos}" var="ed">
                                                    <option value="${ed.posId }" >${ed.posAbrev } </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control selectpicker"  id="untElementOrig" name="untElementOrig" >
                                                <option selected  value="0">Choose...</option>
                                                <c:forEach items="${unt}" var="ed">
                                                    <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control selectpicker"  id="untDetachDest" name="untDetachDest" >
                                                <option selected  value="0">Choose...</option>
                                                <c:forEach items="${unt}" var="ed">
                                                    <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control selectpicker"  id="detenteurDest" name="detenteurDest" >
                                                <option selected  value="0">Choose...</option>
                                                <c:forEach items="${detenteur}" var="ed">
                                                    <option value="${ed.detenteurId }" >${ed.nom } ${ed.prenom } </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control"  id="etatLigne" name="etatLigne" >
                                                <%--<option selected  value="0">Choose...</option>--%>
                                                <%--<c:forEach items="${unt}" var="ed">--%>
                                                <option value="R" selected>Réserve</option>
                                                <option value="L" >Affecter </option>
                                                <%--</c:forEach>--%>
                                            </select>
                                        </td>
                                        <td>

                                            <button class="btn" onclick="addLigneOm()"
                                                    type="button" title="Enregistrer">
                                                <div class="icon_trash_1">
                                                    <span class="fas fa-save" style="color: #49ff6d"></span>
                                                </div>
                                            </button>
                                        </td>
                                    </tr>
                                    <tbody id="LigneOmListe">
                                    <c:forEach items="${lOM}" var="ed">
                                        <tr id="tr_${ed.ligneOmId}">
                                            <td>${ed.art.nomineralogique}</td>
                                            <td>${ed.modeleAeb.designation}</td>
                                                <%--<td>${ed.art.numChassis}</td>--%>
                                            <td>${ed.untDest.nomAbrege}</td>
                                            <td>${ed.posOrigine.posAbrev}</td>
                                                <%--<td>3</td>--%>
                                                <%--<td>4</td>--%>
                                                <%--<td>5</td>--%>
                                            <td>${ed.untDest.nomAbrege}</td>
                                            <td>${ed.posDest.posAbrev}</td>
                                            <td>${ed.untElementOrig.nomAbrege}</td>
                                            <td>${ed.untDetachDest.nomAbrege}</td>
                                            <td>${ed.detenteurDest.nom} ${ed.detenteurDest.prenom}</td>
                                            <td>${ed.etatLigne=='R'?'Réserve':'Affecter'}</td>
                                            <td>
                                                <button class="btn" onclick="deleteligneOm(${ed.ligneOmId})"
                                                        type="button" title="Supprimer">
                                                    <div class="icon_trash_1">
                                                        <span class="fas fa-trash" style="color: red"></span>
                                                    </div>
                                                </button>
                                            </td>
                                        </tr>

                                    </c:forEach>
                                    </tbody>



                                </table>
                            </form>
                            <!-- Button trigger modal -->
                        </div>
                    </div>
                            <%--</form>--%>
                        </div>
                    </div>

            </div>
        </div>
    </div>
</div>

<div class="row p-0 m-0 justify-content-center">
    <div class="col-md-11 col-sm-12">

    </div>
</div>




<jsp:include page="../../includes/footer.jsp"/>

<script>
    function selectvl(){
        var vals1=$("#art").val();
        $("#n_chassis").val($("#vl-"+vals1).data("n_cha-"+vals1));
        $("#desig").val($("#vl-"+vals1).data("vl-"+vals1));
        $("#modeleAeb").val($("#vl-"+vals1).data("n_mod-"+vals1));
        var pos= $("#vl-"+vals1).data("n_pos-"+vals1);
        $("#posOrigine").val(pos);
        var unt=$("#vl-"+vals1).data("n_unt-"+vals1);
        $('#untOrigine').val(unt);
        //alert(vals2);
    }

    function goToList() {
        window.location.href="/api/param/listeCategorie_materiel"
    }

    function deleteligneOm(id) {
        // var trid= '#tr_'+id;

        $.ajax({
            type : "POST",
            url :"/OM/deleteligneOm",
            data:{
                "id":id
            },
            success : function(data) {

                $("#tr_"+id).css("display","none");
            },
            error : function(response) {
                alert("error")
            }
        });
    }

    // $.fn.serializeObject = function() {
    //     var o = {};
    //     var a = this.serializeArray();
    //     $.each(a, function() {
    //         if (o[this.name]) {
    //             if (!o[this.name].push) {
    //                 o[this.name] = [o[this.name]];
    //             }
    //             o[this.name].push(this.value || '');
    //         } else {
    //             o[this.name] = this.value || '';
    //         }
    //     });
    //     return o;
    // };

    function AddOM1(){
        var id=$("#omId").val();
        var se = $("#myForm").serializeObject();

            $.ajax({
                url: '/OM/addOM', // url where to submit the request
                type : "POST", // type of action POST || GET
                contentType : 'application/json; charset=utf-8',
                data : JSON.stringify(se),

                success : function(result) {

                    window.location = "/OM/listeOM";



                },
                error: function(xhr, resp, text) {
                    console.log(xhr, resp, text);
                }
            })

    }
    function AddOM() {
        $.fn.serializeObject = function () {
            var o = {};
            var a = this.serializeArray();
            $.each(a, function () {
                if (o[this.name]) {
                    if (!o[this.name].push) {
                        o[this.name] = [o[this.name]];
                    }
                    o[this.name].push(this.value || '');
                } else {
                    o[this.name] = this.value || '';
                }
            });
            return o;
        };
        var obj = $("#myForm").serializeObject();
        var id =  $("#omId").val();
        $.ajax({
            type: "POST",
            url: "/OM/addOM",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify(obj),
            success: function (response) {$("#omId").val(response);$("#om_Ligne").val(response);},
            error: function (response) { alert('Erreur ajout non effectué'); }
        });
    }
    function AddOM2() {
        $.fn.serializeObject = function () {
            var o = {};
            var a = this.serializeArray();
            $.each(a, function () {
                if (o[this.name]) {
                    if (!o[this.name].push) {
                        o[this.name] = [o[this.name]];
                    }
                    o[this.name].push(this.value || '');
                } else {
                    o[this.name] = this.value || '';
                }
            });
            return o;
        };
        var obj = $("#myForm").serializeObject();
        var id =  $("#omId").val();
        $.ajax({
            type: "POST",
            url: "/OM/addOM",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify(obj),
            success: function (response) {
                $("#omId").val(response);
                $("#om_Ligne").val(response);
                addLigneOm();},
            error: function (response) { alert('Erreur ajout non effectué'); }
        });
    }

    function addLigneOm() {
        if ($("#omId").val() == '') {
            AddOM2()
        } else {
            var id = $("#omId").val();
            $("#om_Ligne").val(id);
            $.fn.serializeObject = function () {
                var o = {};
                var a = this.serializeArray();
                $.each(a, function () {
                    if (o[this.name]) {
                        if (!o[this.name].push) {
                            o[this.name] = [o[this.name]];
                        }
                        o[this.name].push(this.value || '');
                    } else {
                        o[this.name] = this.value || '';
                    }
                });
                return o;
            };
            var obj = $("#myForm_l_om").serializeObject();
            $.ajax({
                type: "POST",
                url: "/OM/addLigneOm",
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify(obj),
                success: function (response) {
                    $("#LigneOmListe").empty();
                    $("#LigneOmListe").html(response);
                },
                error: function (response) {
                    alert('Erreur ajout non effectué');
                }
            });
        }
    }


    $(document).ready(function () {
        $('.selectpicker').selectpicker();
    });


</script>