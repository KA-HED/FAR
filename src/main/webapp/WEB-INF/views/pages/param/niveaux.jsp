<jsp:include page="../../includes/tag.jsp"/>
<jsp:include page="../../includes/header.jsp"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>

<div class="col-12 from_add" style=" padding-left: 15px; float: none; margin: 15px;">


    <div class="col-12 from_add" id="frm_etatDoss"
         style="display: none; margin-top: 43px; padding-right: 20%; float: none;">
        
        <div class="row p-0 m-0 justify-content-center">
            <div class="col-xl-5 col-lg-7 mt-5 col-sm-12 mt-5 grid-margin">
                <div class="photo  hvr-buzz-out">
                    <i class="mdi icc mdi-folder-multiple menu-icon"></i>
                </div>
                <form id="Form_niveaux">
                <div class="card">
                    <div class="row justify-content-center">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 29%;" aria-valuenow="29"
                                 aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>

                        <div class="col-10 mt-4">

                            <h3 class="ml6 float-right mb-1">
                                                      <span class="text-wrapper">
                                                        <span class="letters"><span class="letters">Niveaux
                                                      </span>
                            </h3>
                            <div class="row p-0 m-0 mt-5">


                            </div>


                            <div class="row p-0">
                                <div class="col-12 mt-4">
                                    <div class="form-group">
                                        <label>Niveaux</label>
                                        <input type="text" id="niveaux_val" name="niveaux_val" value="${Niveaux.niveaux_val}" class="form-control">
                                    </div>
                                </div>


                                <div class="col-12">
                                    <div class="form-group" <%--dir= "rtl"--%>>
                                        <label>INDICE niveaux</label>
                                        <input type="hidden" id="niveauxId" name="niveauxId" value="${Niveaux.niveauxId}"
                                               class="form-control">

                                        <input type="number" id="iNDICE_niveaux" name="iNDICE_niveaux" value="${Niveaux.iNDICE_niveaux}" class="form-control">
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                    <div class="row  mb-4" style="margin:14px;">
                        <a class="btn btn-primary btn-block " onclick="addNiveaux()">Enregistrer </a>
                        <a class="btn btn-danger-2 text-white btn-block"
                           onclick="getFunctionParam('getParamNiveaux/0/40')">Annuler</a>

                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
    <!-- fin etat Dossier -->
    <div class="col-12 grid-margin z_tab" id="subtab_0">
        <div>
            <div class="row justify-content-center">

                <div class="col-4 pt-4 pb-2 mt-5 bg-light text-dark" id="zone_search"
                     style="text-align:center;display:none;">

                    <img class="n3VNCb text-center"
                         src="https://www.shareicon.net/data/512x512/2016/08/18/814342_suit_512x512.png" data-noaft="1"
                         jsname="HiaYvf" jsaction="load:XAeZkd;" style="width: 100px; height: 100px; margin: 0px;">
                    <div class="row p-4 justify-content-center">
                        <div class="col-8">
                            <div class="row p-0">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>rechercher</label>
                                        <input type="text" id="nom" value="${Niveaux.niveaux_val}" class="form-control">
                                    </div>
                                </div>


                                <div class="col-12">
                                    <div class="form-group">
                                        <label>rechercher</label>
                                        <input type="hidden" id="id_Niveaux" value="${Niveaux.niveauxId}"
                                               class="form-control">

                                        <input type="text" id="detail" value="${Niveaux.niveaux_val}" class="form-control">
                                    </div>
                                </div>

                            </div>
                            <div class="row p-0 justify-content-end">
                                <div class="col-12">
                                    <button class="btn btn-primary btn-block" onclick="frm_search('subtab_0')">
                                        rechercher</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 pr-0 pl-0">
                    <div class="row m-0">
                        <div class="col-3">
                            <h4 class="ml6">
                                      <span class="text-wrapper">
                                        <span class="letters">
                                            <span class="letters">Niveaux
                                            </span>
                                        </span>
                                      </span>
                            </h4>

                        </div>
                        <div class="col-9">
                            <a class="button text-white fr_btn" onclick="frm_table('subtab_0','frm_etatDoss')">
                                <span>NouvelleNiveaux </span></a>

                        </div>
                    </div>
                </div>

            </div>


            <div class="row justify-content-center">
                <div class="col-12">
                    <table id="example2" class="table tablee table-hover">
                        <thead>
                        <tr>

                            <th class="text-center">Niveaux</th>
                            <th class="text-center">INDICE Niveaux</th>
                            <th class="text-center">Action</th>


                        </tr>
                        </thead>
                        <tbody class="tbodyy">

                        <c:forEach items="${listF}" var="f">

                            <tr id="tr-${f.niveauxId}">
                                     <td>${f.niveaux_val}</td>
                                     <td>${f.iNDICE_niveaux}</td>
                                    <td class="text-center">
                                        <ul class="list-inline m-0">
                                            <li class="list-inline-item">
                                                <button onclick="updateNiveaux(${f.niveauxId})"
                                                        class="btn btn-outline-warning btn-sm rounded-circle tab_edit"
                                                        type="button" title="Editer" style="background-color: white">
                                                    <div class="icon_trash_1">
                                                        <span class="fas fa-pencil-alt" style="color: orange"></span>
                                                    </div>

                                                </button>
                                            </li>
                                            <li class="list-inline-item">
                                                <button onclick="delete_Niveaux(${f.niveauxId})"
                                                        class="btn btn-outline-danger btn-sm rounded-circle tab_trash"
                                                        type="button" title="Supprimer" style="background-color: white">
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

                    <c:choose>
                        <c:when test="${not empty listF}">
                            <div class="pagination pagination-lg justify-content-center mt-3" dir="ltr">
                                <c:if test="${(page)>0}">
                                    <c:set value="${page-1}" var="page_db"/>
                                    <c:set value="${totalPage-1}" var="page_LAST"/>
                                </c:if>
                                <c:if test="${(page)<=0}">
                                    <c:set value="0" var="page_db"/>
                                    <c:set value="0" var="page_LAST"/>
                                </c:if>

                                <a style="background-color: #2196f3     ;text-align: center;background-size: 100% 100%" onclick="getParamNiveaux(0)" class="pageStyle"><i class="mdi mdi-arrow-collapse-left m-0"></i></a>
                                <a  style="background-color: #2196f3   !important;" onclick="getParamNiveaux(${page_db})" class="pageStyle">&laquo;</a>

                                <c:set var="salary" value="${totalPage-page-1}"/>
                                <c:choose>
                                    <c:when test="${salary>3 }">
                                        <c:set var="toAdd" value="3"/>
                                    </c:when>
                                    <c:otherwise>
                                        <c:set var="toAdd" value="${totalPage-page-1}"/>
                                    </c:otherwise>
                                </c:choose>

                                <c:if test="${totalPage>0}">
                                    <c:forEach begin="${page}" end="${page+toAdd}" var="c">
                                        <a style="background-color: #2196f3   !important; ${page+toAdd}" onclick="getParamNiveaux(${c})"  ${c==number ? 'class=" pageStyle1 active "' : 'class=" pageStyle"'}>${c+1}</a>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${(page)>=(totalPage-1)}">
                                    <c:set value="${totalPage-1}" var="page_end"/>
                                </c:if>

                                <c:if test="${(page)<(totalPage-1)}">
                                    <c:set value="${page+1}" var="page_end"/>
                                </c:if>

                                <a style="background-color: #2196f3   !important;" onclick="getParamNiveaux(${page_end})" class="pageStyle">&raquo;</a>
                                <a style="background-color: #2196f3     ;text-align: center;background-size: 100% 100%" onclick="getParamNiveaux(${totalPage-1})" class="pageStyle"><i class="mdi mdi-arrow-collapse-right m-0"></i></a>

                            </div>
                        </c:when>
                    </c:choose>

                   </div>
            </div>


        </div>
    </div>
