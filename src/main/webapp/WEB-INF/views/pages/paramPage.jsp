
<jsp:include page="../includes/tag.jsp" />
<jsp:include page="../includes/header.jsp" />
<jsp:include page="../menu/menu_verticale.jsp" />




<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/assets/js/swwtAlert2.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/swwtAlert2.css">


<style>
    .mpParam{
        padding: 0 !important;
        border:none !important;
    }
    .from_add{
        margin: 0 !important;
        padding: 0 !important;
    }

    .from_add > .row.p-0.m-0.justify-content-center > .col-md-4.col-sm-12.grid-margin{
        margin-top: 40px;
    }
</style>
 <div class="container-fluid" style="${pageContext.response.locale=='ar'?'text-align:right;':'text-align:left;'};margin-top:180px;">

     <div class="row mt-3" dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}">
         <div class="col-xl-2 col-lg-3 col-md-3 col-sm-12">
             <div class="nav flex-column nav-pills bg-white" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                 <a onclick="getFunctionParam('getParamRegion/0/40')" class="nav-link active" id="v-pills-region-tab" data-toggle="pill" role="tab" aria-controls="v-pills-home" aria-selected="true"><spring:message code="label.Region"/></a>
                 <%--<a onclick="getFunctionParam('getParamComite')" class="nav-link" id="v-pills-comite-tab" data-toggle="pill" role="tab" aria-controls="v-pills-profile" aria-selected="false"><spring:message code="label.Membresdecomite"/> </a>--%>
                 <%--<a onclick="getFunctionParam('getParamCode/0/40')" class="nav-link" id="v-pills-code-tab" data-toggle="pill"  role="tab" aria-controls="v-pills-messages" aria-selected="false"><spring:message code="label.Code"/></a>--%>
                 <%--<a onclick="getFunctionParam('getParamSecteur')" class="nav-link" id="v-pills-secteur-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Secteur"/></a>--%>
                 <a onclick="getFunctionParam('getParamPoste')" class="nav-link" id="v-pills-poste-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Poste"/></a>
                 <%--<a onclick="getFunctionParam('getParamCommission')" class="nav-link" id="v-pills-poste-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Commission"/></a>--%>
                 <a onclick="getFunctionParam('getParamPrefecture/0/40')" class="nav-link" id="v-pills-prefecture-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Prefecture"/></a>
                 <a onclick="getFunctionParam('getParamCommune/0/40')" class="nav-link" id="v-pills-commune-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Commune"/></a>
                 <a onclick="getFunctionParam('getParamClasse/0/40')" class="nav-link" id="v-pills-commune-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false">Classe</a>
                 <a onclick="getFunctionParam('getParamPosition/0/40')" class="nav-link" id="v-pills-commune-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false">Position</a>
                 <a onclick="getFunctionParam('getParamNiveaux/0/40')" class="nav-link" id="v-pills-commune-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false">Niveaux</a>
                 <%--<a onclick="getFunctionParam('getParamCategorie')" class="nav-link" id="v-pills-Categorie-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Categorie"/></a>--%>
                 <%--<a onclick="getFunctionParam('getParamDoc/0/40')" class="nav-link" id="v-pills-Doc_autorisation-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Documentparautorisation"/></a>--%>
                 <%--<a onclick="getFunctionParam('getParamZonne')" class="nav-link" id="v-pills-Zone_Franche-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.ZonneFranche"/></a>--%>
                 <%--<a onclick="getFunctionParam('getParampays/0/40')" class="nav-link" id="v-pills-Pays-tab" data-toggle="pill"  role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Pays"/></a>--%>
                 <%--<a onclick="getFunctionParam('getParamTransporteur/0/40')" class="nav-link" id="v-pills-Transportateur-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Transporteur"/></a>--%>
                 <%--<a onclick="getFunctionParam('getParamMoyenTransport/0/40')" class="nav-link" id="v-pills-Moyen_Transport-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.MoyendeTransport"/></a>--%>
                 <%-- <a onclick="getFunctionParam('getParamLieuElimination')" class="nav-link" id="v-pills-Lieu_Elimination-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Lieudelimination"/></a>
                  <%--&ndash;%&gt;<a onclick="getFunctionParam('getParamNatureActivite')" class="nav-link" id="v-pills-Nature_activité-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.NatureActivite"/></a>--%>
                 <%--<a onclick="getFunctionParam('getParamStatutProjet/0/40')" class="nav-link" id="v-pills-Statut-Projet-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.StatutduProjet"/></a>--%>
                 <%--<a onclick="getFunctionParam('getParamRenouvellement/0/40')" class="nav-link" id="v-pills-Renouvellement-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.renouvellement"/></a>--%>
                 <%--<a onclick="getFunctionParam('getDocument')" class="nav-link" id="v-pills-document-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.Document"/></a>--%>
                 <%--<a onclick="getFunctionParam('getParamInstallation/0/40')" class="nav-link" id="v-pills-Installation-tab" data-toggle="pill" role="tab" aria-controls="v-pills-settings" aria-selected="false"><spring:message code="label.InstallationAutorise"/></a>--%>
             </div>
         </div>
         <div class="col-xl-10 col-lg-9 col-md-9 col-sm-12">
             <div class="tab-content mpParam" id="v-pills-tabContent"></div>
        </div>



 <script type="text/javascript">

