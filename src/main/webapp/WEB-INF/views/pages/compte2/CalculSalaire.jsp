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
<fmt:parseNumber var="i" type="number" value="0"/>

<div class="container-fluid" >
    <div class="row justify-content-center card mx-2">
        <div class="card-body col-md-12" style="background-color: white">

                <div class="table-responsive">
                    <div class="row justify-content-start ">
                        <div class="col-lg-12 pr-0">

                        </div>
                        <div class="col-lg-12 pr-0">
                            <div class="row m-0 pt-5">
                                <div class="col-md-3 col-sm-12 ">
                                    <h4 class="ml4">
                                        <span>Calcul du salaire </span>
                                    </h4>
                                </div>
                                <div class="col-md-3 col-sm-12 form-group text-left" >

                                    <label>Anneé</label>
                                    <input  value="2023" required type="text" id="annee" name="annee"  class="form-control" >
                                    <small style="color: #d32f2f; font-style: italic" id="spnom"></small>
                                </div>
                                <div class="col-md-3 col-sm-12 ">
                                    <div class="form-group text-left">
                                        <label>Mois</label>

                                        <select id="mois" class="custom-select  bg-light"  style="height: 40px" >
                                            <option value="01">Janvier</option>
                                            <option value="02">Février</option>
                                            <option value="03">Mars</option>
                                            <option value="04">Avril</option>
                                            <option value="05">Mai</option>
                                            <option value="06">Juin</option>
                                            <option value="07">Juillet</option>
                                            <option value="08">Août</option>
                                            <option value="09">Septembre</option>
                                            <option value="10">Octobre</option>
                                            <option value="11">Novembre</option>
                                            <option value="12">Décembre</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3 col-sm-12 form-group text-left" >

                                    <button type="button" class="btn  btn-sms4" id="btnTo" onclick="calculer_salaire()" style="margin-top: 25px; padding: 10;">Calculer le salaire</button>
                                    <small style="color: #d32f2f; font-style: italic" id="spnom"></small>
                                    <%--<a class="button" href="#" onclick="calculer_salaire()">Calculer le salaire</a>--%>
                                </div>


                            </div>
                            <div id="div_etat_imp" class=" pt-5 hidden" style="  text-align: center;">
                                <h3 id="H3_titre"> salaire du mois </h3>
                                <div class="row m-10 pt-5" >


                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">

                                    </div>
                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">
                                        <div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1">
                                            <div class="col-4 pb-3 text-info">
                                                <span class="f-40 fa fa-file-alt" style="color:#d59d32;opacity: .4;"></span>
                                            </div>

                                            <h3 >Etat Des S.G</h3>

                                            <div class="col-12  p-0 m-0">
                                                <div class="row justify-content-center border-top border-secondary">
                                                    <div class="col-md-5 btn-sm-12 mt-3 p-0">
                                                        <a  onclick="opent_alculer_salaire('/api/Bulletin_de_paie/')" class="btn  btn-sms4" target="_blank"> <span class="fa fa-print"></span> Imprimer</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">
                                        <div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1">
                                            <div class="col-4 pb-3 text-info">
                                                <span class="f-40 fa fa-file-alt" style="color:#d59d32;opacity: .4;"></span>
                                            </div>

                                            <h3>l'état de MGPAP</h3>

                                            <div class="col-12  p-0 m-0">
                                                <div class="row justify-content-center border-top border-secondary">
                                                    <div class="col-md-5 btn-sm-12 mt-3 p-0">
                                                        <a  onclick="opent_alculer_salaire('/api/etat_MGPAP/')" class="btn  btn-sms4" target="_blank"> <span class="fa fa-print"></span> Imprimer</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">

                                    </div>

                                </div>

                                <div class="row m-10 pt-5">

                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">

                                    </div>
                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">
                                        <div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1">

                                            <div class="col-4 pb-3 text-info">
                                                <span class="f-40 fa fa-file-alt" style="color:#d59d32;opacity: .4;"></span>
                                            </div>

                                            <h3 >l'état   de l'IR</h3>

                                            <div class="col-12  p-0 m-0">
                                                <div class="row justify-content-center border-top border-secondary">
                                                    <div class="col-md-5 btn-sm-12 mt-3 p-0">
                                                        <a  onclick="opent_alculer_salaire('/api/etat_IR/')" class="btn  btn-sms4" target="_blank"> <span class="fa fa-print"></span> Imprimer</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">
                                        <div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1">
                                            <div class="col-4 pb-3 text-info">
                                                <span class="f-40 fa fa-file-alt" style="color:#d59d32;opacity: .4;"></span>
                                            </div>

                                            <h3>l'état de Rcar.Sal</h3>

                                            <div class="col-12  p-0 m-0">
                                                <div class="row justify-content-center border-top border-secondary">
                                                    <div class="col-md-5 btn-sm-12 mt-3 p-0">
                                                        <a  onclick="opent_alculer_salaire('/api/etat_RcarSal/')" class="btn  btn-sms4" target="_blank"> <span class="fa fa-print"></span> Imprimer</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">

                                    </div>

                                </div>

                                <div class="row m-10 pt-5">

                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">

                                    </div>
                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">
                                        <div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1">

                                            <div class="col-4 pb-3 text-info">
                                                <span class="f-40 fa fa-file-alt" style="color:#d59d32;opacity: .4;"></span>
                                            </div>

                                            <h3 >l'état de l'AMO</h3>

                                            <div class="col-12  p-0 m-0">
                                                <div class="row justify-content-center border-top border-secondary">
                                                    <div class="col-md-5 btn-sm-12 mt-3 p-0">
                                                        <a  onclick="opent_alculer_salaire('/api/etat_AMO/')" class="btn  btn-sms4" target="_blank"> <span class="fa fa-print"></span> Imprimer</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">
                                        <div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1">
                                            <div class="col-4 pb-3 text-info">
                                                <span class="f-40 fa fa-file-alt" style="color:#d59d32;opacity: .4;"></span>
                                            </div>

                                            <h3>l'état de Rcar.P</h3>

                                            <div class="col-12  p-0 m-0">
                                                <div class="row justify-content-center border-top border-secondary">
                                                    <div class="col-md-5 btn-sm-12 mt-3 p-0">
                                                        <a  onclick="opent_alculer_salaire('/api/etat_RcarPa/')" class="btn  btn-sms4" target="_blank"> <span class="fa fa-print"></span> Imprimer</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">

                                    </div>

                                </div>

                                <div class="row m-10 pt-5">

                                    <div class="col-lg-4 col-md-6 col-ms-12 pl-10 pr-1 ">

                                    </div>
                                    <div class="col-lg-4 col-md-6 col-ms-12 pl-10 pr-1 ">
                                        <div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1">

                                            <div class="col-6 pb-3 text-info">
                                                <span class="f-40 fa fa-file-alt" style="color:#d59d32;opacity: .4;"></span>
                                            </div>

                                            <h3 >Etat CNOPS (AMO) S/P</h3>

                                            <div class="col-12  p-0 m-0">
                                                <div class="row justify-content-center border-top border-secondary">
                                                    <div class="col-md-5 btn-sm-12 mt-3 p-0">
                                                        <a  onclick="opent_alculer_salaire('/api/etat_AMO_SP/')" class="btn  btn-sms4" target="_blank"> <span class="fa fa-print"></span> Imprimer</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%--<div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">--%>
                                        <%--<div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1">--%>
                                            <%--<div class="col-4 pb-3 text-info">--%>
                                                <%--<span class="f-40 fa fa-file-alt" style="color:#d59d32;opacity: .4;"></span>--%>
                                            <%--</div>--%>

                                            <%--<h3>l'état de Rcar.P</h3>--%>

                                            <%--<div class="col-12  p-0 m-0">--%>
                                                <%--<div class="row justify-content-center border-top border-secondary">--%>
                                                    <%--<div class="col-md-5 btn-sm-12 mt-3 p-0">--%>
                                                        <%--<a  onclick="opent_alculer_salaire('/api/etat_RcarPa/')" class="btn  btn-sms4" target="_blank"> <span class="fa fa-print"></span> Imprimer</a>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>

                                    <div class="col-lg-3 col-md-6 col-ms-12 pl-10 pr-1 ">

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
<script type="text/javascript">

    function activepetitionnaire(id) {
        $.ajax({
            url: "/api/activepetitionnaire",
            type: "POST",

            data: {
                "id": id
            },


            success: function (response) {

               // swal("lademandeabieneteaffecte")
                $("input[name=inputR]").removeAttr("disabled")
                //$("#input"+cpt).attr("disabled","true")
            },
            error: function (response) {

                //swal("leagentpossededejauneaffectation");
                alert("error")
            }
        });
    }

    function getParamAgent(vals) {

        window.location.href = '/api/getAgentCalculSalaire/' + vals + '/40';

    }

    function getParamAgentP(vals, type) {
        $.ajax({
            type: "GET",
            url: '/api/getAccountByProfilP/' + vals + '/40/' + type,
            data: {},
            success: function (data) {
                $(".container-fluid").html(data)
                document.getElementsByClassName('navbar')[1].style.display = 'none';
                $(".container-fluid").css('margin-top', '90px')
                if (($('.tbodyy').find('tr').length) === 0) {
                    $("#h1").removeClass("d-none");
                }
            },
            error: function (response) {
                alert("Erreur")
            }
        });
    }

    function calculer_salaire() {
        var annee =  $("#annee").val();
        var mois =  $("#mois").val();
        $.ajax({
            type: "GET",
            url: '/api/Calcul_du_salaire_all_agnet/'+annee+'/'+mois,
            data: {},
            success: function (data) {
                $("#div_etat_imp").removeClass("hidden");
                var txt = "Les états de salaire au titre du mois de "+$( "#mois option:selected" ).text()+" "+annee;
                $("#H3_titre").text(txt);
            },
            error: function (response) {
                alert("Veuillez vérifier l'état des agents ou leur paramétrage.");
            }
        });
    }

    function opent_alculer_salaire(url) {
        var annee =  $("#annee").val();
        var mois =  $("#mois").val();
        url=url+annee+"/"+mois+"/"+$( "#mois option:selected" ).text();
        window.open(url, "_blank");

    }


</script>
