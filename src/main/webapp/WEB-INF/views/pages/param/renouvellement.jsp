<jsp:include page="../../includes/tag.jsp" />
<jsp:include page="../../includes/header.jsp" />
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<c:if test="${pageContext.response.locale=='ar' }">
    <style>
        .button {
            float: left;
        }
    </style>
</c:if>
<c:if test="${pageContext.response.locale!='ar' }">
    <style>
        .button {
            float: right;
        }
    </style>
</c:if>
<div class="col-12 from_add" style=" padding-left: 15px; float: none; margin: 15px;">

        <div class="col-12 from_add" id="frm_etatDoss" style="display: none; margin-top: 43px; padding-right: 20%; float: none;">
            <div class="row p-0 m-0 justify-content-center">
                <div class="col-xl-5 col-lg-7 mt-5 col-sm-12 mt-5" >
                              <div class="photo  hvr-buzz-out" >
                                  <i class="mdi icc mdi-folder-multiple menu-icon"></i>
                              </div>
                                <div class="card" >
                                   <div class="row justify-content-center">
                                    <div class="progress">
                                      <div class="progress-bar" role="progressbar" style="width: 29%; background-color: seagreen" aria-valuenow="29" aria-valuemin="0" aria-valuemax="100">
                                        
                                      </div>
                                    </div>
                                    
                                          <div class="col-10 mt-4">

                                              <h3 class="ml6 float-right mb-1">
                                                      <span class="text-wrapper">
                                                        <span class="letters"><span class="letters"><spring:message code="label.renouvellement" /></span></span>
                                                      </span>
                                              </h3>                                                  <div class="row p-0 m-0 mt-5">
                               
                              
                                              </div>
                                              
                                              <div class="row">
                                              <div class="col-12">
                                                      <div class="form-group">
                                                          <label><spring:message code="label.type" /></label>
                                                          <select id="type" name="type" class="form-control">
                                                      <option ${renouvellement.type.equals('ZF')?"selected":"" } value="ZF"><spring:message code="label.Importationdesdechetsdunezonnefranche"/> </option>
                                                      <option ${renouvellement.type.equals('ET')?"selected":"" } value="ET"><spring:message code="label.Importationdesdechetsnondangereuxdunpaysetranger"/></option>
                                                      <option ${renouvellement.type.equals('IT')?"selected":"" } value="IT"><spring:message code="label.Installationdetraitementdesdechets"/></option>
                                                      <option ${renouvellement.type.equals('CT')? 'selected' :''} value="CT"><spring:message code="label.CollecteetTransport"/></option>
                                                      <option ${renouvellement.type.equals('TR')?"selected":"" } value="TR"><spring:message code="label.ExportationDesDechetsDangereux"/></option>
                                                      <option ${renouvellement.type.equals('XD')?"selected":"" } value="XD"><spring:message code="label.TransitDesDechets" /></option>
                                           
                        
                                                </select>
                                                      </div>

                                                  </div>
                                             </div>
                                              
                                              <div class="row">
                                              
                                              <div class="col-12" <%--dir= "rtl"--%>>
                                                <div class="form-group" <%--dir= "rtl"--%>>
                                                  <label <%--dir= "rtl"--%>><spring:message code="label.lenumberdesmois" /></label>
                                                  <input  required type="hidden" id="id_renouvellement" value="${renouvellement.id_renouvellement}"  class="form-control">
                                           
                                                  <input  required type="text" id="number_mois" value="${renouvellement.number_mois}"  class="form-control">
                                               </div>
                                                
                                              </div></div>

                                              
                                              
                                            </div>
                                            </div>
                                            <div class="row  mb-4" style="margin:14px;">
                                              <a  class="btn btn-success btn-block " onclick="addRenouvellement()" > <spring:message code="label.Enregistrer"/></a>
                                             <a class="btn btn-danger-2 text-white btn-block" onclick="getFunctionParam('getParamRenouvellement/0/40')"><spring:message code="label.Annuler"/></a>
                                           
                                          </div>
                                         </div>
                                      </div>
                                   </div>
              				</div>
                      
                       <!-- fin etat Dossier -->

            <div class="col-12 grid-margin z_tab" id="subtab_0">
                <div>
                    <div class="row justify-content-center">
                           
                             <div class="col-4 pt-4 pb-2 mt-5 bg-light text-dark"  id="zone_search" style="text-align:center;display:none;" >
                               
                               <img  class="n3VNCb text-center" src="https://www.shareicon.net/data/512x512/2016/08/18/814342_suit_512x512.png" data-noaft="1" jsname="HiaYvf" jsaction="load:XAeZkd;" style="width: 100px; height: 100px; margin: 0px;">
                               <div class="row p-4 justify-content-center">
                                 <div class="col-8">
                                   <div class="row p-0">
                                     <div class="col-12">
                                       <div class="form-group">
                                         <label><spring:message code="label.renouvellement"/></label>
                                         <input type="text" name="desi" class="form-control">
                                       </div>
                                     </div>
                                     
                                   </div>
                                   <div class="row p-0 justify-content-end">
                                     <div class="col-12">
                                       <button class="btn btn-primary btn-block" onclick="frm_search('subtab_0')"><spring:message code="label.rechercher"/></button>
                                     </div>
                                   </div>
                                 </div>
                               </div>
                             </div>
                        <div class="col-lg-12 pr-0 pl-0" >
                            <div class="row m-0">
                                <div class="col-3">
                                    <h4 class="ml6">
                                      <span class="text-wrapper">
                                        <span class="letters"><span class="letters"><spring:message code="label.renouvellement" /></span></span>
                                      </span>
                                    </h4>
                                 </div>
                                 <div class="col-9">
                                     <a class="button text-white fr_btn" onclick="frm_table('subtab_0','frm_etatDoss')">
                                         <span><spring:message code="label.Nouveaurenouvellement" /> </span></a>
                                   
                                     
                                 </div>
                               </div>
                             </div>

                           </div>





                    <div class="row justify-content-center">
                        <div class="col-12">
                            <table id="example2" class="table table-hover tablee">
                                <thead>
                                       <tr>
                                         
                                       
                                         
                                         <th class="text-center"><spring:message code="label.type" /></th>
                                          <th class="text-center"><spring:message code="label.lenumberdesmois" /></th>
                                         <th class="text-center"><spring:message code="label.Action"/></th>
                                       </tr>
                                     </thead>
                                     <tbody class="tbodyy">
                                    
                                    <c:forEach items="${listF}" var="f">
                                    
                                    <tr id="tr-${f.id_renouvellement}">
                                         
                                         <td>${f.type}</td>
                                          
                                          <td>${f.number_mois}</td>
                             
                                         <td class="text-center" style="width: 15%">
                                           <ul class="list-inline m-0">
                                             <li class="list-inline-item">
                                               <button onclick="editrenouvellement(${f.id_renouvellement})" class="btn btn-outline-warning btn-sm rounded-circle tab_edit" type="button" title="Editer" style="background-color: white">
                                                 <div class="icon_trash_1">
                                                  <span class="fa fa-edit" style="color: orange"></span>
                                                 </div>

                                               </button>
                                             </li>
                                             <li class="list-inline-item">
                                               <button onclick="deleterenouvellement(${f.id_renouvellement})" class="btn btn-danger btn-sm rounded-circle tab_trash" type="button" title="Supprimer" style="background-color: white">
                                                 <div class="icon_trash_1">
                                                  <span class="fa fa-close" style="color: red"></span>
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
         

                        </div>
                      </div>


 </div>



