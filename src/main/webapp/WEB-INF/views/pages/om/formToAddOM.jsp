<%--<jsp:include page="../../includes/tag.jsp"/>--%>
<jsp:include page="../../includes/header.jsp"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="../../menu/menu_verticale.jsp"/>

<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>


<div class="col-12"  style="margin: 60px 0px 0px 0px;">
    <div class="row p-0 m-0 justify-content-center">
        <div class="col-md-11 mt-5 col-sm-12">
            <div class="card-body col-md-12" style="background-color: white">

                <ul class="nav nav-tabs nav-justified nav-inline navbar-primary-menu">
                    <li class="active"><a href="#div1" data-toggle="tab">Référence OM</a></li>
                    <li><a href="#div2" data-toggle="tab">Articles </a></li>

                </ul>
                <div class="tab-content" >
                    <div class="tab-pane active" id="div1">
                        <form id="myForm">
                        <div class="card" style="padding: 10px;    ">
                            <label class="label_card">Référence </label>
                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <label>TEXTE N°</label>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="hidden" class="form-control" id="omId" name="omId" value="${OM.omId}">
                                    <input type="text" class="form-control" name="refOM" value="${OM.refOM}">
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="text" class="form-control" >
                                </div>
                                <div class="form-group col-md-2">
                                    <select id="tracOM" NAME="tracOM" class="form-control">
                                        <option selected>Choose...</option>
                                        <option value="1" ${OM.tracOM=='1' ? 'selected' : ''}> TRAC_OM 1</option>
                                        <option value="1" ${OM.tracOM=='2' ? 'selected' : ''}> TRAC_OM 2</option>
                                        <option value="1" ${OM.tracOM=='3' ? 'selected' : ''}> TRAC_OM 3</option>

                                    </select>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <label>DU</label>
                                </div>
                                <div class="form-group col-md-2">
                                    <input  type="date"  class="form-control datepicker"  name="dateOM"  value="${fn:substring(OM.dateOM, 0, 10)}" >
                                </div>
                                <div class="form-group col-md-2">
                                    <label>Type OM </label>
                                </div>
                                <div class="form-group col-md-2">
                                    <select id="typeOM" NAME="typeOM" class="form-control">
                                        <option selected>Choose...</option>
                                        <option value="1" ${OM.typeOM=='1' ? 'selected' : ''}> OM1</option>
                                        <option value="2" ${OM.typeOM=='2' ? 'selected' : ''}> OM2</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-2">
                                    <label>Degré d’urgence</label>
                                </div>
                                <div class="form-group col-md-2">
                                    <select id="degreUrg" name="degreUrg" class="form-control">
                                        <option selected>Choose</option>
                                        <option value="0" ${OM.degreUrg=='0' ? 'selected' : ''}>Normal</option>
                                        <option value="1" ${OM.degreUrg=='1' ? 'selected' : ''}>Urgent</option>
                                        <%--<option></option>--%>
                                    </select>
                                </div>

                            </div>
                        </div>
                        <%--<div class="card-body col-md-12" style="background-color: white">--%>
                            <div class="card" style="padding: 10px;    ">
                                <label class="label_card">Acteurs </label>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label>Création</label>
                                        <select  name="actOrdre" class="form-control" readonly>
                                            <c:if test="${id_om.equals(0)}">
                                                <option value="${user.acteurId }" selected>${user.nom} ${user.prenom}</option>
                                            </c:if>
                                            <c:if test="${OM.actOrdre.acteurId!=null}">
                                                <option value="${OM.actOrdre.acteurId }" selected>${OM.actOrdre.nom} ${OM.actOrdre.prenom}</option>
                                            </c:if>
                                            <%--<option>...</option>--%>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>Réception </label>
                                        <select id="actReception" name="actReception" class="form-control">

                                            <option selected>Choose...</option>
                                            <c:forEach items="${acteur}" var="ed">
                                                <option value="${ed.acteurId }" ${ed.acteurId==OM.actReception.acteurId ? 'selected' : ''}>${ed.nom } ${ed.prenom }</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <label>Date Ordre </label>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <input  type="date" name="dateOrdre" value="${fn:substring(OM.dateOrdre, 0, 10)}" class="form-control datepicker"  >
                                    </div>

                                    <div class="form-group col-md-2">
                                        <label>Date Demande </label>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <%--<input  type="date" name="dateReception" value="${OM.dateReception}" class="form-control datepicker"  >--%>
                                        <input  type="date" name="dateReception" value="${fn:replace(OM.dateReception,' 00:00:00.0','')}" class="form-control datepicker"  >
                                    </div>

                                </div>
                            </div>
                            <div class="row justify-content-center sw">
                                <div class="col-5 toolbar">

                                    <button class="btn btn-success float-right" onclick="AddOM()"><i class="ml-2 fa fa-save"></i><spring:message code="label.Enregistrer"/></button>

                                </div>
                            </div>
                        </form>
                        <%--</div>--%>
                    </div>
                    <div class="tab-pane " id="div2">

                        <div class="card-body col-md-12" style="background-color: white" id="LigneOmListe">
                            <table class="table table-bordered">
                                <tr class="thead-dark">
                                    <th rowspan="2">N° Vhle</th>
                                    <th rowspan="2">Désignation</th>
                                    <th rowspan="2">N° Chassis</th>
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

                                <c:forEach items="${lOM}" var="ed">
                                    <tr id="tr_${ed.ligneOmId}">
                                        <td>${ed.art.numMoteur}</td>
                                        <td>${ed.art.obsDesig}</td>
                                        <td>${ed.art.numChassis}</td>
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
                                        <td>${ed.etatLigne==1?'Réserve':'Disponible'}</td>
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

                            </table>
                        </div>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#AddArticlesForm">
                            Ajoute Article.
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="AddArticlesForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 60px;">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel1">Ajoute des articles</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                    <div class="card" style="padding: 10px;    ">
                                        <form id="myForm_l_om">
                                            <label class="label_card">Articles </label>
                                            <input type="hidden" name="om" id="om" value="${OM.omId}">
                                            <div class="form-row">
                                                <div class="form-group col-md-3">
                                                    <label>N° Vhle</label>
                                                    <select id="art" name="art" class="form-control selectpicker"  data-live-search="true" onchange="selectvl()" >
                                                        <option selected>Choose...</option>
                                                        <c:forEach items="${art}" var="ed">
                                                            <option value="${ed.nNomencl }" id="vl-${ed.nNomencl}"
                                                                    data-vl-${ed.nNomencl}="${ed.obsDesig}"
                                                                    data-n_cha-${ed.nNomencl}="${ed.numChassis}"
                                                                    data-n_unt-${ed.nNomencl}="${ed.unitesCriblees.untId}"
                                                                    data-n_pos-${ed.nNomencl}="${ed.pos.posId}"
                                                                    data-n_mod-${ed.nNomencl}="${ed.modeleId}"
                                                            >${ed.obsDesig } </option>
                                                        </c:forEach>
                                                    </select>
                                                    <input type="hidden" id="modeleAeb" name="modeleAeb">
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label>Désignation </label>
                                                    <input type="text" class="form-control" id="desig">
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <label>N° Chassis  </label>
                                                    <input type="text" class="form-control"id="n_chassis">
                                                </div>


                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-3">
                                                    <label>unité Origine  </label>
                                                    <select id="untOrigine" name="untOrigine" class="form-control">
                                                        <option selected>Choose...</option>
                                                        <c:forEach items="${unt}" var="ed">
                                                            <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <label> Position  </label>
                                                    <%--<input type="text" class="form-control" id="posOrigine" name="posOrigine">--%>
                                                    <select id="posOrigine" name="posOrigine" class="form-control">
                                                        <option selected>Choose...</option>
                                                        <c:forEach items="${Pos}" var="ed">
                                                            <option value="${ed.posId }" >${ed.posAbrev } </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <label>unité Destinataire   </label>
                                                    <select id="untDest" name="untDest" class="form-control">
                                                        <option selected>Choose...</option>
                                                        <c:forEach items="${unt}" var="ed">
                                                            <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <label> Position  </label>
                                                    <select id="posDest" name="posDest" class="form-control">
                                                        <option selected>Choose...</option>
                                                        <c:forEach items="${Pos}" var="ed">
                                                            <option value="${ed.posId }" >${ed.posAbrev } </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-3">
                                                    <label>unité Élémentaire  </label>
                                                    <select id="untElementOrig" name="untElementOrig" class="form-control">
                                                        <option selected>Choose...</option>
                                                        <c:forEach items="${unt}" var="ed">
                                                            <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <label> unité Détachement  </label>
                                                    <select id="untDetachDest" name="untDetachDest" class="form-control">
                                                        <option selected>Choose...</option>
                                                        <c:forEach items="${unt}" var="ed">
                                                            <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                        </c:forEach>
                                                    </select>
                                                    <%--<input type="text" class="form-control" >--%>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <label>Détenteur  </label>
                                                    <select id="detenteurDest" name="detenteurDest" class="form-control">
                                                        <option selected>Choose...</option>
                                                        <c:forEach items="${detenteur}" var="ed">
                                                            <option value="${ed.detenteurId }" >${ed.nom } ${ed.prenom } </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <label> Etat  </label>
                                                    <select id="etatLigne" name="etatLigne" class="form-control">
                                                        <option selected>Choose...</option>
                                                        <%--<c:forEach items="${unt}" var="ed">--%>
                                                            <option value="1" >Réserve</option>
                                                            <option value="2" >Disponible</option>
                                                        <%--</c:forEach>--%>
                                                    </select>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                        <div class="row justify-content-center mb-4" style="margin:14px;">
                                            <div class="col-md-5">
                                                <button type="button" class="btn btn-success col-md-5 m-1" id="btnToParamètre" onclick="addLigneOm()"><spring:message code="label.Enregistrer"/></button>
                                                <button type="button"  class="btn btn-danger-2  col-md-5 m-1" id="close_form_cl" data-dismiss="modal">
                                                    <spring:message code="label.Annuler"/>
                                                </button>
                                                <%--<a type="button" class="btn btn-danger-2  col-md-5 m-1" href="#"  data-dismiss="modal" aria-label="Close"><span style="color: white"> <spring:message code="label.Annuler"/></span></a>--%>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                            </div>
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

    $.fn.serializeObject = function() {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function() {
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

            // url: "/api/param/addModeleAeb/0"+modeleId,
            url: "/OM/addOM",
            contentType: 'application/json; charset=utf-8',

            data: JSON.stringify(obj),

            success: function (response) {

                alert(response);
                goToLien_menu('/OM/formToAddOM/'+response,12);
                window.location.href="/OM/formToAddOM/"+response;
            },
            error: function (response) {

                alert('Erreur ajout non effectu�');

            }
        });


    }

    function addLigneOm() {
        var id =  $("#omId").val();
        $("#om").val(id);

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

            // url: "/api/param/addModeleAeb/0"+modeleId,
            url: "/OM/addLigneOm",
            contentType: 'application/json; charset=utf-8',

            data: JSON.stringify(obj),

            success: function (response) {
                $("#LigneOmListe").empty();
                $("#LigneOmListe").html(response);

                // $("#close_form_cl").click();
            },
            error: function (response) {

                alert('Erreur ajout non effectu�');

            }
        });


    }


</script>
