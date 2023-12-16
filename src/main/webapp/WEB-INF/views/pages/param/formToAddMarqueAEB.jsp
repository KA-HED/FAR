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
.active{
    background-color: #7bfcb0 !important;
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
                                        <strong class="profil text-white">Marque <i class="ml-2 fa fa-list-alt"></i></strong><br>
                                    </div>
                                </div>
                                <div class="row mt-5">
                                    <form id="myForm">
                                        <div class="row" style="padding-right: 30px;padding-left: 30px;">
                                        <div class="col-md-2 col-sm-2 col-lg-2" >
                                            <label>DESIGNATION</label>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-lg-4" >
                                            <div class="form-group">
                                                <input class="form-control" type="hidden" name="marqueId" id="marqueId" value="${MarqueAEB.marqueId}">
                                                <input class="form-control" type="text" name="desiMarque" id="desiMarque" value="${MarqueAEB.desiMarque}" required>
                                            </div>
                                        </div>
                                            <div class="col-md-2 col-sm-2 col-lg-2" >
                                                <label>ABREVIATION</label>
                                            </div>
                                        <div class="col-md-4 col-sm-4 col-lg-4" >
                                            <div class="form-group">
                                                <%--<label>ABREVIATION </label>--%>
                                                <%--<textarea class="form-control" type="text" name="abrCat" id="abrCat" rows="3">${MarqueAEB.abrCat}</textarea>--%>
                                                <input class="form-control" type="text" name="abrMarque" id="abrMarque" value="${MarqueAEB.abrMarque}" required>
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

                                <%--<div class="card" style="padding: 10px;    max-width: 1000px;">--%>
                                    <%--<label class="label_card"> Type  </label>--%>
                                    <%--<div class="form-row">--%>
                                        <%--<div class="form-group col-md-9">--%>
                                            <%--<label>Type</label>--%>
                                            <%--<select id="inputState" class="form-control">--%>
                                                <%--<c:forEach items="${TypeAEB}" var="ar">--%>
                                                    <%--<option value="${ar.typeId}">${ar.desigType}</option>--%>
                                                <%--</c:forEach>--%>
                                            <%--</select>--%>
                                        <%--</div>--%>

                                    <%--</div>--%>
                                    <%--<div class="row justify-content-center sw">--%>
                                        <%--<div class="col-5 toolbar">--%>
                                            <%--&lt;%&ndash;<button class="btn sw-btn-next btn-danger-2 " onclick="goToList()"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i><spring:message code="label.Retour"/></button>&ndash;%&gt;--%>
                                            <%--<button class="btn btn-success float-right" onclick="save()"><i class="ml-2 fa fa-plus"></i>Ajouter Sous-Catégorie</button>--%>

                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%----%>
                                <div class="card" style="padding: 10px;    max-width: 1000px;">
                                    <label class="label_card">Type </label>
                                    <div id="ta" class="container__inner content__description" style="padding-bottom: 10px;   min-height: 201px;">
                                        <%--<input class="form-control" id="myInput" type="text" placeholder="Search..">--%>
                                        <form id="Form_type">

                                        <table class="table table-bordered table-checkable  tablee table-hover">
                                            <thead>
                                            <tr>
                                                <%--<th class="text-center"></th>--%>
                                                <th class="text-center">DESIGNATION</th>
                                                <th class="text-center">ABREVIATION</th>
                                                <th class="text-center"><spring:message code="label.Action"/></th>
                                            </tr>
                                            </thead>
                                            <tbody id="myTable">
                                                <tr>
                                                    <td>
                                                        <input type="hidden" name="marque" id="marque" value="${MarqueAEB.marqueId}">
                                                        <input type="text" class="form-control" name="desigType" id="desigType" >
                                                    </td>
                                                    <td><input type="text" class="form-control" name="abrType" id="abrType" ></td>
                                                    <td><button class="btn" onclick="addType()"
                                                                type="button" title="Enregistrer">
                                                        <div class="icon_trash_1">
                                                            <span class="fas fa-save" style="color: #49ff6d"></span>
                                                        </div>
                                                    </button>
                                                    </td>
                                                </tr>

                                            </tbody>
                                            <tbody id="LigneType">
                                            <c:forEach items="${TypeAEBMarqueAEB}" var="f">
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
                                        </table>
                                        </form>
                                    </div>
                                </div>

                                <div class="card" style="padding: 10px;    max-width: 1000px;">
                                    <label class="label_card">Versions </label>
                                    <div id="ta1" class="container__inner content__description" style="padding-bottom: 10px;   min-height: 201px;">
                                        <%--<input class="form-control" id="myInput" type="text" placeholder="Search..">--%>


                                        <form id="Form_Versions">

                                        <table class="table table-bordered table-checkable  tablee table-hover">
                                            <thead>
                                            <tr>
                                                <%--<th class="text-center"></th>--%>
                                                <th class="text-center">DESIGNATION</th>
                                                <th class="text-center">ABREVIATION</th>
                                                <th class="text-center"><spring:message code="label.Action"/></th>
                                            </tr>
                                            </thead>
                                            <tbody id="myTableVersions1">
                                            </tbody>
                                            <tbody id="myTableVersions">
                                                <tr>
                                                    <td>
                                                        <input type="hidden" name="typeId" id="typeId" >
                                                        <input type="text" class="form-control" name="desigVersion" id="desigVersion" >
                                                    </td>
                                                    <td><input type="text" class="form-control" name="abrVersion" id="abrVersion" ></td>
                                                    <td><button class="btn" onclick="addVersions()"
                                                                type="button" title="Enregistrer">
                                                        <div class="icon_trash_1">
                                                            <span class="fas fa-save" style="color: #49ff6d"></span>
                                                        </div>
                                                    </button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <tbody id="LigneVersions">
                                            <c:forEach items="${VersionAebMarqueAEB}" var="f">
                                                <tr id="tr-Versions${f.versionId}">
                                                    <td>${f.desigVersion}</td>
                                                    <td>${f.abrVersion}</td>
                                                    <td class="text-center">
                                                        <ul class="list-inline m-0">
                                                            <li class="list-inline-item">
                                                                <button onclick="deleteVersions(${f.versionId})"
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
        window.location.href="/api/param/listeMarqueAEB"
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
        var id=$("#marqueId").val();
        var se = $("#myForm").serializeObject();

            $.ajax({
                url: '/api/param/addMarqueAEB/', // url where to submit the request
                type : "POST", // type of action POST || GET
                contentType : 'application/json; charset=utf-8',
                data : JSON.stringify(se),

                success : function(result) {

                    window.location = "/api/param/listeMarqueAEB";



                },
                error: function(xhr, resp, text) {
                    console.log(xhr, resp, text);
                }
            })

    }

   function addType(){
       if ($("#marque").val() == '') {
           AddMarque2()
       } else {
           var id = $("#marqueId").val();
           $("#marque").val(id);
           var obj = $("#Form_type").serializeObject();
           $.ajax({
               type: "POST",
               url: "/api/param/addTypeAEB",
               contentType: 'application/json; charset=utf-8',
               data: JSON.stringify(obj),
               success: function (response) {
                   $("#LigneType").empty();
                   $("#LigneType").html(response);
               },
               error: function (response) {
                   alert('Erreur ajout non effectué4444444');
               }
           });
       }


   }
    function deleteTypeAEB(id) {
        // var trid= '#tr_'+id;
        $("#typeId").val(id);

        $.ajax({
            type : "POST",
            url :"/api/param/deleteTypeAEB",
            data:{
                "id":id
            },
            success : function(data) {

                $("#tr_type"+id).css("display","none");
            },
            error : function(response) {
                alert("Impossible de supprimer cet élément")
            }
        });
    }

   function addVersions(){

           var obj = $("#Form_Versions").serializeObject();
           $.ajax({
               type: "POST",
               url: "/api/param/addVersionAeb",
               contentType: 'application/json; charset=utf-8',
               data: JSON.stringify(obj),
               success: function (response) {
                   $("#LigneVersions").empty();
                   $("#LigneVersions").html(response);
               },
               error: function (response) {
                   alert('Erreur ajout non effectué4444444');
               }
           });

   }
    function deleteVersions(id) {
        // var trid= '#tr_'+id;

        $.ajax({
            type : "POST",
            url :"/api/param/deleteVersionAeb",
            data:{
                "id":id
            },
            success : function(data) {

                $("#tr-Versions"+id).css("display","none");
            },
            error : function(response) {
                alert("Impossible de supprimer cet élément")
            }
        });
    }
    function showVersions2(id) {
        // var trid= '#tr_'+id;

        $.ajax({
            type : "POST",
            url :"/api/param/show_Versions2",
            data:{
                "id":id
            },
            success: function (response) {
                $("#typeId").val(id);
                $("#LigneVersions").empty();
                $("#LigneVersions").html(response);
            },
            error : function(response) {
                alert("error")
            }
        });
    }
    function showtest(id) {
        $.ajax({
            type: "POST",
            url: "/api/param/show_Versions",
            data:{
                "id":id
            },
            success: function (response) {
                $("#LigneVersions").empty();
                $("#LigneVersions").html(response);
            },
            error: function (response) {
                alert('Erreur ajout non effectué4444444');
            }
        });
    }


</script>