<script type="text/javascript">






function addRenouvellement(){

	var type=$("#type").val();
    var number_mois=$("#number_mois").val();  
    var id_renouvellement=$("#id_renouvellement").val();
  
	
	var fournisseur={

	    "type":type,
        "number_mois":number_mois,
        "id_renouvellement":id_renouvellement
			
	}

	
	$.ajax({
		 type: "POST",
         
         url :"/api/postRenouvellement",
         contentType : 'application/json; charset=utf-8',
         
         data : JSON.stringify(fournisseur),

		success : function(response) {
            
			$(".mpParam").html(response);
			getFunctionParam('getParamRenouvellement/0/40')
		},
		error : function(response) {

			alert('Erreur ajout non effectué');

		}
	}); 
	 
	
}
	
	
	
	
	/*  delete famille  begin */
	
	function deleterenouvellement(id){
		Swal.fire({
            title: '<spring:message code="label.etesvousure"/>',
            text: "<spring:message code="label.sivouscliquezsursupprimervousnepouvezpaslerecuperer"/>",
            type: 'Attention',
            showCancelButton: true,
            confirmButtonColor: '#42ba96',
            cancelButtonColor: '#d33',
            confirmButtonText: '<spring:message code="label.supprimer"/>',
            cancelButtonText: '<spring:message code="label.Annuler"/>'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    type : "POST",
                    url :"/api/deleteRenouvellement/"+id,
                    data:{
                        "id":id
                    },
                    success : function(data) {
                        $("#tr-"+id).css("display","none");
                    },
                    error : function(response) {
                        alert("error")
                    }
                });
                Swal.fire(
                    '<spring:message code="label.Supprimer"/>!',
                    '<spring:message code="label.suppressionValider"/>.',
                    'Succès',
                )
            }
        })


        }





function editrenouvellement(id){
    $.ajax({
        type : "GET",
        url :"/api/updateRenouvellement/"+id,
        data:{

        },
        success : function(data) {

            $(".mpParam").html(data);
            $("#subtab_0").hide("slow");
            $("#frm_etatDoss").show("slow");
        },
        error : function(response) {
            alert("error")
        }
    });

}
	
	
	
	
	
	
</script>



<jsp:include page="../../includes/footer.jsp" />



 

