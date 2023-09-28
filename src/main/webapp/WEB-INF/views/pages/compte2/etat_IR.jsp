<!DOCTYPE html>
<html lang="et" >
<head>
    <meta charset="UTF-8">
    <title>IMPOT SUR REVENU</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/images/logo_1.png">
</head>
<body>
<!-- partial:index.partial.html -->

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/assets/css/datatable/bootstrap.css" rel="stylesheet">
<%@ page pageEncoding="UTF-8" %>
<html lang="et" >
<head>
    <meta name="viewport" content="width=device-width" />
    <meta name="description" content="Margus Lillemagi - Curriculum Vitae" />
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Oswald:400,700|Lato:400,300' rel='stylesheet' type='text/css'>
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <style>
        body {
            background: rgb(204,204,204);
        }
        th{
            padding: 4px !important;
            min-height:30PX;
            border:1px solid  !important;
            border-spacing: 0px !important;
            color:black;
            font-weight: bold !important;
        }
        tr{
            border:1px solid  !important;
            border-spacing: 0px !important;}
        td{
            padding: 4px !important;
            border:1px solid  !important;
            border-spacing: 0px !important;}
        table{
            width:100%;

            border-spacing: 0px !important;

        }
        page {
            background: #fff;
            display: block;
            margin: 0 auto;
            margin-bottom: 5mm;
            margin-top: 5mm;
        }
        page[size="A4"] {
            width: 262mm;
            min-height: 371mm;
        }
        @page {
            size: 210mm 297mm;
            margin: 0;
        }
        @media print { /* Print settings */
            html, body, page {
                width: 210mm;

                margin: 0 !important;
                padding: 0 !important;
                overflow: hidden;
            }
            .no-overflow{
                overflow: hidden;
            }
            #Header, #Footer {
                display: none !important;
            }
            button {
                display: none;
            }

            /* ... the rest of the rules ... */
        }
        html,body,div,span,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,abbr,address,cite,code,del,dfn,em,img,ins,kbd,q,samp,small,strong,sub,sup,var,b,i,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,figcaption,figure,footer,header,hgroup,menu,nav,section,summary,time,mark,audio,video {
            border:0;
            font:inherit;
            font-size:100%;
            margin:0;
            padding:0;
            vertical-align:baseline;
        }
        article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section {
            display:block;
        }
        html, body {font-family: 'Lato', helvetica, arial, sans-serif; font-size: 11pt; color: #222;}
        .clear {clear: both;}
        p {
            line-height: 15pt;
            margin-bottom: 4mm;
            color: #444;
            word-break: break-word;
        }
        a {
            text-decoration: none;
        }
        a:hover {
            text-decoration:underline;
        }
        a, .fa-check, .fa-arrow-right {
            color: #0a8bd4;
        }
        .cv {
            width: 210mm;
            /*height: 297mm;*/
            background: #fff;
        }
        .mainDetails {
            padding: 8mm 0 0 8mm;
            background: #fff;
        }
        #name {
            float: left;

            padding: 8.5mm 0 0 7mm;
        }
        #name h1 {
            font-size: 20pt;
            font-weight: 400;
            font-family: 'Oswald', Helvetica, Arial, sans-serif;
            line-height: 34pt;
            color:#00b050;
        }
        #name h2 {
            font-size: 18pt;
            font-family: 'Oswald', Helvetica, Arial, sans-serif;
            line-height: 20pt;
        }
        #mainArea, #mainAreaTwo {
            padding: 0 8mm;
        }
        #headshot {
            width: 55mm;
            float: left;
            margin-top:10mm;
            margin-left:-.5mm;
        }
        #headshot img {
            width: 100%;
            height: auto;
            -webkit-border-radius: 50%;
            border-radius: 50%;
        }
        .contactDetails {
            float:right;
            margin:10mm 8mm 0  0;
            float: right;
            margin-top: 63px;
        }
        .contactDetails ul {
            list-style-type: none;
            font-family: 'Oswald', Helvetica, Arial, sans-serif;
        }
        .contactDetails ul li {
            line-height: 24pt;
            color: #444;
        }
        .contactDetails ul li a, a[href^=tel] {
            color: #444;
            padding: 4px 8px;
            text-decoration: none;
            -webkit-transition: all .1s ease-in;
            -moz-transition: all .1s ease-in;
            -o-transition: all .1s ease-in;
            -ms-transition: all .1s ease-in;
            transition: all .1s ease-in;
        }
        .contactDetails ul li a:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
            color:#0a8bd4;
        }
        .icon {
            font-size: 14pt;
        }
        .bold{
            font-weight:bold;
        }
        section {

            padding: 1mm 0 0 0;
        }
        section:first-child {
            border-top: 0;
            padding: 8mm 0 0 0;
        }
        section:last-child {
            padding: 4mm 0 0 0;
        }
        .sectionTitle {
            float: left;

            margin-bottom:6mm;
        }
        .sectionContent {
            float: right;
            width:100%;

        }
        .sectionTitle h1 {
            font-family: 'Oswald', Helvetica, Arial, sans-serif;
            font-weight: 400;
            text-transform: uppercase;
            font-size: 18pt;
            color: #00b050;
        }
        .sectionContent h2 {
            font-family: 'Oswald', Helvetica, Arial, sans-serif;
            text-transform: uppercase;
            font-size: 18pt;
        }
        .subDetails {
            font-family: 'Lato', Helvetica, Arial, sans-serif;
            font-size: 11pt;
            font-weight:bold;
            width:258px;
            color: #00b050;
        }
        .nameDetails {
            font-size: 11pt;
            font-family: 'Lato', Helvetica, Arial, sans-serif;
            color: #444;
            text-transform: lowercase;
        }
        .keySkills {
            list-style-type: none;
            -moz-column-count:2;
            -webkit-column-count:2;
            column-count:2;
            margin-bottom: 2mm;
            font-size: 11pt;
            color: #444;
            line-height: 15pt;
        }

        .clients {
            list-style-type: none;
            -moz-column-count:1;
            -webkit-column-count:1;
            column-count:1;
            margin-bottom: 4mm;
            font-size: 11pt;
            color: #444;
            line-height: 15pt;
            text-decoration: none;
        }
        .clients ul li {
            margin-bottom: 6mm;
        }
        .list {
            list-style-type: none;
            -moz-column-count:1;
            -webkit-column-count:1;
            column-count:1;
            margin-bottom: 4mm;
            font-size: 11pt;
            color: #444;
            line-height: 15pt;
        }
        button{
            background-color: black;
            width:245px;
            border:none;
            outline:0;
            color: #fff;
            font-family: 'Oswald', Helvetica, Arial, sans-serif;
            font-size: 20px;
            font-weight:bold;
            padding: 8px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 0px 550px;
            cursor: pointer;
            text-transform:uppercase
        }
        button:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
            color: #0a8bd4;
        }
        @media print
        {
            .no-print, .no-print *
            {
                display: none !important;
            }
        }
        #button{
            width:210mm;
            height:40px;
            position:fixed;
            z-index: 10;

            top:0px;
        }
    </style>
