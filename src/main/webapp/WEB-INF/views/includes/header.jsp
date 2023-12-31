<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<spring:url value="/resources/" var="resources"/>
<!-- amal -->
<html>
<title>DE</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="description" content="#">
<meta name="keywords" content="Dentaire,dent Landing,Bootstrap,App,Template,Mobile, iOS, Android, apple, creative app">
    <meta name="author" content="#">
<link rel="icon" href="${pageContext.request.contextPath}/assets/images/logo_1.png">

<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/chartist/dist/chartist.css" type="text/css" media="all">--%>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/nvd3/build/nv.d3.css">--%>
<%--<script src="${pageContext.request.contextPath}/assets/statistique/amcharts.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/assets/statistique/serial.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/assets/statistique/pie.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/assets/js/select2.min.js" ></script>--%>
<%--<script src="${pageContext.request.contextPath}/assets/statistique/Chart.min.js"></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/assets/css/chart.js/dist/Chart.js"></script>--%>
<%--<!-- amchart js -->--%>
<%--<script src="${pageContext.request.contextPath}/assets/statistique/widget/amchart/amcharts.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/assets/statistique/widget/amchart/serial.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/assets/statistique/widget/amchart/light.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/assets/statistique/chart/statisticfr.js"></script>--%>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/icon/icofont/css/icofont.css" />--%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap-select.min.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style_statistique.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/fontawesome/css/all.min.css"/>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style1.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style2.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style3.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/calendar.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/fullcalendar.min.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bt.css"/>--%>
      <%--integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="--%>
      <%--crossorigin="anonymous"/>--%>
<%----%>
<%--<link href="${pageContext.request.contextPath}/assets/css/smart_wizard_all.min.css">--%>
<%----%>
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font.css" >--%>
<!-- CSS Files -->

<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.datetimepicker.min.css">--%>
<!-- CSS Just for demo purpose, don't include it in your project -->


<%--<link rel="stylesheet" href=" ${pageContext.request.contextPath}/assets/vendors/sweet-alert/sweetalert.css">--%>
<%--<link href="${pageContext.request.contextPath}/assets/css/demo.css" rel="stylesheet" />--%>
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/mdi/css/materialdesignicons.min.css">--%>
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/base/vendor.bundle.base.css">--%>

<!--   //datatable-->
<link href="${pageContext.request.contextPath}/assets/css/datatable/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/datatable/responsive.bootstrap4.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/datatable/fixedColumns.dataTables.min.css" rel="stylesheet">


<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/toolbar/jquery.toolbar.css">--%>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/toolbar/custom-toolbar.css">--%>

<%--<link href="${pageContext.request.contextPath}/assets/css/customcss.css" rel="stylesheet">--%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">


<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/select2.min.css">--%>

<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/datepicker/vitalets-bootstrap-datepicker-c7af15b/css/datepicker.css">--%>

<!-- sweetalert -->
<link href="${pageContext.request.contextPath}/assets/css/sweet-alert.css" rel="stylesheet">
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/jquery.mCustomScrollbar.css">--%>


<!---Youssef ---->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css_login/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css_login/custom.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css_login/bts_4.css">
<%--<!--flags -->--%>
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flag.css">--%>


<!-------End-------->
                                                        <%--<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />--%>


