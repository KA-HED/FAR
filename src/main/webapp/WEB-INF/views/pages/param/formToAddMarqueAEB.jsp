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
                                        <div class="col-md-12 col-sm-12 col-lg-12" >
                                            <div class="form-group">
                                                <label>DESIGNATION</label>
                                                <input class="form-control" type="hidden" name="catId" id="catId" value="${MarqueAEB.marqueId}">
                                                <input class="form-control" type="text" name="desigCat" id="desigCat" value="${MarqueAEB.desiMarque}" required>
                                            </div>
                                            <div class="form-group">
                                                <label>ABREVIATION </label>
                                                <%--<textarea class="form-control" type="text" name="abrCat" id="abrCat" rows="3">${MarqueAEB.abrCat}</textarea>--%>
                                                <input class="form-control" type="text" name="abrCat" id="abrCat" value="${MarqueAEB.abrMarque}" required>
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
                                    <label class="label_card"> Sous-Catégorie  </label>
                                    <div class="form-row">
                                        <div class="form-group col-md-9">
                                            <label>Sous-Catégorie</label>
                                            <select id="inputState" class="form-control">
                                                <option selected>Choose...</option>
                                                <option>...</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="row justify-content-center sw">
                                        <div class="col-5 toolbar">
                                            <%--<button class="btn sw-btn-next btn-danger-2 " onclick="goToList()"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i><spring:message code="label.Retour"/></button>--%>
                                            <button class="btn btn-success float-right" onclick="save()"><i class="ml-2 fa fa-plus"></i>Ajouter Sous-Catégorie</button>

                                        </div>
                                    </div>
                                </div>
                                <div class="card" style="padding: 10px;    max-width: 1000px;">
                                    <label class="label_card">liste Sous-Catégorie  </label>
                                    <div id="ta" class="container__inner content__description" style="padding-bottom: 10px;   min-height: 201px;">
                                        <input class="form-control" id="myInput" type="text" placeholder="Search..">


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
                                            <c:forEach items="${listF}" var="f">

                                                <tr id="tr-${f.sCatId}">
                                                    <td>${f.desigSCat}</td>
                                                    <td>${f.abrSCat}</td>
                                                    <td class="text-center">
                                                        <ul class="list-inline m-0">
                                                            <li class="list-inline-item text-center">
                                                                <a href="/api/param/formToAddCategorie_materiel/${f.sCatId}"
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
                                                                <button onclick="deleteCompte(${f.sCatId})"
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
                url: '/api/param/addMarqueAEB/'+id, // url where to submit the request
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
