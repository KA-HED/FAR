<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<spring:url value="/resources/" var="resources"/>
<jsp:include page="../../includes/header.jsp"/>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
      integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<jsp:useBean id="now" class="java.util.Date"/>

<script>
    $( function() {
        $( "#accordion" ).accordion({
            collapsible: true,
            heightStyle: "content",
        });
    } );
</script>
<style>
    .accordion .panel{
        border: none;
        border-radius: 0;
        box-shadow: none;
        margin: 0 0 10px;
        overflow: hidden;
        position: relative;
    }
    .accordion .panel-heading{
        padding: 0;
        border: none;
        border-radius: 0;
        margin-bottom: 10px;
        z-index: 1;
        position: relative;
    }
    .accordion .panel-heading:before,
    .accordion .panel-heading:after{
        content: "";
        width: 50%;
        height: 20%;
        box-shadow: 0 15px 5px rgba(0, 0, 0, 0.4);
        position: absolute;
        bottom: 15px;
        left: 10px;
        transform: rotate(-1deg);
        z-index: -1;
    }
    .accordion .panel-heading:after{
        left: auto;
        right: 10px;
        transform: rotate(1deg);
    }
    .accordion .panel-title a{
        display: block;
        padding: 15px 70px 15px 70px;
        margin: 0;
        background: #2196f3     ;
        font-size: 18px;
        font-weight: 700;
        letter-spacing: 1px;
        color: #fff !important;
        border-radius: 0;
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1), 0 0 40px rgba(0, 0, 0, 0.1) inset;
        position: relative;
    }
    .accordion .panel-title a:before,
    .accordion .panel-title a.collapsed:before{
        content: "\f106";
        font-family: "Font Awesome 5 Free";
        font-weight: 900;
        width: 55px;
        height: 100%;
        text-align: center;
        line-height: 50px;
        border-right: 5px solid #fff;
        position: absolute;
        top: 0;
    ${pageContext.response.locale=="fr"?'right':'left'}: 0;
    }
    .accordion .panel-title a.collapsed:before{ content: "\f107"; }
    .accordion .panel-title a .icon{
        display: inline-block;
        width: 45px;
        height: 100%;
    ${pageContext.response.locale=="fr"?'border-right':'border-left'}: 5px solid #fff;
        font-size: 20px;
        color: #fff;
        line-height: 50px;
        text-align: center;
        position: absolute;
        top: 0;
    ${pageContext.response.locale=="fr"?'left':'right'}: 0;
    }
    .panel-body .table{
        margin: 0;
        border: 1px solid #e7e7e7;
    }
    .panel-body .table tr td{ border-color: #e7e7e7; }
    .panel-body .table thead tr.active th{
        color: #fff;
        background-color: #6D7AE0;
        font-size: 16px;
        font-weight: 500;
        padding: 12px;
        border: 1px solid #6D7AE0;
    }
    .panel-body .table tbody tr:hover{ background-color: rgba(109, 122, 224, 0.1); }
    .panel-body .table tbody tr td{
        color: #555;
        padding: 8px 12px;
        vertical-align: middle;
    }
    .panel-body .table tbody .btn{
        border-radius: 0;
        transition: all 0.3s ease;
    }
    .panel-body .table tbody .btn:hover{ box-shadow: 0 0 0 2px #333; }
    .panel-footer{
        background-color: #fff;
        padding: 0 15px 5px;
        border: none;
    }

</style>
<style>
    body{ font-family: 'Arvo', sans-serif !important; }
</style>


<div class="row justify-content-center pl-3 pr-3 mt-4" style="${pageContext.response.locale=='ar'?'text-align:right;':'text-align:left;'}">
    <div class="col-12" dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}">
        <div class="jumbotron p-3">
            <spring:message code="label.Statutdelademande"/>   : <span class="h4 font-weight-bold" style="color: #3b5998"> ${inst.statut.nom_fr} </span><span>
        </span>
        </div>
    </div>
</div>

<div class="row justify-content-center mt-3" dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}">
    <div class="col-md-10 col-sm-12">
        <div class="bg-white" id="accordion-style-1">
            <div class="row">
                <div class="col-12">
                    <div class="accordion" id="accordionExample">
                        <div class="panel">
                            <div class="card-header panel-heading" id="headingTwo">
                                <h5 class="mb-0 panel-title">
                                    <a class="accordion-toggle btn  " type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="${pageContext.response.locale=='ar'?'text-align:right;':'text-align:left;'}">
                                        <i class="icon fa fa-user"></i>
                                        <spring:message code="label.Informationdepetitionnaire"/>
                                    </a>
                                </h5>
                            </div>
                            <div id="collapseTwo" class="collapse show fade" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                <div class="card-body">
                                    <div class="row mb-2">
                                        <div class="col-md-6 col-sm-12 ">
                                            <div class="form-group">
                                                <label> <spring:message code="label.RaisonSocial"/>  </label>
                                                <input type="text" disabled value="${inst.raison}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.Identifiantfiscale"/></label>
                                                <input type="text" disabled value="${inst.ife}" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-2">
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label><spring:message code="label.Adresse"/> </label>
                                                <input type="text" disabled value="${inst.adresse}" dir="${pageContext.response.locale=="ar"?'ltr':''}" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.Tel"/> </label>
                                                <div class="input-group mb-3" style="direction: ${pageContext.response.locale=='ar'?'ltr':''}">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text1" id="basic-addon1" style="background-color: #e0e9f2 !important"><img src="${pageContext.request.contextPath}/assets/images/MA.png" style="width: 25px"/><small style="font-weight:500; color: black"> (+212)</small></span>
                                                    </div>
                                                    <input value="${inst.tel}" disabled class="form-control" aria-label="telephone" aria-describedby="basic-addon1">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-2">
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.Fax"/>  </label>
                                                <input type="text" disabled value="${inst.fax}" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.Email"/> </label>
                                                <input type="text" disabled value="${inst.email}" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="card-header panel-heading" id="headingOne">
                                <h5 class="mb-0 panel-title">
                                    <a class="accordion-toggle btn  collapsed " type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="${pageContext.response.locale=='ar'?'text-align:right;':'text-align:left;'}">
                                        <i class="icon fa fa-briefcase"></i><spring:message code="label.Installationdetraitementdesdechets"/>
                                    </a>
                                </h5>
                            </div>

                            <div id="collapseOne" class="collapse fade" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body">
                                    <div class="row mb-2">
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.Numerodedemande"/>  </label>
                                                <input type="text" disabled value="${inst.num_demande}" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-2">
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.Site"/> <spring:message code="label.delinstallation"/> </label>
                                                <input type="text" disabled value="${inst.site}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.Operation"/> </label>
                                                <input type="text" disabled value="${inst.operation}" class="form-control">
                                            </div>
                                        </div>
                                    </div>



                                    <div class="row mb-2">
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label><spring:message code="label.descriptiondinstallation"/> </label>
                                                <input type="text" disabled value="${inst.description}" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.structuredinstallation"/>   </label>
                                                <input type="text" disabled value="${inst.structure}" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-2">
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.TypeAppareil"/></label>
                                                <input type="text" disabled value="${inst.type_appareil}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.Quantite"/>  </label>
                                                <input type="text" disabled value="${inst.quantite}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-12">
                                            <div class="form-group">
                                                <label> <spring:message code="label.Unite"/> </label>
                                                <input type="text" disabled value="${inst.unite.nom_fr}" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-2">
                                        <div class="col-12">
                                            <c:if test="${inst.type=='2'}">
                                                <section class="border p-2"><h5 class="text-center"><spring:message code="label.lescodesatritrer"/> </h5></section>
                                                <div class="panel-body table-responsive">
                                                    <table class="table table-hover">
                                                    <thead>
                                                    <tr class="active">
                                                        <th><spring:message code="label.code"/></th>
                                                        <th><spring:message code="label.type"/></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${inst.code}" var="code">
                                                        <tr>
                                                            <td dir="${pageContext.response.locale=="ar"?'ltr':''}">${code.nom_fr}</td>
                                                            <td>${code.nom_ar}</td>
                                                        </tr>
                                                    </c:forEach>
                                                    <c:if test="${empty inst.code}">
                                                        <tr>
                                                            <td colspan="2"><spring:message code="label.Ilnyaaucuneenregistrement"/></td>
                                                        </tr>
                                                    </c:if>

                                                    </tbody>
                                                </table>
                                                </div>
                                            </c:if>
                                            <c:if test="${inst.type=='1'}">
                                              <section class="border p-2"><h5 class="text-center"><spring:message code="label.Vousavezdroitatouslescodesalexceptiondelalistecidessous"/></h5></section>
                                                <div class="panel-body table-responsive">
                                                <table class="table table-hover">
                                                    <thead>
                                                    <tr class="active">
                                                        <th><spring:message code="label.code"/></th>
                                                        <th><spring:message code="label.type"/></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${inst.code}" var="code">
                                                        <tr>
                                                            <td dir="${pageContext.response.locale=="ar"?'ltr':''}">${code.nom_fr}</td>
                                                            <td>${code.nom_ar}</td>
                                                        </tr>
                                                    </c:forEach>
                                                    <c:if test="${empty inst.code && inst.type!='3'}">
                                                        <tr>
                                                            <td colspan="2"><spring:message code="label.Ilnyaaucuneenregistrement"/></td>
                                                        </tr>
                                                    </c:if>

                                                    </tbody>
                                                </table>
                                            </div>
                                            </c:if>
                                            <c:if test="${inst.type=='3'}">
                                                <section>
                                                    <h5 class="text-center"><spring:message code="label.Vousavezdroitatouslescodes"/></h5>
                                                </section>
                                            </c:if>
                                            <c:if test="${inst.type=='0'}">
                                                <h3 class="text-center"><spring:message code="label.Vousavezdroitalescategoriessuivant"/>:</h3>
                                                <c:forEach items="${inst.categorie}" var="c">
                                                    <p>- ${c.nom_fr}</p>
                                                </c:forEach>
                                            </c:if>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="card-header panel-heading" id="headingThree">
                                <h5 class="mb-0 panel-title">
                                    <a class="accordion-toggle btn collapsed  " type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="${pageContext.response.locale=='ar'?'text-align:right;':'text-align:left;'}">
                                        <i class="icon fa fa-user-clock mr-3"></i>
                                        <spring:message code="label.Equipedetravail"/>
                                    </a>
                                </h5>
                            </div>
                            <div id="collapseThree" class="collapse fade" aria-labelledby="headingThree" data-parent="#accordionExample">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label><spring:message code="label.NombreEquipe"/></label>
                                                <input disabled type="text" class="form-control" value="${inst.nbr_equipe_travail}">
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label><spring:message code="label.Horairedexploitation"/></label>
                                                <input disabled type="text" class="form-control" value="${inst.horaire_exploitation}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label><spring:message code="label.nbrEffectif"/></label>
                                                <input type="text" class="form-control" disabled value="${inst.formation}">
                                            </div>
                                        </div>
                                        <!--<div class="col-md-6 col-sm-12">
              <div class="form-group">
                <a href="${url_Admin}${fn:replace(inst.qualification,"/assets/myFile/","/dowload_uploaded/")}" download target="_blank" class="btn btn-success btn-block">Télécharger fichier Qualification</a>
              </div>
            </div>-->

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="card-header panel-heading" id="headingFour">
                                <h5 class="mb-0 panel-title">
                                    <a class="accordion-toggle btn collapsed  " type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour" style="${pageContext.response.locale=='ar'?'text-align:right;':'text-align:left;'}">
                                        <i class="icon fa fa-files-o mr-3"></i><spring:message code="label.PiecesJointes"/>
                                    </a>
                                </h5>
                            </div>
                            <div id="collapseFour" class="collapse fade" aria-labelledby="headingFour" data-parent="#accordionExample">
                                <div class="card-body">
                                    <table class="table my_table table-striped table-bordered table-hover">
                                        <c:if test="${not empty doc}">
                                            <c:forEach items="${doc}" var="file">
                                                <tr>
                                                    <td>${pageContext.response.locale=='ar'?file.docImport.nom_ar:file.docImport.nom_fr}</td>
                                                    <td>
                                                        <a target="_blank" class="btn btn-success" href="${url_Admin}${fn:replace(file.url, "/assets/myFile/", "/dowload_uploaded/")}"> <span class="fa fa-download"></span></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:if>

                                        <c:if test="${empty doc}">
                                            <tr>
                                                <td colspan="2"><spring:message code="label.AucunFichier"/>  </td>
                                            </tr>
                                        </c:if>

                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="card-header panel-heading" id="headingFive">
                                <h5 class="mb-0 panel-title">
                                    <a class="accordion-toggle btn collapsed " type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive" style="${pageContext.response.locale=='ar'?'text-align:right;':'text-align:left;'}">
                                        <i class="icon fa fa-file-download mr-3"></i><spring:message code="label.Telechargement"/>
                                    </a>
                                </h5>
                            </div>
                            <div id="collapseFive" class="collapse fade" aria-labelledby="headingFive" data-parent="#accordionExample">
                                <div class="card-body">
                                    <table class="table my_table table-striped table-bordered table-hover">
                                        <tr>
                                            <c:if test="${not empty inst.document_attache }">
                                            <td style="width: 93%">
                                                <spring:message code="label.rapportdeconformite"/>
                                            </td>
                                            <td class="text-center">
                                                    <a target="_blank" class="btn btn-success" href="${url_Admin}${fn:replace(inst.document_attache, "/assets/myFile/", "/dowload_uploaded/")}"> <span class="fa fa-download"></span></a>
                                            </td>
                                            </c:if>
                                        </tr>
                                        <tr>
                                            <c:if test="${not empty inst.url_doc_signer }">
                                            <td style="width: 93%">
                                                <spring:message code="label.Telechargerlautorisation"/>
                                            </td>
                                            <td class="text-center">
                                                    <a target="_blank" class="btn btn-success" href="${url_Admin}${fn:replace(inst.url_doc_signer, "/assets/myFile/", "/dowload_uploaded/")}"> <span class="fa fa-download"></span></a>
                                            </td>
                                            </c:if>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/assets/js/custom_hatim.js"></script>

<jsp:include page="../../includes/footer.jsp"/>
<script>
    function listAlimentation(page, size, statut) {
        window.location.href='/api/getListeInstallation/'+page+'/40'+'/'+statut;
    }

    function goToLien(val){
        window.location.href='/api/validateDocInstallation/'+val;
    }
    function goToLienRecap_IT(val){
        window.location.href='/api/recap_installation/'+val;
    }
    function  goToLien2(val){
        window.location.href='/api/visiteInstallation/'+val;
    }
    function  goToLien3(val){
        window.location.href='/api/documentAttche/'+val;
    }
    function goToLien4(val){
        window.location.href='/api/down_sign_docInstall/'+val;
    }
    function goToLien5(val){
        window.location.href='/api/validationDestination/'+val;
    }
    function goToLien6(val){
        window.location.href='/api/visiteInstallation/'+val;
    }
    function downloadIns(val){
        window.location.href=val;
    }
</script>