<style>

    input:focus{
        outline: 2px solid orange;     /* oranges! yey */
    }
    select:focus {
        /*color: green;*/
        outline: 2px solid orange;
    }
    select {
        height: 30px;
    }
    .btn:focus {
        outline: 2px solid orange !important;
    }



    .bootstrap-select>.dropdown-toggle{
        color: #0a0a0a !important;
        height: 28px !important;
        background-color: white !important;
        font-size: 12px;
    }



    li.select2-selection__choice {
        color: black !important;
        background-color: #c1d96c !important;
    }

    .button {
        border-radius: 4px;
        background-color: #7fc241;
        border: none;
        color: #FFFFFF;
        text-align: center;
        font-size: 14px;
        padding: 10px;
        width: 200px;
        transition: all 0.5s;
        cursor: pointer;
        margin: 5px;
    }

    .button span {
        cursor: pointer;
        display: inline-block;
        position: relative;
        transition: 0.5s;
    }

    .button span:after {
        content: '\00bb';
        position: absolute;
        opacity: 0;
        top: 0;
        right: -20px;
        transition: 0.5s;
    }

    .button:hover span {
        padding-right: 25px;
    }

    .button:hover span:after {
        opacity: 1;
        right: 0;
    }

    #example {
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    #example td, #customers th {
        border: 1px solid #ddd;
        padding: 8px;
    }

    #example tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    #example tr:hover {
        background-color: #ddd;
    }

    #example th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #7fc241;
        color: white;
    }

    .button {
        font-family: Georgia;
        background-color: #7DC7BD;
        color: white;
    }

    .col-3 h4 {
        font-family: Georgia;
    }

    .tablee {
        border-collapse: collapse;
        overflow: hidden;
        margin-left: -5px;
    }

    .fr_btn {
        background-color: #568a4091;
    }

    .tablee thead {
        background-color: #568a4091;
        color: white;

    }

    .tablee thead th {
        font-weight: bold;
        text-align: left !important;
    }

    .tbodyy .btn:hover {
        background-color: #3e8e41
    }

    .tbodyy .btn:hover {
        background-color: #3e8e41;
        box-shadow: 0 5px #666;
        transform: translateY(4px);
    }

    .btn-block:hover {
        background-color: white;
        color: black;
        border: 2px solid #79ef7a;
    }

    .btn-block {
        border-radius: 3px;
        background-color: #79ef7a;
        color: white;

    }

    .btn-block span {
        color: white;
    }

    .form-group .line {
        height: 2px;
        width: 0px;
        position: absolute;
        background-color: darkgrey;
        display: inline-block;
        transition: .3s width ease-in-out;
        position: relative;
        top: -14px;
    }

    .ml6 {
        position: relative;
        font-weight: 500;
        font-size: 1.8em;
    }

    .ml6 .text-wrapper {
        position: relative;
        display: inline-block;
        padding-top: 0.2em;
        padding-right: 0.05em;
        padding-bottom: 0.1em;
        overflow: hidden;
    }

    .ml6 .letter {
        display: inline-block;
        line-height: 1em;
    }

    body {
        font-family: 'Arvo', sans-serif !important;
    }

    .form-group label {
        color: #537842;
    }

    .btn-success {
        background-color: #568a4091 !important;
        color: #fff !important;
        border-radius: 25px !important;
    }

    .btn-success:hover {
        background-color: #568a4091 !important;
        color: #fff !important;
        border-radius: 25px !important;
    }

    .btn-danger-2 {
        background-color: #e0c44e !important;
        color: #fff !important;
        border-radius: 25px !important;
        border-color: white !important;
    }

    .zone_tab h4 {
        text-align: right !important;
        margin-right: 1rem;
    }

    #file01 h4 {
        text-align: right !important;
        margin-right: 1rem;
    }

    .badge {
        background-color: #d59d32 !important;
    }

    .odd a {
        color: #0db8db;
    }

    .even a {
        color: #0db8db;
    }

    table th {
        text-align: center !important;
        vertical-align: middle !important
    }

    table p {
        background-color: #d53232 !important;
        text-align: center !important;
        background-size: 100% 100% !important;
        color: white !important;
    }

    .border-secondary {
        border-color: #d59d32 !important;
    }

    .header-top-onex {
        height: 131px !important;
    }

    .header-top-onex {
        background: url(../resources/static/assets/images/arabisc.png) top left repeat-x !important;
    }

    .header-top-onex,
    .header-style-one .header-upper .inner-container {
        padding-left: 0 !important;
        padding-right: 0 !important;
    }

    .header-top-onex {
        background: none !important;
        padding: 10px 40px !important;
        font-size: 14px !important;
        color: #ffffff !important;
    }

    .radio-button {
        display: inline-block;
        position: relative;
    }

    .radio-button input[type=radio] {
        margin: auto;
        visibility: hidden;
        left: 0;
        right: 0;
        bottom: 0;
        top: 0;
    }

    .radio-button label {
        color: #555;
        background: #fff;
        font-size: 17px;
        font-weight: 500;
        font-style: italic;
        letter-spacing: 0.5px;
        padding: 24px 0 0 0;
        margin: 0;
        cursor: pointer;
        position: relative;
        z-index: 1;
        transition: all 0.3s ease 0s;
    }

    .radio-button label:before,
    .radio-button label:after {
        content: "";
        width: 20px;
        height: 20px;
        margin: auto;
        border-radius: 50%;
        border: 1px solid #555;
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        z-index: -1;
        transition: all 0.3s ease 0s;
    }

    .radio-button label:after {
        background: #2cc550;
        border: none;
        opacity: 0;
        transform: scale(0.3);
        left: 5px;
        transition: opacity 0.3s, left 0.3s, transform 0.3s ease 0.2s;
    }

    .radio-button input[type=radio]:checked + label:before {
        box-shadow: 0 0 3px #2cc550;
    }

    .radio-button input[type=radio]:checked + label:after {
        opacity: 1;
        left: 0;
        transform: scale(0.65);
    }

    @media only screen and (max-width: 767px) {
        .radio-button {
            margin: 0 0 20px;
        }
    }

    .disabled {
        cursor: not-allowed !important;
        opacity: 0.8 !important;
    }


</style>

<script src="${pageContext.request.contextPath}/assets/libs/jquery/dist/jquery.min.js"></script>
