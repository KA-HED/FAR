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
                    <label class="label_card">OM </label>
                    <div class="form-row">
                        <div class="form-group col-md-2">
                            <label>Référence N°</label>
                        </div>
                        <div class="form-group col-md-3">
                            <input type="text" class="form-control" value="${OM_changement_classification.refOM_changement_classification}">
                        </div>
                        <div class="form-group col-md-2">
                            <label>DU</label>
                        </div>
                        <div class="form-group col-md-2">
                            <input  type="date"  class="form-control datepicker"  >
                        </div>
                    </div>

                </div>
                <div class="card mt-3" style="padding: 10px;    max-width: 1000px;">
                    <label class="label_card">Classification </label>
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label>No Minéralogique </label>
                            <select id="inputState" class="form-control">
                                <option selected>Choose...</option>
                                <option>...</option>
                            </select>
                        </div>
                        <div class="form-group col-md-9">
                            <label>Désignation </label>
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label> Catégorie  </label>
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label> S/Catégorie  </label>
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Marque </label>

                            <input type="text" class="form-control" >
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label>  Type </label>
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>  version </label>
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Particularité </label>

                            <input type="text" class="form-control" >
                        </div>
                    </div>
                </div>
                <div class="card mt-3" style="padding: 10px;    max-width: 1000px;">
                    <label class="label_card">Renseignements véhicule  </label>
                    <div class="form-row">
                        <div class="form-group col-md-2">
                            <label>Référence N°</label>
                        </div>
                        <div class="form-group col-md-3">
                            <input type="text" class="form-control" value="${OM_changement_classification.refOM_changement_classification}">
                        </div>
                        <div class="form-group col-md-2">
                            <label>DU</label>
                        </div>
                        <div class="form-group col-md-2">
                            <input  type="date"  class="form-control datepicker"  >
                        </div>
                    </div>

                </div>
                <div class="card mt-3" style="padding: 10px;    max-width: 1000px;">
                    <label class="label_card">Nouvelle Classification </label>
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label>No Minéralogique </label>
                            <select id="inputState" class="form-control">
                                <option selected>Choose...</option>
                                <option>...</option>
                            </select>
                        </div>
                        <div class="form-group col-md-9">
                            <label>Désignation </label>
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label> Catégorie  </label>
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label> S/Catégorie  </label>
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Marque </label>

                            <input type="text" class="form-control" >
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label>  Type </label>
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>  version </label>
                            <input type="text" class="form-control" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Particularité </label>

                            <input type="text" class="form-control" >
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>

<div class="row p-0 m-0 justify-content-center">
    <div class="col-md-8 col-sm-12">
        <div class="card-body col-md-12" style="background-color: white">
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
