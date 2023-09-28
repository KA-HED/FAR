<!DOCTYPE html>
<html lang="et" >
<head>
    <meta charset="UTF-8">
    <title>ETAT D'ENGAGEMENT</title>
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
    <title>Curriculum Vitae</title>
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
            <div class="sectionTitle" style="width: 100%;font-size: 16px;text-align: center;font-weight: bold;">
                <h1> ETAT D'ENGAGEMENT</h1>
            <%--</div>--%>
                <p style="margin: 0px 0px 0px 330px;">Mois de : ${mois_s}/${annee}</p>
            <div class="sectionContent" >

                <table >
                    <tr>
                        <td>Nom et prenom</td>
                        <td>CIN</td>
                        <td>date de Naissances</td>
                        <td>Matricule</td>
                    </tr>
                    <tr>
                        <td> ${agentSalaire.agent.nom}  ${agentSalaire.agent.prenom}</td>
                        <td>${agentSalaire.agent.cin}</td>
                        <td>${agentSalaire.agent.dateNaissance_s}</td>
                        <td> ${agentSalaire.agent.matricule}</td>

                    </tr>
                </table>
            </div>
                <p style="font-size: 18px;"> SITUATION ADMINISTRATIVE </p>
            <div class="sectionContent" >

                <table  >
                    <tr>
                        <td>Situation Familiale</td>
                        <td>Position</td>
                        <td>classe</td>
                        <td>Indice niveaux</td>
                    </tr>
                    <tr>
                        <td> ${agentSalaire.agent.situationFamiliale} </td>
                        <td>${AgentPosition.position.nom}</td>
                        <td>${AgentClasse.classe.code_classe}</td>
                        <td  ${agentSalaire.agent.contractuelle=="oui"?"hidden":"" } ">${AgentNiveaux.niveaux.iNDICE_niveaux}</td>

                    </tr>
                </table>
            </div>
            </div>
        </section>

                    <section>
            <div class="sectionContent" style=" font-size: 13px;">
                <div class="row">
                    <div class="col-md-7 col-sm-7 col-7">

                        <table >
                            <thead class="" >
                            <tr style="background:#00b060;">

                                <th scope="col"></th>
                                <th scope="col"></th>
                                <%--<th scope="col">	Prorata	</th>--%>
                                <%--<th scope="col">	Durée d’Etudes	</th>--%>
                                <%--<th scope="col">Date d'obtention du diplome</th>--%>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    Salaire de base
                                </td>
                                <td>
                                    ${agentSalaire.salaire_de_base}
                                </td>
                            </tr>

                            <c:forEach items="${AgentIndemnite}" var="dre">
                                <tr>
                                    <td>${dre.indemnite.nom}</td>
                                    <td>${dre.montant}</td>
                                </tr>
                            </c:forEach>

                            <tr class=" ${agentSalaire.in_representation==0.0?"hidden":"" }">
                                <td> Indemnité de représentation nette </td>
                                <td>${agentSalaire.in_representation}</td>
                            </tr>

                            <tr>
                                <td> Allocations familiales </td>
                                <td>${agentSalaire.allocations_familiales}</td>
                            </tr>
                            <tr style="background-color: #b3c6ef;">
                                <td> Salaire brut global </td>
                                <td> ${agentSalaire.salaire_brut_global}  </td>
                            </tr>
                            <tr style="background-color: #b3c6ef;">
                                <td> Salaire brut imposable </td>
                                <td> ${agentSalaire.salaire_brut_imposable} </td>
                            </tr>
                            <tr>
                                <td> Frais professionnels </td>
                                <td> ${agentSalaire.frais_professionnels} </td>
                            </tr>
                            <tr>
                                <td> Salaire net imposable </td>
                                <td> ${agentSalaire.salaire_net_imposable} </td>
                            </tr>
                            <tr>
                                <td> IR brut </td>
                                <td> ${agentSalaire.ir_brut} </td>
                            </tr>
                            <tr>
                                <td> IR net  </td>
                                <td> ${agentSalaire.ir_net} </td>
                            </tr>
                            <tr style="background:#00b060;">
                                <td> Salaire Net </td>
                                <td> ${agentSalaire.salaire_net} </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>

                    <div class="col-md-5 col-sm-5 col-5">

                        <table >
                            <thead class="" >
                            <tr style="background:#00b060;">
                                <th scope="col">Retenues réglementaires</th>
                                <th scope="col"> Mois</th>
                                <%--<th scope="col">	Durée d’Etudes	</th>--%>
                                <%--<th scope="col">Date d'obtention du diplome</th>--%>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>  Assurance Maladie Obligatoire </td>
                                <td>  ${agentSalaire.assurance_Maladie_Obligatoire} </td>
                            </tr>
                            <%--ajoute un test 1--%>
                            <tr>
                                <td> CMR </td>
                                <td>  ${agentSalaire.montant_cmr} </td>
                            </tr>
                            <%--fin test 1--%>
                            <%--ajoute test 2--%>
                            <tr>
                                <td> RCAR Régime général </td>
                                <td> ${agentSalaire.rcar_Regime_general} </td>
                            </tr>
                            <tr>
                                <td> RCAR Régime complémentaire </td>
                                <td> ${agentSalaire.rcar_Regime_complementaire} </td>
                            </tr>
                            <%--fin test 2--%>
                            <tr>
                                <td>  MGPAP S.M  </td>
                                <td> ${agentSalaire.mgpap_S_M} </td>
                            </tr>
                            <tr>
                                <td> MGPAP C.C.D </td>
                                <td> ${agentSalaire.mgpap_C_C_D} </td>
                            </tr>
                            <tr>
                                <td> Impôt sur le revenu </td>
                                <td> ${agentSalaire.impot_sur_le_revenu} </td>
                            </tr>
                            </tbody>
                        </table>
                        <br>
                        <div class="clear"></div>
                        <table  >
                            <tbody>
                            <tr style="background: #bee5d3;">
                                <td> Revenu annuel NET IMPOSSABLE </td>
                                <td> ${agentSalaire.revenu_annuel_NET_IMPOSSABLE} </td>
                            </tr>
                            <tr><td  style=" border: 0px solid !important;" >     &nbsp; </td></tr>
                            <tr>
                                <td> Salaire NET imposable sans prime </td>
                                <td> ${agentSalaire.salaire_NET_imposable_sans_prime} </td>

                            </tr>
                            <tr>
                                <td>  nombre de mois </td>
                                <td>  12.00 </td>

                            </tr>
                            <tr>
                                <td>
                                    Salaire net imposable avec prime de performance
                                </td>
                                <td>
                                    --
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    Salaire net imposable avec prime de rendement
                                </td>
                                <td>
                                    --
                                </td>
                            </tr>

                            </tbody>
                        </table>
                        <br>
                        <div class="clear"></div>
                        <table class="" >

                            <tbody>
                            <tr style="background: #bee5d3;">
                                <td>
                                    Revenu annuel BRUT IMPOSSABLE
                                </td>
                                <td>
                                    ${agentSalaire.revenu_annuel_BRUT_IMPOSSABLE}
                                </td>

                            </tr>
                            <tr><td style=" border: 0px solid !important;">     &nbsp; </td></tr>
                            <tr>
                                <td>
                                    Salaire BRUT imposable sans prime
                                </td>
                                <td>
                                    ${agentSalaire.salaire_brut_imposable_sans_prime}
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    nombre de mois
                                </td>
                                <td>
                                    12.00
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    Salaire net imposable avec prime de performance
                                </td>
                                <td>
                                    --
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    Salaire net imposable avec prime de rendement
                                </td>
                                <td>
                                    --
                                </td>
                            </tr>

                            </tbody>
                        </table>
                        <br>


                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </section>
    </div>

</page>
</body>
<html>

