<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<spring:url value="/resources/" var="resources"/>
<jsp:include page="../../includes/header.jsp"/>
<jsp:include page="../../menu/menu_verticale.jsp"/>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
      integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<jsp:useBean id="now" class="java.util.Date"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/intl-tel-input-master/build/css/intlTelInput.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/intl-tel-input-master/build/css/demo.css">

<script>
    $( function() {
        $( "#accordion" ).accordion({
            collapsible: true,
            heightStyle: "content",
        });
    } );
</script>
<style>
    body{ font-family: 'Arvo', sans-serif !important; }
</style>
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
        width: 55px;
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


<div class="row-fluid mt-2 ml-4" style="margin-top:182px !important;">
    <div class="col-12">
        <nav aria-label="breadcrumb ml-4" dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}" >
            <ol class="breadcrumb ml-4" style="margin-top: -24px !important;">
                <li class="breadcrumb-item" style="${pageContext.response.locale=='ar'?'right:3px !important;':'left:-10px !important;'}"><a href="/api/getMenu"><i class="fa fa-home pt-3 Pl-2"></i></a></li>
                <li class="breadcrumb-item active" style="${pageContext.response.locale!='ar'?'':'margin-right:4rem !important'}" aria-current="page"><a href="/api/getListeInstallation/0/40/0"><spring:message code="label.InstalationDeTraitementDesDechets"/></a></li>
            </ol>
        </nav>
    </div>
</div>

<div class="row justify-content-center pl-3 pr-3 mt-4" style="${pageContext.response.locale=='ar'?'text-align:right;':'text-align:left;'}">
    <div class="col-12" dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}">
        <div class="jumbotron p-3">
            <spring:message code="label.Statutdelademande"/> : <span class="h4 font-weight-bold" style="color: #3b5998"> ${installation.statut.nom_fr} </span><span>
        </span>
        </div>
    </div>
</div>

<div class="row justify-content-center mt-3" dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}">
    <div class="col-md-10 col-sm-10">
        <div class="bg-white" id="accordion-style-1">
            <div class="row">
                <div class="col-12">
                    <div class="accordion" id="accordionExample">
                        <div class="panel">
                            <div class="card-header panel-heading" id="headingOne">
                                <h5 class="mb-0 panel-title">
                                    <a class="accordion-toggle btn  collapsed " type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="${pageContext.response.locale=='ar'?'text-align:right;':'text-align:left;'}">
                                        <i class="icon fa fa-trash-restore"></i><spring:message code="label.Catalougue"/>
                                    </a>
                                </h5>
                            </div>
                            <div id="collapseOne" class="collapse fade" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body">
                                    <div class="row mb-2">
                                        <c:if test="${not empty codeList}">
                                            <div class="row justify-content-center codes_row card shadow p-4 mt-2 border"
                                                 style="text-align:${pageContext.response.locale=='ar'?'right':'left'}">
                                                <div class="col-12">
                                                    <form id="formnotif" name="formnotif">
                                                        <div class="row">
                                                            <div class="col-lg-12 col-md-12" id="zone_tableau">

                                                                <table class="table table-striped" data-page-length="15">
                                                                    <thead class="bg-vert text-white">
                                                                    <tr>
                                                                        <th scope="col" style="min-width: 100px"><spring:message
                                                                                code="label.Code"/></th>
                                                                        <th scope="col"><spring:message code="label.Type"/></th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <c:forEach items="${codeList}" var="code_colle">
                                                                        <tr class="bg-danger text-white">
                                                                            <td>${code_colle.nom_fr }</td>
                                                                            <td>${code_colle.nom_ar }</td>
                                                                        </tr>
                                                                    </c:forEach>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="card-header panel-heading" id="headingThree">
                                <h5 class="mb-0 panel-title">
                                    <a class="accordion-toggle btn collapsed  " type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="${pageContext.response.locale=='ar'?'text-align:right;':'text-align:left;'}">
                                        <i class="icon fa fa-file mr-3"></i>
                                        <spring:message code="label.Documentscomplementaires"/>
                                    </a>
                                </h5>
                            </div>
                            <div id="collapseThree" class="collapse fade" aria-labelledby="headingThree" data-parent="#accordionExample">
                                <div class="card-body">
                                    <div class="row mb-2">
                                        <c:if test="${not empty docList}">
                                            <div class="row justify-content-center documents_row card shadow p-4 mt-2 border"
                                                 style="text-align: ${pageContext.response.locale=='ar'?'right':'left'}">
                                                <div class="col-md-12 justify-content-center  col-sm-12">
                                                    <div class="col-12 table-responsive pt-4">
                                                        <table class="table border table-striped table-hover table-bordered tw_tab">
                                                            <tr class="bg-vert text-white">
                                                                <td><spring:message code="label.typededechet"/></td>
                                                                <td><spring:message code="label.Commentaire"/></td>
                                                            </tr>
                                                            <c:forEach items="${docList}" var="dc">
                                                               <tr>
                                                                        <td>${dc.docImport.nom_fr }</td>
                                                                        <td>
                                                                            <div class="col">
                                                                    <textarea disabled rows="2"
                                                                              class="form-control mb-0"
                                                                              id="id">${dc.nom_fr}</textarea>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                            </c:forEach>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
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