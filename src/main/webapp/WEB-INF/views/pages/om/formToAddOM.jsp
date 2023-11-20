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
                <div class="card" style="padding: 10px;    max-width: 1000px;">
                    <label class="label_card">Référence </label>
                    <div class="form-row">
                        <div class="form-group col-md-2">
                            <label>TEXTE N°</label>
                        </div>
                        <div class="form-group col-md-3">
                            <input type="text" class="form-control" value="${OM.refOM}">
                        </div>
                        <div class="form-group col-md-2">
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-2">
                            <select id="inputState" class="form-control">
                                <option selected>Choose...</option>
                                <option value="OM" ${OM.refOM=='OM' ? 'selected' : ''}> OM</option>
                                <option value="OM1" ${OM.refOM=='OM1' ? 'selected' : ''}> OM1</option>
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
                            <input  type="date"  class="form-control datepicker"  >
                        </div>
                        <div class="form-group col-md-2">
                            <label>Type OM </label>
                        </div>
                        <div class="form-group col-md-2">
                            <select id="typeOM" name="typeOM" class="form-control">
                                <option selected>Choose...</option>

                                <option value="OM" ${OM.typeOM=='OM' ? 'selected' : ''}> OM</option>
                                <option value="OM1" ${OM.typeOM=='OM1' ? 'selected' : ''}> OM1</option>
                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <label>Degré d’urgence</label>
                        </div>
                        <div class="form-group col-md-2">
                            <select id="inputState" class="form-control">
                                <option selected>Choose...</option>
                                <option>...</option>
                            </select>
                        </div>

                    </div>
                </div>
                <div class="card" style="padding: 10px;    max-width: 1000px;">
                    <label class="label_card">Articles </label>
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label>N° Vhle</label>
                            <select id="inputState" class="form-control">
                                <option selected>Choose...</option>
                                <option>...</option>
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
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-3">
                            <label> Position  </label>
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-3">
                            <label>unité Destinataire   </label>
                            <select id="inputState" class="form-control">
                                <option selected>Choose...</option>
                                <option>...</option>
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label> Position  </label>
                            <input type="text" class="form-control" >
                        </div>
                    </div>
                    <div class="row justify-content-center sw">
                        <div class="col-5 toolbar">
                            <%--<button class="btn sw-btn-next btn-danger-2 " onclick="goToList()"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i><spring:message code="label.Retour"/></button>--%>
                            <button class="btn btn-success float-right" onclick="save()"><i class="ml-2 fa fa-plus"></i>Ajouter Vhle</button>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<div class="row p-0 m-0 justify-content-center">
    <div class="col-md-10 col-sm-12">
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
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                    <td>5</td>
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
                                 type="button" data-toggle="tooltip" data-placement="top"
                                 title="Supprimer" style="background-color: white">
                        <div class="icon_trash_1">
                            <span class="fas fa-trash" style="color: red"></span>
                        </div>
                    </button></td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                    <td>5</td>
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
                                 type="button" data-toggle="tooltip" data-placement="top"
                                 title="Supprimer" style="background-color: white">
                        <div class="icon_trash_1">
                            <span class="fas fa-trash" style="color: red"></span>
                        </div>
                    </button></td>
                </tr>
                <tr>
                            <td>1</td>
                            <td>2</td>
                            <td>3</td>
                            <td>4</td>
                            <td>5</td>
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

            </table>
        </div>
    </div>
</div>
<div class="row p-0 m-0 justify-content-center">
    <div class="col-md-8 col-sm-12">
        <div class="card-body col-md-12" style="background-color: white">
            <div class="card" style="padding: 10px;    max-width: 1000px;">
                <label class="label_card">Acteurs </label>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Création</label>
                        <select id="inputState" class="form-control">
                            <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Réception </label>
                        <select id="inputState" class="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
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

                    <button class="btn btn-success float-right" onclick="save()"><i class="ml-2 fa fa-save"></i><spring:message code="label.Enregistrer"/></button>

                </div>
            </div>
        </div>
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

    function save(){
        var id=$("#catId").val();
        var se = $("#myForm").serializeObject();

            $.ajax({
                url: '/OM/addOM/'+id, // url where to submit the request
                type : "POST", // type of action POST || GET
                contentType : 'application/json; charset=utf-8',
                data : JSON.stringify(se),

                success : function(result) {

                    window.location = "/api/param/listeCategorie_materiel";



                },
                error: function(xhr, resp, text) {
                    console.log(xhr, resp, text);
                }
            })

    }


</script>
