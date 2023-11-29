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
        <div class="col-md-12 mt-5 col-sm-12 grid-margin">
            <div class="row pl-3 pr-3 mt-4" >
                <div class="container-fluid" >
                    <div class="row justify-content-center card mx-2">
                        <div class="card-body col-md-12" style="background-color: white">

                            <%--<div class="col-md-6 card p-4 col-sm-12 col-lg-6">--%>
                                <div class="" style="height: 70px; display: flex; justify-content: center;background-color: #184a00bd     ">
                                    <div class="col-md-12 my-4 text-center">
                                        <strong class="profil text-white">Classification du matériel<i class="ml-2 fa fa-list-alt"></i></strong><br>
                                    </div>
                                </div>

                                    <form id="myForm">
                                        <input type="hidden" id="nNomencl" name="nNomencl" value="${Art.nNomencl}">
                                        <div class="row mt-5">
                                        <div class="col-md-2 col-sm-2 col-lg-1" >
                                                <label>Catégorie</label>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-lg-4" onchange="S_Cat()" >
                                            <select id="cat" class="form-control" name="categorieAEB">
                                                <option selected>Choose...</option>
                                                <c:forEach items="${CategorieAEB}" var="ed">
                                                    <option value="${ed.catId }">${ed.desigCat }</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-lg-1" >
                                                <label>Image </label>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-lg-" >
                                                <input class="form-control" type="file" name="abrCat" id="abrCat" value="" required>
                                        </div>

                                        </div>
                                        <div class="row ">
                                            <div class="col-md-2 col-sm-2 col-lg-1" >
                                                    <label>S/Catégorie</label>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-lg-4" >
                                                <select id="id_sCategorieAEB" name="sCategorieAEB" class="form-control">
                                                    <option selected>Choose...</option>
                                                    <c:forEach items="${SCategorieAEB}" var="ed">
                                                        <option value="${ed.sCatId }">${ed.desigSCat }</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row ">
                                            <div class="col-md-2 col-sm-2 col-lg-1" >
                                                    <label>Marque</label>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-lg-4" >
                                                <select id="Marque" class="form-control" name="marqueAEB">
                                                    <option selected>Choose...</option>
                                                    <c:forEach items="${MarqueAEB}" var="ed">
                                                        <option value="${ed.marqueId }" ${ed.marqueId==Art.marqueAEB.marqueId ? 'selected' : ''}>${ed.desiMarque }</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row ">
                                            <div class="col-md-2 col-sm-2 col-lg-1" >
                                                    <label> Type</label>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-lg-4" >
                                                <select id="type" class="form-control" name="typeAEB">
                                                    <option selected>Choose...</option>
                                                    <c:forEach items="${TypeAEB}" var="ed">
                                                        <option value="${ed.typeId }">${ed.desigType }</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row ">
                                            <div class="col-md-2 col-sm-2 col-lg-1" >
                                                    <label>Version </label>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-lg-4" >
                                                <select id="Version" class="form-control" name="versionAeb">
                                                    <option selected>Choose...</option>
                                                    <c:forEach items="${VersionAeb}" var="ed">
                                                        <option value="${ed.versionId }">${ed.desigVersion }</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row ">
                                            <div class="col-md-2 col-sm-2 col-lg-1" >
                                                    <label>Désignation </label>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-lg-4" >
                                                <input class="form-control" type="text" name="obsDesig" id="obsDesig"  required>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-lg-2" >
                                                    <label>Pays </label>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-lg-3" >
                                                <select id="Pays" class="form-control">
                                                    <option selected>Choose...</option>
                                                    <c:forEach items="${SCategorieAEB}" var="ed">
                                                        <option value="${ed.sCatId }">${ed.desigSCat }</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row ">
                                            <div class="col-md-2 col-sm-2 col-lg-1" >
                                                    <label>Nomenclature OTAN(NSN) </label>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-lg-4" >
                                                <input class="form-control" type="text" name="obsDesig" id="Otan"  required>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-lg-2" >
                                                    <label>Prix Unutaire </label>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-lg-3" >

                                                <input class="form-control" type="number" name="obsDesig" id="prix"  required>
                                            </div>
                                        </div>
                                        <div class="row ">
                                            <div class="col-md-2 col-sm-2 col-lg-1" >
                                                    <label>Nomenclature  </label>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-lg-4" >
                                                <input class="form-control" type="text" name="obsDesig" id="obsDesig"  required>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-lg-2" >
                                                    <label>Type Assurance </label>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-lg-3" >
                                                <select id="Pays" class="form-control">
                                                    <option selected>Choose...</option>
                                                    <c:forEach items="${SCategorieAEB}" var="ed">
                                                        <option value="${ed.sCatId }">${ed.desigSCat }</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row ">
                                            <div class="col-md-2 col-sm-2 col-lg-1" >
                                                    <label>Particularité </label>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-lg-4" >
                                                <input class="form-control" type="text" name="obsDesig" id="obsDesig"  required>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-lg-2" >
                                                    <label>Combustible </label>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-lg-3" >
                                                <select id="Pays" class="form-control">
                                                    <option selected>Choose...</option>
                                                    <c:forEach items="${SCategorieAEB}" var="ed">
                                                        <option value="${ed.sCatId }">${ed.desigSCat }</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                    </form>


                                <div class="row justify-content-center sw">
                                    <div class="col-5 toolbar">
                                        <button class="btn sw-btn-next btn-danger-2 " onclick="goToList()"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i><spring:message code="label.Retour"/></button>
                                        <button class="btn btn-success float-right" onclick="addobj()"><i class="ml-2 fa fa-save"></i><spring:message code="label.Enregistrer"/></button>

                                    </div>
                                </div>



                                <ul class="nav nav-tabs nav-justified nav-inline navbar-primary-menu">
                                    <li class="active"><a href="#div1" data-toggle="tab">Classifications OTAN</a></li>
                                    <li><a href="#div2" data-toggle="tab"> Segments B-C</a></li>
                                    <li><a href="#div3" data-toggle="tab">Classifications Textuelles</a></li>
                                    <li><a href="#div4" data-toggle="tab">Classifications Datatives</a></li>
                                    <li><a href="#div5" data-toggle="tab">Classifications Numériques</a></li>
                                    <li><a href="#div6" data-toggle="tab">Fiche UC </a></li>
                                    <li><a href="#div7" data-toggle="tab">Caractéristique consommation</a></li>
                                </ul>
                                <div class="tab-content" >
                                    <div class="tab-pane active" id="div1">
                                        Classifications OTAN
                                    </div>
                                    <div class="tab-pane" id="div2">
                                        Segments B-C
                                    </div>

                                    <div class="tab-pane" id="div3">
                                        <div id="Div_paramT">
                                            <table style="margin-bottom:12px;" class="table tablee table-hover">

                                                <tr>
                                                    <th class="text-center"> Paramètre </th>
                                                    <th class="text-center"> Général </th>
                                                    <th class="text-center"> Particulier </th>


                                                </tr>

                                                <tbody class="tbodyy table-bordered">
                                                <tr>
                                                    <td>Paramètre Textuelles 1</td>
                                                    <td><input class="form-control" type="radio" name="" checked></td>
                                                    <td><input class="form-control" type="radio" name="" ></td>
                                                </tr>
                                                <tr>
                                                    <td>Paramètre Textuelles 2</td>
                                                    <td><input class="form-control" type="radio" name="" checked></td>
                                                    <td><input class="form-control" type="radio" name="" ></td>
                                                </tr>
                                                <tr>
                                                    <td>Paramètre Textuelles 3</td>
                                                    <td><input class="form-control" type="radio" name="" ></td>
                                                    <td><input class="form-control" type="radio" name="" checked></td>
                                                </tr>
                                                <%--<c:forEach items="${parametre_Textuelles}" var="f">--%>

                                                <%--<tr id="tr-${f.agentParamètreId}" style="background-color: ${f.etat=="0"?"#c9d4dd7a":"#ecffde" };">--%>
                                                <%--<td>${f.classe.nom}</td>--%>
                                                <%--<td>${f.datedebut}</td>--%>
                                                <%--<td>${f.datefin}</td>--%>

                                                <%--</tr>--%>
                                                <%--</c:forEach>--%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="div4">
                                        <div id="Div_paramD">
                                            <table style="margin-bottom:12px;" class="table tablee table-hover">

                                                <tr>
                                                    <th class="text-center"> Paramètre </th>
                                                    <th class="text-center"> Général </th>
                                                    <th class="text-center"> Particulier </th>


                                                </tr>

                                                <tbody class="tbodyy table-bordered">
                                                <tr>
                                                    <td>Paramètre Datatives 1</td>
                                                    <td><input class="form-control" type="radio" name="" checked></td>
                                                    <td><input class="form-control" type="radio" name="" ></td>
                                                </tr>
                                                <tr>
                                                    <td>Paramètre Datatives 2</td>
                                                    <td><input class="form-control" type="radio" name="" checked></td>
                                                    <td><input class="form-control" type="radio" name="" ></td>
                                                </tr>
                                                <tr>
                                                    <td>Paramètre Datatives 3</td>
                                                    <td><input class="form-control" type="radio" name="" ></td>
                                                    <td><input class="form-control" type="radio" name="" checked></td>
                                                </tr>
                                                <%--<c:forEach items="${parametre_Datatives}" var="f">--%>

                                                <%--<tr id="tr-${f.agentParamètreId}" style="background-color: ${f.etat=="0"?"#c9d4dd7a":"#ecffde" };">--%>
                                                <%--<td>${f.classe.nom}</td>--%>
                                                <%--<td>${f.datedebut}</td>--%>
                                                <%--<td>${f.datefin}</td>--%>

                                                <%--</tr>--%>
                                                <%--</c:forEach>--%>
                                                </tbody>
                                            </table>
                                        </div>


                                    </div>

                                    <div class="tab-pane" id="div5">
                                        <div id="Div_paramN">
                                            <table style="margin-bottom:12px;" class="table tablee table-hover">

                                                <tr>
                                                    <th class="text-center"> Paramètre </th>
                                                    <th class="text-center"> Général </th>
                                                    <th class="text-center"> Particulier </th>


                                                </tr>

                                                <tbody class="tbodyy table-bordered">
                                                <tr>
                                                    <td>Paramètre Numériques 1</td>
                                                    <td><input class="form-control" type="radio" name="" checked></td>
                                                    <td><input class="form-control" type="radio" name="" ></td>
                                                </tr>
                                                <tr>
                                                    <td>Paramètre Numériques 2</td>
                                                    <td><input class="form-control" type="radio" name="" checked></td>
                                                    <td><input class="form-control" type="radio" name="" ></td>
                                                </tr>
                                                <tr>
                                                    <td>Paramètre Numériques 3</td>
                                                    <td><input class="form-control" type="radio" name="" ></td>
                                                    <td><input class="form-control" type="radio" name="" checked></td>
                                                </tr>

                                                </tbody>
                                            </table>
                                        </div>


                                    </div>

                                    <div class="tab-pane " id="div6">
                                        Fiche UC
                                    </div>

                                    <div class="tab-pane " id="div7">
                                        Caractéristique consommation
                                    </div>

                                </div>
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


    function S_Cat(){
var vals=$("#cat").val();
        $.ajax({
            type : "GET",
            url :"/api/param/getsCategorieAEBbyCat/"+vals,
            data : {

            },
            success : function(response) {
                $("#id_sCategorieAEB").empty();
                $("#id_sCategorieAEB").html(response);
                $("#id_sCategorieAEB").trigger("change");

            },
            error : function() {
                alert("Failed :( !!!!!!!")
            }
        });


    }

    function goToList() {
        window.location.href="/api/param/listeArt"
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
                url: '/api/param/addArt/'+id, // url where to submit the request
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

    function addobj() {

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
        var nNomencl = $("#nNomencl").val();


        $.ajax({
            type: "POST",

            // url: "/api/param/addArt/0"+nNomencl,
            url: "/api/param/addArt",
            contentType: 'application/json; charset=utf-8',

            data: JSON.stringify(obj),

            success: function (response) {

                // $(".mpParam").html(response);
                getFunctionParam('api/param/listeArt')
            },
            error: function (response) {

                alert('Erreur ajout non effectu�');

            }
        });


    }


</script>
