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
        <div class="col-md-8 mt-5 col-sm-12">
            <div class="card-body col-md-12" style="background-color: white">

                <ul class="nav nav-tabs nav-justified nav-inline navbar-primary-menu">
                    <li class="active"><a href="#div1" data-toggle="tab">Référence OM</a></li>
                    <li><a href="#div2" data-toggle="tab">Articles </a></li>

                </ul>
                <div class="tab-content" >
                    <div class="tab-pane active" id="div1">
                        <form id="myForm">
                        <div class="card" style="padding: 10px;    max-width: 1000px;">
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
                                    <input  type="date"  class="form-control datepicker"  name="dateOM" value="${OM.dateOM}">
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
                            <div class="card" style="padding: 10px;    max-width: 1000px;">
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
                                        <input  type="date"  class="form-control datepicker"  >
                                    </div>

                                    <div class="form-group col-md-2">
                                        <label>Date Demande </label>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <input  type="date"  class="form-control datepicker"  >
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

                        <div class="card-body col-md-12" style="background-color: white">
                            <table class="table table-bordered">
                                <tr>
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
                                <tr>
                                    <th >unité</th>
                                    <th>Position</th>
                                    <th>unité </th>
                                    <th>Position</th>
                                </tr>

                                <c:forEach items="${lOM}" var="ed">
                                    <tr>
                                        <td>${ed.art.numMoteur}</td>
                                        <td>${ed.art.obsDesig}</td>
                                        <td>${ed.art.numChassis}</td>
                                        <td>${ed.untDest.nomAbrege}</td>
                                        <td>${ed.untDetachDest}</td>
                                        <%--<td>3</td>--%>
                                        <%--<td>4</td>--%>
                                        <%--<td>5</td>--%>
                                        <td>6</td>
                                        <td>7</td>
                                        <td>8</td>
                                        <td>9</td>
                                        <td>10</td>
                                        <td>11</td>
                                        <td>
                                            <button class="btn btn-outline-success btn-sm rounded-circle tab_trash"
                                                    type="button" title="Enregistrer" style="background-color: white">
                                                <div class="icon_trash_1">
                                                    <span class="fas fa-save" style="color: #228b49"></span>
                                                </div>
                                            </button>
                                            <button class="btn btn-outline-danger btn-sm rounded-circle tab_trash"
                                                    type="button" title="Supprimer" style="background-color: white">
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
                                    <div class="card" style="padding: 10px;    max-width: 1000px;">
                                        <label class="label_card">Articles </label>
                                        <div class="form-row">
                                            <div class="form-group col-md-3">
                                                <label>N° Vhle</label>
                                                <select id="art" class="form-control">
                                                    <option selected>Choose...</option>
                                                    <c:forEach items="${art}" var="ed">
                                                        <option value="${ed.nNomencl }"  >${ed.obsDesig } </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Désignation </label>
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label>N° Chassis  </label>
                                                <input type="text" class="form-control" >
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
                                                <input type="text" class="form-control" >
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
                                                <input type="text" class="form-control" >
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
                                                <select id="untDetachOrig" name="untElementOrig" class="form-control">
                                                    <option selected>Choose...</option>
                                                    <c:forEach items="${unt}" var="ed">
                                                        <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                    </c:forEach>
                                                </select>
                                                <%--<input type="text" class="form-control" >--%>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label>Détenteur  </label>
                                                <select id="untDetachDest" name="untDetachDest" class="form-control">
                                                    <option selected>Choose...</option>
                                                    <c:forEach items="${unt}" var="ed">
                                                        <option value="${ed.untId }" >${ed.nomAbrege } </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label> Etat  </label>
                                                <select id="etatLigne" name="etatLigne" class="form-control">
                                                    <option selected>Choose...</option>
                                                    <%--<c:forEach items="${unt}" var="ed">--%>
                                                        <option value="1" > etat 1</option>
                                                        <option value="2" >etat 2 </option>
                                                    <%--</c:forEach>--%>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                        <div class="row justify-content-center mb-4" style="margin:14px;">
                                            <div class="col-md-5">
                                                <button type="button" class="btn btn-success col-md-5 m-1" id="btnToParamètre" onclick="addAgent_classe()"><spring:message code="label.Enregistrer"/></button>
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