$(document).ready(function() {
   $('.dropdown-toggle').dropdown();
   $(".select2").select2();


   $(".tab_trash").on({
       mouseenter: function() {
         $(this).parent().find(".icon_trash_1").addClass('d-none');
         $(this).parent().find(".icon_trash_2").removeClass('d-none');

       },
       mouseleave: function() {
         $(this).parent().find(".icon_trash_2").addClass('d-none');
         $(this).parent().find(".icon_trash_1").removeClass('d-none');

       }
   });



 });
function frm_search(id){
     if($("#"+id+" #zone_search:visible").length!=0)
       $("#"+id+" #zone_search:visible").hide('slow');
     else
       $("#"+id+" #zone_search").show('slow');
   }
function traitement_(id){
       $(".from_add").hide();
       $(".z_tab").hide();
       $(".flip-card-front").css({'background':'#fff',"color":"black"});
       $('h6.card-title2').css('color', 'black');

         if($("#subtab_"+id+":visible").length!=0){
           $("#subtab_"+id+":visible").hide('slow');
           $('div.flip-card-front:eq('+id+')').css('background-color', '#fff');
           $('div.flip-card-front:eq('+id+')').css('color', 'black');
           $('h6.card-title2:eq('+id+')').css('color', 'black');
           $('h6.card-title2:eq('+id+')').css('font-weight', '500');
         }
         else {
           for (var iter = 0; iter < 22; iter++) {
               if (iter != id) {
                 $("#subtab_"+id).hide('slow');
               }
           }
           $("#subtab_"+id).show('slow');
           $('div.flip-card-front:eq('+id+')').css('background-color', ' #d59d32');
           $('div.flip-card-front:eq('+id+')').css('color', '#fff');
           $('h6.card-title2:eq('+id+')').css('color', '#fff');

         }
       }
function frm_table(id_tab,id_form){
 /*'subtab_0','frm_etatDoss'*/
$("#"+id_tab).hide("slow");
$("#"+id_form).show("slow");
}
function delete_tr(val){
 swal({
    title: '<spring:message code="label.etesvousure"/>',
    text: "<spring:message code="label.sivouscliquezsursupprimervousnepouvezpaslerecuperer"/>",
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#00695c',
    cancelButtonColor: '#d33',
    confirmButtonText: 'supprimer!',
    cancelButtonText: "Annuler",
  }, function (isConfirm) {
      if (isConfirm) {
          swal("Supprimer!", "L'élément a bien été supprimé", "success");
          //tableProfils.row($(btn).parents('tr')).remove().draw(false);
          $(val).parents("tr:first").remove();
      } else {
          swal("Annuler!", "L'élément n'a pas été supprimé", "error");
      }
  });
}
</script>
<script src="${pageContext.request.contextPath}/assets/js/select2.min.js" ></script>
<script type="text/javascript">

function getParamf(vals){

	getFunctionParam('getParamRegion/'+vals+'/40');


}
function getParamP(vals){
    getFunctionParam('getParampays/'+vals+'/40');
}
function getParamPre(vals){
    getFunctionParam('getParamPrefecture/'+vals+'/40');
}
function getParamCommune(vals){
    getFunctionParam('getParamCommune/'+vals+'/40');
}

function getParamCommission(vals){
    getFunctionParam('getParamCommission/'+vals+'/40');
}

function getParamInstallation(vals){
    getFunctionParam('getParamInstallation/'+vals+'/40');
}
function getParamT(vals){
    getFunctionParam('getParamTransporteur/'+vals+'/40');
}
function getParamMoyen(vals){
    getFunctionParam('getParamMoyenTransport/'+vals+'/40');
}
$(document).ready(function (){
        $(".select2").select2();
    })
function addRegion(){

	var id=$("#id").val();
    var nom_fr=$("#nom_fr").val();
    var nom_ar=$("#nom_ar").val();
    var prefecture=$("#prefecture").val();
    if(nom_fr==""){
        document.getElementById('spnom').innerHTML="Choissir Un Nom";
    }
    if(prefecture==""){
        document.getElementById('spprefecture').innerHTML="Entrez Une Préfecture";
    }
    else {
        var fournisseur = {

            "id": id,
            "nom_fr": nom_fr,
            "nom_ar": nom_ar,
        }
        $.ajax({
            type: "POST",

            url: "/api/postParamRegion/" + prefecture,
            contentType: 'application/json; charset=utf-8',

            data: JSON.stringify(fournisseur),

            success: function (response) {
            	getFunctionParam('getParamRegion/0/40');
                $(".mpParam").html(response);
            },
            error: function (response) {

                alert('Erreur ajout non effectué');

            }
        });

    }
}
$(document).ready(function(){
        $.ajax({
            type : "GET",
            url :"getParamRegion/0/40",
            success : function(data) {
                $(".mpParam").html(data, function() {
                });
            },
            error : function(response) {
                alert("error")
            }
        });
})
</script>
<jsp:include page="../includes/footer.jsp" />










