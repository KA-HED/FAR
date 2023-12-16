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

<div class="col-12 from_add"  style="margin: 60px 0px 20px 0px;">
    <div class="row p-0 m-0 justify-content-center">
        <div class="col-md-8 mt-5 col-sm-12 grid-margin">
            <div class="row pl-3 pr-3 mt-4" >
                <div class="container-fluid" >
                    <div class="row justify-content-center card mx-2">
                        <div class="card-body col-md-12" style="background-color: white">



                                    <ul class="nav nav-tabs nav-justified nav-inline navbar-primary-menu">
                                        <li class="active"><a href="#div1" data-toggle="tab">Sous-Catégorie du matériel</a></li>
                                        <li><a href="#div3" data-toggle="tab">Classifications Textuelles</a></li>
                                        <li><a href="#div4" data-toggle="tab">Classifications Datatives</a></li>
                                        <li><a href="#div5" data-toggle="tab">Classifications Numériques</a></li>
                                    </ul>
                                    <div class="tab-content" >
                                        <div class="tab-pane active" id="div1">
                                            <div class="" style="height: 70px; display: flex; justify-content: center;background-color: #184a00bd     ">
                                                <div class="col-md-12 my-4 text-center">
                                                    <strong class="profil text-white">Sous-Catégorie du matériel <i class="ml-2 fa fa-list-alt"></i></strong><br>
                                                </div>
                                            </div>
                                            <div class="row mt-5">
                                                <form id="myForm">
                                                    <div class="col-md-12 col-sm-12 col-lg-12" >
                                                        <div class="form-group">
                                                            <label>DESIGNATION</label>
                                                            <input class="form-control" type="hidden" name="sCatId" id="sCatId" value="${SCategorieAEB.sCatId}">
                                                            <input class="form-control" type="text" name="desigSCat" id="desigSCat" value="${SCategorieAEB.desigSCat}" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>ABREVIATION </label>
                                                            <%--<textarea class="form-control" type="text" name="abrSCat" id="abrSCat" rows="3">${SCategorieAEB.abrSCat}</textarea>--%>
                                                            <input class="form-control" type="text" name="abrSCat" id="abrSCat" value="${SCategorieAEB.abrSCat}" required>
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
                                            <div class="col-md-1 col-sm-12 col-lg-1" ></div>

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
                                                        <td>Paramètre Textuelles 2</td>
                                                        <td style="text-align: center;"><input  type="radio" name="" checked></td>
                                                        <td style="text-align: center;"><input  type="radio" name="" ></td>
                                                    </tr><tr>
                                                        <td>Paramètre Textuelles 2</td>
                                                        <td style="text-align: center;"><input  type="radio" name="" checked></td>
                                                        <td style="text-align: center;"><input  type="radio" name="" ></td>
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

                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#AddParametre_T_Form">
                                                Ajoute Paramètre.
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="AddParametre_T_Form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 60px;">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel1">Ajoutez Classification Textuelle.</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">

                                                            <form class="col-12 from_add" id="classeForm" name="classeForm" >
                                                                <div class="row justify-content-center">
                                                                    <div class="progress">
                                                                        <div class="progress-bar" role="progressbar" style="width: 29%; background-color: seagreen" aria-valuenow="29" aria-valuemin="0" aria-valuemax="100">

                                                                        </div>
                                                                    </div>

                                                                    <div class="col-10 mt-4" >

                                                                        <div class="row p-0 m-0 mt-5">
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <div class="form-group">

                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row">
                                                                            <div class="col-md-8 col-sm-8">
                                                                                <div class="form-group text-left">
                                                                                    <label >Paramètre</label>
                                                                                    <input class="form-control" type="text" name="desigSCat" id="desigSCat" value="${SCategorieAEB.desigSCat}" required>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-2 col-sm-2">
                                                                                <div class="form-group text-left">
                                                                                    <label >Général</label>
                                                                                    <input class="form-control" type="radio" name="desigSCat" id="General" value="${SCategorieAEB.desigSCat}" checked>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-2 col-sm-2">
                                                                                <div class="form-group text-left">
                                                                                    <label >Particulier</label>
                                                                                    <input class="form-control" type="radio" name="desigSCat" id="Particulier" value="${SCategorieAEB.desigSCat}" >
                                                                                </div>
                                                                            </div>



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
                                                            </form>

                                                        </div>
                                                    </div>
                                                </div>
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

                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#AddParametre_D_Form">
                                                Ajoute Paramètre.
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="AddParametre_D_Form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 60px;">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="AddParametre_D_FormLabel1">Ajoutez Classification Datative.</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">

                                                            <form class="col-12 from_add" id="classeForm" name="classeForm" >
                                                                <div class="row justify-content-center">
                                                                    <div class="progress">
                                                                        <div class="progress-bar" role="progressbar" style="width: 29%; background-color: seagreen" aria-valuenow="29" aria-valuemin="0" aria-valuemax="100">

                                                                        </div>
                                                                    </div>

                                                                    <div class="col-10 mt-4" >

                                                                        <div class="row p-0 m-0 mt-5">
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <div class="form-group">

                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row">
                                                                            <div class="col-md-8 col-sm-8">
                                                                                <div class="form-group text-left">
                                                                                    <label >Paramètre</label>
                                                                                    <input class="form-control" type="text" name="desigSCat" id="desigSCat" value="${SCategorieAEB.desigSCat}" required>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-2 col-sm-2">
                                                                                <div class="form-group text-left">
                                                                                    <label >Général</label>
                                                                                    <input class="form-control" type="radio" name="desigSCat" id="General" value="${SCategorieAEB.desigSCat}" checked>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-2 col-sm-2">
                                                                                <div class="form-group text-left">
                                                                                    <label >Particulier</label>
                                                                                    <input class="form-control" type="radio" name="desigSCat" id="Particulier" value="${SCategorieAEB.desigSCat}" >
                                                                                </div>
                                                                            </div>



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
                                                            </form>

                                                        </div>
                                                    </div>
                                                </div>
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
                                                    <%--<c:forEach items="${parametre_Numériques}" var="f">--%>

                                                    <%--<tr id="tr-${f.agentParamètreId}" style="background-color: ${f.etat=="0"?"#c9d4dd7a":"#ecffde" };">--%>
                                                    <%--<td>${f.classe.nom}</td>--%>
                                                    <%--<td>${f.datedebut}</td>--%>
                                                    <%--<td>${f.datefin}</td>--%>

                                                    <%--</tr>--%>
                                                    <%--</c:forEach>--%>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#AddParametre_N_Form">
                                                Ajoute Paramètre.
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="AddParametre_N_Form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 60px;">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel1">Ajoutez Classification Numérique.</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">

                                                            <form class="col-12 from_add" id="classeForm" name="classeForm" >
                                                                <div class="row justify-content-center">
                                                                    <div class="progress">
                                                                        <div class="progress-bar" role="progressbar" style="width: 29%; background-color: seagreen" aria-valuenow="29" aria-valuemin="0" aria-valuemax="100">

                                                                        </div>
                                                                    </div>

                                                                    <div class="col-10 mt-4" >

                                                                        <div class="row p-0 m-0 mt-5">
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <div class="form-group">

                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row">
                                                                            <div class="col-md-8 col-sm-8">
                                                                                <div class="form-group text-left">
                                                                                    <label >Paramètre</label>
                                                                                    <input class="form-control" type="text" name="desigSCat" id="desigSCat" value="${SCategorieAEB.desigSCat}" required>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-2 col-sm-2">
                                                                                <div class="form-group text-left">
                                                                                    <label >Général</label>
                                                                                    <input class="form-control" type="radio" name="desigSCat" id="General" value="${SCategorieAEB.desigSCat}" checked>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-2 col-sm-2">
                                                                                <div class="form-group text-left">
                                                                                    <label >Particulier</label>
                                                                                    <input class="form-control" type="radio" name="desigSCat" id="Particulier" value="${SCategorieAEB.desigSCat}" >
                                                                                </div>
                                                                            </div>



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
                                                            </form>

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

<jsp:include page="../../includes/footer.jsp"/>

<script>

    function goToList() {
        window.location.href="/api/param/listeSCategorieAEB"
    }

    function save(){
        var id=$("#sCatId").val();
        var se = $("#myForm").serializeObject();

            $.ajax({
                url: '/api/param/addSCategorieAEB/', // url where to submit the request
                type : "POST", // type of action POST || GET
                contentType : 'application/json; charset=utf-8',
                data : JSON.stringify(se),

                success : function(result) {

                    window.location = "/api/param/listeSCategorieAEB";



                },
                error: function(xhr, resp, text) {
                    console.log(xhr, resp, text);
                }
            })

    }


</script>