</head>
<body id="top">
<!--Page 1-->
<page size="A4">
    <div id="button" class="no-print">

        <button type="button" onclick="myFunction()"><span class="button-txt"><i class="fa fa-print" aria-hidden="true"></i>
            &nbsp;</span></button>
        <script>
            function myFunction() {
                window.print();
            }
        </script>
    </div>
    <%--<div>--%>
        <img src="${pageContext.request.contextPath}/assets/images/logo2.png" style="width:262mm">


    <div id="mainArea">


                    <section>
            <div class="sectionContent" style=" font-size: 13px;">
                <div class="sectionTitle" style="width: 100%;font-size: 16px;text-align: center;font-weight: bold;">
                    <h2>IMPOT SUR REVENU ${mois_l}/${annee}</h2>
                </div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-12">

                        <table >
                            <thead class="" >
                            <tr style="background:#00b060;">

                                <th scope="col"> Matricule</th>
                                <th scope="col"> CIN</th>
                                <th scope="col">Nom et prenom </th>
                                <th scope="col">PERIODE </th>
                                <th scope="col">BRUT</th>
                                <th scope="col">I.R</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${agentSalaire}" var="dre">
                                <tr>
                                    <td>${dre.agent.matricule} </td>
                                    <td>${dre.agent.cin} </td>
                                    <td>${dre.agent.nom} ${dre.agent.prenom}</td>
                                    <td>${mois_l}/${annee}</td>
                                    <td>${dre.salaire_brut_imposable}</td>
                                    <td>${dre.ir_net}</td>

                                </tr>
                            </c:forEach>
                            <c:forEach items="${total}" var="ar" varStatus="loop">
                            <tr>
                                <td> </td>
                                <td> </td>
                                <td>TOTAL </td>
                                <td></td>
                                <td> ${Math.round(ar[0]*100)/100}</td>
                                <td> ${Math.round(ar[5]*100)/100}</td>

                            </tr>
                            </c:forEach>



                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
            <div class="clear  pt-5" >
                <h2 style="padding: 62px;  font-size: 22px;">FAIT A RABAT LE</h2>
            </div>
        </section>
    </div>

</page>
</body>
<html>

