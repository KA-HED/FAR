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


<%--<div class="col-12"  style="margin: 60px 0px 0px 0px;">--%>
    <div class="row p-0 m-0 justify-content-center" style="margin: 60px 0px 0px 0px !important;">
        <div class="col-md-8 mt-5 col-sm-12">
            <div class="card-body col-md-12" style="background-color: white">
                <div class="card" style="padding: 10px;    max-width: 1000px;">
                    <label class="label_card">Référence </label>
                    <div class="form-row">
                        <div class="form-group col-md-2">
                            <label>Unité </label>
                        </div>
                        <div class="form-group col-md-12">
                            <select id="inputState" class="form-control">
                                <option selected>Choose...</option>
                                <option value="Unité 1" ${TedAeb.unitesCriblees.untId==1 ? 'selected' : ''}> Unité 1</option>
                                <option value="Unité 2" ${TedAeb.unitesCriblees.untId==2 ? 'selected' : ''}> Unité 2</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="card" style="padding: 10px;    max-width: 1000px;">
                    <label class="label_card">saisir TED </label>
                    <div class="form-row">
                        <div class="form-group col-md-9">
                            <label>Désignation (Catégorie + Sous-Catégorie)</label>
                            <select id="inputState" class="form-control">
                                <option selected>Choose...</option>
                                <option>...</option>
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label> Qte TED  </label>
                            <input type="number" class="form-control" >
                        </div>
                    </div>
                    <div class="row justify-content-center sw">
                        <div class="col-5 toolbar">
                            <%--<button class="btn sw-btn-next btn-danger-2 " onclick="goToList()"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i><spring:message code="label.Retour"/></button>--%>
                            <button class="btn btn-success float-right" onclick="save()"><i class="ml-2 fa fa-plus"></i>Ajouter Qte TED </button>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
<%--</div>--%>

<div class="row p-0 m-0 justify-content-center">
    <div class="col-md-8 col-sm-12">
        <div class="card-body col-md-12" style="background-color: white">
            <div class="card" style="padding: 10px;    max-width: 1000px;">
            <table class="table table-bordered">
                <tr>

                    <th >Désignation (Catégorie + Sous-Catégorie)</th>
                    <th >Qte TED</th>
                    <th >Action</th>
                </tr>

                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>
                        <button class="btn btn-outline-success btn-sm rounded-circle tab_trash"
                                type="button" title="Enregistrer" style="background-color: white">
                            <div class="icon_trash_1">
                                <span class="fas fa-save" style="color: #228b49"></span>
                            </div>
                        </button>
                        <button class="btn"
                                 type="button" data-toggle="tooltip" data-placement="top"
                                 title="Supprimer">
                        <div class="icon_trash_1">
                            <span class="fas fa-trash" style="color: red"></span>
                        </div>
                    </button></td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>
                        <button class="btn btn-outline-success btn-sm rounded-circle tab_trash"
                                type="button" title="Enregistrer" style="background-color: white">
                            <div class="icon_trash_1">
                                <span class="fas fa-save" style="color: #228b49"></span>
                            </div>
                        </button>
                        <button class="btn"
                                 type="button" data-toggle="tooltip" data-placement="top"
                                 title="Supprimer">
                        <div class="icon_trash_1">
                            <span class="fas fa-trash" style="color: red"></span>
                        </div>
                    </button></td>
                </tr>
                <tr>
                            <td>1</td>
                            <td>2</td>
                    <td>
                        <button class="btn btn-outline-success btn-sm rounded-circle tab_trash"
                                 type="button" title="Enregistrer" style="background-color: white">
                        <div class="icon_trash_1">
                            <span class="fas fa-save" style="color: #228b49"></span>
                        </div>
                    </button>
                        <button class="btn"
                                 type="button" title="Supprimer">
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
</div>
<div class="row p-0 m-0 justify-content-center">
    <div class="col-md-8 col-sm-12">
        <div class="card-body col-md-12" style="background-color: white">
            <div class="card" style="padding: 10px;    max-width: 1000px;">
                <label class="label_card">Acteurs </label>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Créé par  </label>
                        <select id="inputState" class="form-control">
                            <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Modifié par  </label>
                        <select id="inputState" class="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label>Date création    </label>
                    </div>
                    <div class="form-group col-md-4">
                        <input  type="date"  class="form-control datepicker"  >
                    </div>

                    <div class="form-group col-md-2">
                        <label>Date modification </label>
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
                url: '/TedAeb/addTedAeb/'+id, // url where to submit the request
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