</div>


<script type="text/javascript">

    function addNiveaux() {

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

        var Niveaux = $("#Form_niveaux").serializeObject();
        var niveauxId = $("#niveauxId").val();


        $.ajax({
            type: "POST",

            url: "/api/addNiveaux/0"+niveauxId,
            contentType: 'application/json; charset=utf-8',

            data: JSON.stringify(Niveaux),

            success: function (response) {

                // $(".mpParam").html(response);
                getFunctionParam('getParamNiveaux/0/40')
            },
            error: function (response) {

                alert('Erreur ajout non effectu�');

            }
        });


    }


    /*  delete famille  begin */

    function delete_Niveaux(id) {
        Swal.fire({
            title: 'etesvousure',
            text: "si vous cliquez sur supprimer vous ne pouvez pas le recuperer",
            type: 'Attention',
            showCancelButton: true,
            confirmButtonColor: '#42ba96',
            cancelButtonColor: '#d33',
            confirmButtonText: 'supprimer',
            cancelButtonText: 'Annuler'
        }).then((result) => {
            if (result.value) {
            $.ajax({
                type: "POST",
                url: "/api/deleteNiveaux/" + id,
                data: {
                    "id": id
                },
                success: function (data) {
                    $("#tr-" + id).css("display", "none");
                },
                error: function (response) {
                    alert("error")
                }
            });
            Swal.fire(
                'Supprimer',
                'suppressionValider',
                'Succès',
            )
        }
    })


    }


    /*  delete famille  end */

    function checkCode(val) {
        $('#codeLabel').css("display", "none");
        $.ajax({
            type: "GET",
            url: "/checkCode",
            data: {
                'val': val
            },
            success: function (data) {
                /* alert()  */
                if (data == "oui") {
                    $('#codeLabel').css("display", "block");
                    $(".btnTo").prop("disabled", true);

                } else {
                    $(".btnTo").prop("disabled", false);
                }


            },
            error: function (response) {
                alert("error")
            }
        });

    }


    function updateNiveaux(id) {
        $.ajax({
            type: "GET",
            url: "/api/updateNiveaux/" + id,
            data: {},
            success: function (data) {
                $(".mpParam").html(data);
                $("#subtab_0").hide("slow");
                $("#frm_etatDoss").show("slow");
            },
            error: function (response) {
                alert("error")
            }
        });


    }

</script>
<jsp:include page="../../includes/footer.jsp"/>