<%--<div class="row p-0 m-0 justify-content-center">--%>
    <%--<div class="col-md-10 col-sm-12">--%>
        <%--<div class="card-body col-md-12" style="background-color: white">--%>
            <%--<table class="table table-bordered">--%>
                <%--<tr>--%>
                    <%--<th rowspan="2">N° Vhle</th>--%>
                    <%--<th rowspan="2">Désignation</th>--%>
                    <%--<th rowspan="2">N° Chassis</th>--%>
                    <%--<th colspan="2">Origine</th>--%>
                    <%--&lt;%&ndash;<th>4 </th>&ndash;%&gt;--%>
                    <%--<th colspan="2">Destinataire</th>--%>
                    <%--<th rowspan="2">unité Élémentaire</th>--%>
                    <%--<th rowspan="2">unité Détachement  </th>--%>
                    <%--<th rowspan="2">Détenteur</th>--%>
                    <%--<th rowspan="2">Etat</th>--%>
                    <%--<th rowspan="2">Action</th>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<th >unité</th>--%>
                    <%--<th>Position</th>--%>
                    <%--<th>unité </th>--%>
                    <%--<th>Position</th>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td>1</td>--%>
                    <%--<td>2</td>--%>
                    <%--<td>3</td>--%>
                    <%--<td>4</td>--%>
                    <%--<td>5</td>--%>
                    <%--<td>6</td>--%>
                    <%--<td>7</td>--%>
                    <%--<td>8</td>--%>
                    <%--<td>9</td>--%>
                    <%--<td>10</td>--%>
                    <%--<td>11</td>--%>
                    <%--<td>--%>
                        <%--<button class="btn btn-outline-success btn-sm rounded-circle tab_trash"--%>
                                <%--type="button" title="Enregistrer" style="background-color: white">--%>
                            <%--<div class="icon_trash_1">--%>
                                <%--<span class="fas fa-save" style="color: #228b49"></span>--%>
                            <%--</div>--%>
                        <%--</button>--%>
                        <%--<button class="btn btn-outline-danger btn-sm rounded-circle tab_trash"--%>
                                 <%--type="button" data-toggle="tooltip" data-placement="top"--%>
                                 <%--title="Supprimer" style="background-color: white">--%>
                        <%--<div class="icon_trash_1">--%>
                            <%--<span class="fas fa-trash" style="color: red"></span>--%>
                        <%--</div>--%>
                    <%--</button></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td>1</td>--%>
                    <%--<td>2</td>--%>
                    <%--<td>3</td>--%>
                    <%--<td>4</td>--%>
                    <%--<td>5</td>--%>
                    <%--<td>6</td>--%>
                    <%--<td>7</td>--%>
                    <%--<td>8</td>--%>
                    <%--<td>9</td>--%>
                    <%--<td>10</td>--%>
                    <%--<td>11</td>--%>
                    <%--<td>--%>
                        <%--<button class="btn btn-outline-success btn-sm rounded-circle tab_trash"--%>
                                <%--type="button" title="Enregistrer" style="background-color: white">--%>
                            <%--<div class="icon_trash_1">--%>
                                <%--<span class="fas fa-save" style="color: #228b49"></span>--%>
                            <%--</div>--%>
                        <%--</button>--%>
                        <%--<button class="btn btn-outline-danger btn-sm rounded-circle tab_trash"--%>
                                 <%--type="button" data-toggle="tooltip" data-placement="top"--%>
                                 <%--title="Supprimer" style="background-color: white">--%>
                        <%--<div class="icon_trash_1">--%>
                            <%--<span class="fas fa-trash" style="color: red"></span>--%>
                        <%--</div>--%>
                    <%--</button></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                            <%--<td>1</td>--%>
                            <%--<td>2</td>--%>
                            <%--<td>3</td>--%>
                            <%--<td>4</td>--%>
                            <%--<td>5</td>--%>
                            <%--<td>6</td>--%>
                            <%--<td>7</td>--%>
                            <%--<td>8</td>--%>
                            <%--<td>9</td>--%>
                            <%--<td>10</td>--%>
                            <%--<td>11</td>--%>
                    <%--<td>--%>
                        <%--<button class="btn btn-outline-success btn-sm rounded-circle tab_trash"--%>
                                 <%--type="button" title="Enregistrer" style="background-color: white">--%>
                        <%--<div class="icon_trash_1">--%>
                            <%--<span class="fas fa-save" style="color: #228b49"></span>--%>
                        <%--</div>--%>
                    <%--</button>--%>
                        <%--<button class="btn btn-outline-danger btn-sm rounded-circle tab_trash"--%>
                                 <%--type="button" title="Supprimer" style="background-color: white">--%>
                        <%--<div class="icon_trash_1">--%>
                            <%--<span class="fas fa-trash" style="color: red"></span>--%>
                        <%--</div>--%>
                    <%--</button>--%>
                    <%--</td>--%>
                        <%--</tr>--%>

            <%--</table>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<div class="row p-0 m-0 justify-content-center">
    <div class="col-md-8 col-sm-12">

    </div>
</div>

<jsp:include page="../../includes/footer.jsp"/>

<script>

    function goToList() {
        window.location.href="/api/param/listeCategorie_materiel"
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

                // $(".mpParam").html(response);
                goToLien_menu('/OM/listeOM',12)
            },
            error: function (response) {

                alert('Erreur ajout non effectu�');

            }
        });


    }


</script>
