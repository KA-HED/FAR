<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<spring:url value="/resources/" var="resources"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="now" class="java.util.Date" />

<div class="col-12 table-responsive" dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}">
    <table style="width:100% !important" id="tbody" class="table table-bordered display responsive nowrap">
        <thead style="background: gray;color: white;border-color: #737373;">
        <tr style="background-color: #2196f3   !important;">
            <th class=""><spring:message code="label.Nnotification"/></th>
            <th class=""><spring:message code="label.code"/></th>
            <th class=""><spring:message code="label.datedepot"/></th>
            <th class=""><spring:message code="label.Njour"/></th>
            <th class=""><spring:message code="label.Statut"/></th>
            <th class=""><spring:message code="label.nomsociete"/></th>
            <th class=""><spring:message code="label.Adresse"/></th>
            <th class=""><spring:message code="label.Telephone"/></th>
            <th class=""><spring:message code="label.Fax"/></th>
            <th class=""><spring:message code="label.compteAffecter"/></th>
            <th class="all"><spring:message code="label.Action"/></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${notif}" var="nt" varStatus="loopp">
            <tr>
                <td class="${type.equals('ZF')?'num_notification':'font-weight-semibold'} text-center">
                    <c:choose>
                        <c:when test="${affecter==null && user.poste.id_Poste!=1 && (nt.statut.id_statut_projet!=54 && nt.statut.id_statut_projet!=55 && nt.statut.id_statut_projet!=58 && nt.statut.id_statut_projet!=59 && nt.statut.id_statut_projet!=64 && nt.statut.id_statut_projet!=96 && nt.statut.id_statut_projet!=97 && nt.statut.id_statut_projet!=65 && nt.statut.id_statut_projet!=92 && nt.statut.id_statut_projet!=93 && nt.statut.id_statut_projet!=40)}">
                            <a title="Affecter" href="#" style="color:${nt.compteAffecte==null?'#d59d32':''}"
                               onclick="show_compte('${nt.id_notification }','ZF')">${nt.num_notification}</a>
                        </c:when>
                        <c:otherwise>
                            ${nt.num_notification}
                        </c:otherwise>
                    </c:choose>
                </td>
                <td class="" dir="${pageContext.response.locale=='ar'?'ltr':''}"> ${nt.code.nom_fr } </td>
                <td class="">
                    <fmt:formatDate dateStyle="long" pattern="dd/MM/yyyy" value="${nt.dateDepot }"/>
                </td>
                <td class="text-center">
                    <c:set var="nbr" value="${nt.zf_et.equals('TR')?21:30}"/>


                    <c:if test="${nt.statut.id_statut_projet != 37 && nt.dateConteur != null}">
                        <fmt:parseNumber integerOnly="true"
                                         value="${(now.time - nt.dateConteur.time) / (1000*60*60*24) }" var="tt"
                        />
                        <button class="btn" style="background-color: #fa92a5!important;text-align: center;background-size: 100% 100%;border-radius: 50%!important;">
                            <c:choose>
                                <c:when test="${nbr-tt >= 0}">
                                    ${nbr-tt }
                                </c:when>
                                <c:otherwise>
                                    0
                                </c:otherwise>
                            </c:choose>
                        </button>
                    </c:if>
                </td>
                <td class=""><c:if test="${nt.statut.id_statut_projet == 39 && nt.zf_et.equals('ET')}">
                    <i class="badge badge-info"><spring:message
                            code="label.Attentedevalidationdedepartementconcerne"/> </i>
                </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 39 && nt.zf_et.equals('XD')}">
                        <i class="badge badge-info"><spring:message
                                code="label.Attentedevalidationdedepartementconcerne"/> </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 39 && !nt.zf_et.equals('XD') && !nt.zf_et.equals('ET')}">
                        <i class="badge badge-info">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 33}">
                        <i class="badge badge-primary">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 93}">
                        <i class="badge badge-success">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 92}">
                        <i class="badge badge-success">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 37}">
                        <i class="badge badge-warning text-white">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 54 || nt.statut.id_statut_projet == 55 || nt.statut.id_statut_projet == 58 || nt.statut.id_statut_projet == 59 }">
                        <i class="badge badge-success">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 38}">
                        <i class="badge badge-success">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 83}">
                        <i class="badge badge-success">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 84}">
                        <i class="badge badge-success">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 85}">
                        <i class="badge badge-success">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 86 || nt.statut.id_statut_projet==102}">
                        <i class="badge badge-dangeer">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 95 ||nt.statut.id_statut_projet == 94 || nt.statut.id_statut_projet == 63 || nt.statut.id_statut_projet==66}">
                        <i class="badge badge-info">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 96 || nt.statut.id_statut_projet == 64 || nt.statut.id_statut_projet==67}">
                        <i class="badge badge-success">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 97 || nt.statut.id_statut_projet == 65 || nt.statut.id_statut_projet==68}">
                        <i class="badge badge-dangeer">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 40}">
                        <i class="badge badge-dangeer">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 29}">
                        <i class="badge badge-dark">${nt.statut.nom_fr } </i>
                    </c:if>
                    <c:if test="${nt.statut.id_statut_projet == 104}">
                        <i class="badge badge-dangeer">${nt.statut.nom_fr } </i>
                    </c:if>
                </td>

                <td class=""> ${nt.importateur.nom_fr} </td>
                <td class="" dir="${pageContext.response.locale=='ar'?'ltr':''}"> ${nt.importateur.adresse_fr} </td>
                <td class="">
                    <c:if test="${nt.zf_et.equals('ZF') || nt.zf_et.equals('XD')}">
                        <c:if test="${pageContext.response.locale=='ar'}">
                            212${fn:replace(nt.importateur.tel, " ", "")}+
                        </c:if>
                        <c:if test="${pageContext.response.locale!='ar'}">
                            +212${fn:replace(nt.importateur.tel, " ", "")}
                        </c:if>
                    </c:if>
                    <c:if test="${!nt.zf_et.equals('ZF') && !nt.zf_et.equals('XD')}">
                        <c:if test="${pageContext.response.locale=='ar'}">
                            <span dir="ltr">${fn:replace(nt.importateur.tel, " ", "")}</span>
                        </c:if>
                        <c:if test="${pageContext.response.locale!='ar'}">
                            <span>${fn:replace(nt.importateur.tel, " ", "")}</span>
                        </c:if>
                    </c:if>
                </td>
                <td class=""> ${nt.importateur.fax} </td>
                    <td class=""> ${nt.compteAffecte.nom} </td>

                    <td class="text-center">
                    <div id="toolbar-options${loopp.index+1}" class="hidden">
                        <a type="button" style="background-color:  #d59d32" onclick="goToLienRecap('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Afficherlerecapitulatif"/>"><i class="fa fa-print"></i></a>
                        <c:if test="${(nt.statut.id_statut_projet==38 && type=='TR'  && user.poste.id_Poste!=3) || nt.statut.id_statut_projet==38 && type=='TR'  && user.compteId!=nt.compteAffecte.compteId}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien12('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargeretsignerlalettre"/>"><i class="fa fa-signature"></i></a>
                        </c:if>
                        <c:if test="${(nt.statut.id_statut_projet==38 && type=='XD'  && user.poste.id_Poste!=3) || nt.statut.id_statut_projet==38 && type=='XD'  && user.compteId!=nt.compteAffecte.compteId}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien5('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlalettredavisdunpaysdedestination"/>"><i class="fa fa-signature"></i></a>
                        </c:if>
                        <c:if test="${(nt.statut.id_statut_projet==38 && type!='XD' && type!='TR'   && user.poste.id_Poste!=3) || nt.statut.id_statut_projet==38 && type!='XD' && type!='TR' && user.compteId!=nt.compteAffecte.compteId}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien1('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargeretsignerlautorisation"/>"><i class="fa fa-signature"></i></a>
                        </c:if>
                        <c:if test="${(nt.statut.id_statut_projet==40 && type=='ZF' && user.poste.id_Poste!=1 && user.poste.id_Poste!=3) || nt.statut.id_statut_projet==40 && type=='ZF' && user.poste.id_Poste!=1 && user.compteId!=nt.compteAffecte.compteId}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien1('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlautorisationderefus"/>"><i class="fa fa-signature"></i></a>
                        </c:if>
                        <c:if test="${(nt.statut.id_statut_projet==40 && type=='ET' && user.poste.id_Poste!=1 && user.poste.id_Poste!=3) || nt.statut.id_statut_projet==40 && type=='ET' && user.poste.id_Poste!=1 && user.compteId!=nt.compteAffecte.compteId}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien1('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlautorisationderefus"/>"><i class="fa fa-signature"></i></a>
                        </c:if>
                        <c:if test="${(nt.statut.id_statut_projet==85 && user.poste.id_Poste!=1 && user.poste.id_Poste!=3) || (nt.statut.id_statut_projet==85 && user.poste.id_Poste!=1 && user.compteId!=nt.compteAffecte.compteId)}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien6('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlalettredeconsentement"/>"><i class="fa fa-signature"></i></a>
                        </c:if>
                        <c:if test="${(nt.statut.id_statut_projet==86 && nt.url_lettre_nonconforme==null && user.poste.id_Poste!=1 && user.poste.id_Poste!=3) || nt.statut.id_statut_projet==86 && nt.url_lettre_nonconforme==null && user.poste.id_Poste!=1 && user.compteId!=nt.compteAffecte.compteId}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien7('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlalettredenonconforme"/>"><i class="fa fa-signature"></i></a>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==33}">
                            <a type="button" style="background-color:  #d59d32" onclick="EditAutorisation('${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.accespourmodifier"/>"><i class="fa fa-edit"></i></a>
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien('${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Validerlesdocuments"/>"><i class="fa fa-upload"></i></a>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==84 }">
                            <a type="button" style="background-color:  #d59d32" onclick="downloadAut2('${fn:replace(nt.url_lettre_conforme,"/assets/myFile/","/dowload_uploaded/")}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlalettredeconsentement"/>"><i class="fa fa-upload"></i></a>
                        </c:if>
                        <c:if test="${(nt.statut.id_statut_projet==83 && user.poste.id_Poste!=1 && user.poste.id_Poste!=3) || nt.statut.id_statut_projet==83 && user.poste.id_Poste!=1 && user.compteId!=nt.compteAffecte.compteId}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien8('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Attacherlavisdepaysdedestination"/>"><i class="fa fa-edit"></i></a>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==63}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien2('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Validerlecertificat"/> "><i class="fa fa-check"></i></a>
                            <a type="button" style="background-color:  #d59d32" onclick="downloadAut('${fn:replace(nt.url_doc_signer,"/assets/myFile/","/dowload_uploaded/")}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlautorisation"/>"><i class="fa fa-download"></i></a>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==95}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien4('${type}/${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Validerledocumentdemouvement"/> "><i class="fa fa-check"></i></a>
                            <a type="button" style="background-color:  #d59d32" onclick="downloadAut('${fn:replace(nt.url_doc_signer,"/assets/myFile/","/dowload_uploaded/")}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlautorisation"/>"><i class="fa fa-download"></i></a>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==94}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien('${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.validerlesdocuments"/> "><i class="fa fa-check"></i></a>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==96 ||nt.statut.id_statut_projet==97 || nt.statut.id_statut_projet==64 || nt.statut.id_statut_projet==65 || nt.statut.id_statut_projet==67 || nt.statut.id_statut_projet==68}">
                            <a type="button" style="background-color:  #d59d32" onclick="downloadAut('${fn:replace(nt.url_doc_signer,"/assets/myFile/","/dowload_uploaded/")}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlautorisation"/>"><i class="fa fa-download"></i></a>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==54 || nt.statut.id_statut_projet==55 || nt.statut.id_statut_projet==58 || nt.statut.id_statut_projet==59}">
                            <c:if test="${nt.zf_et=='ZF' && nt.classification.id_classification==1}"><a type="button" style="background-color:  #d59d32" onclick="modal_garantie_financiere('${nt.id_notification}',92,'<spring:message code="label.depose"/> ')" data-popover="true" data-html=true data-content="<spring:message code="label.deposerlagarantiefinanciere"/>"><i class="fa fa-edit"></i></a></c:if>
                            <c:if test="${nt.zf_et=='XD'}"><a type="button" style="background-color:  #d59d32" onclick="downloadAut('${fn:replace(nt.url_doc_signer,"/assets/myFile/","/dowload_uploaded/")}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlalettredavisdepaysdedestination"/>"><i class="fa fa-download"></i></a></c:if>
                            <c:if test="${nt.zf_et=='TR'}"><a type="button" style="background-color:  #d59d32" onclick="downloadAut('${fn:replace(nt.url_doc_signer,"/assets/myFile/","/dowload_uploaded/")}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlalettre"/>"><i class="fa fa-download"></i></a></c:if>
                            <c:if test="${nt.zf_et!='XD' && nt.zf_et!='TR'}"><a type="button" style="background-color:  #d59d32" onclick="downloadAut('${fn:replace(nt.url_doc_signer,"/assets/myFile/","/dowload_uploaded/")}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlautorisation"/>"><i class="fa fa-download"></i></a></c:if>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==102}">
                            <c:if test="${nt.zf_et!='XD' && nt.zf_et!='TR'}"><a type="button" style="background-color:  #d59d32" onclick="downloadAut('${fn:replace(nt.url_doc_signer,"/assets/myFile/","/dowload_uploaded/")}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlautorisation"/>"><i class="fa fa-download"></i></a></c:if>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==66}">
                            <a type="button" style="background-color:  #d59d32" onclick="affiche_modal_transporteur('${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Validerletransporteur"/>"><i class="fa fa-check"></i></a>
                            <a type="button" style="background-color:  #d59d32" onclick="downloadAut('${fn:replace(nt.url_doc_signer,"/assets/myFile/","/dowload_uploaded/")}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlautorisation"/>"><i class="fa fa-download"></i></a>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==39 }">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLien3('${nt.id_notification}')" data-popover="true" data-html=true data-content="<spring:message code="label.Avisdudepartementconcernes"/>"><i class="fa fa-edit"></i></a>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==93 || nt.statut.id_statut_projet==92}">
                            <a type="button" style="background-color:  #d59d32" onclick="downloadAut('${fn:replace(nt.url_doc_signer,"/assets/myFile/","/dowload_uploaded/")}')" data-popover="true" data-html=true data-content="<spring:message code="label.Telechargerlautorisation"/>"><i class="fa fa-download"></i></a>
                        </c:if>
                        <c:if test="${nt.statut.id_statut_projet==64}">
                            <a type="button" style="background-color:  #d59d32" onclick="modal_garantie_financiere('${nt.id_notification}',93,'<spring:message code="label.recupere"/> ')" data-popover="true" data-html=true data-content="<spring:message code="label.recuperelagarantiefinanciere"/>"><i class="fa fa-check"></i></a>
                        </c:if>
                        <c:if test="${isAccessible.equals('oui')}">
                            <a type="button" style="background-color:  #d59d32" onclick="goToLienHistoriqueAffectation('${nt.id_notification}')" data-popover="true" data-html=true data-content="Historique Affectation"><i class="fa fa-history"></i></a>
                        </c:if>
                    </div>
                    <div class="tool-box">
                        <div data-toolbar="user-options" class="btn-toolbar btn-toolbar-primary" id="info-toolbar${loopp.index+1}" style="background: linear-gradient(to right, #ffd88e, #d59d32) !important;"><i class="fa fa-cog"></i></div>
                        <div class="clear"></div>
                    </div>
                </td>
            </tr>
            <div class="modal fade mt-5" id="staticBackdrop-${nt.id_notification }" data-backdrop="static"
                 data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel" style="font-family: serif;">
                                <spring:message code="label.Listedescomptes"/></h5>
                            <button type="button" class="${pageContext.response.locale=='ar'?'close1':'close'}" data-dismiss="modal" aria-label="Close"
                                    onclick="hide_compte('${nt.id_notification }')">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body tableComptes" style="padding-top:0; margin-top: 10px;">

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary"
                                    onclick="hide_compte('${nt.id_notification }')" data-dismiss="modal">
                                <spring:message code="label.Fermer"/></button>

                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        </tbody>
    </table>
</div>
<%--<c:choose>
    <c:when test="${notif!='[]'}">
        <div class="pagination pagination-lg justify-content-center" dir="ltr">
            <c:if test="${(page)>0}">
                <c:set value="${page-1}" var="page_db"/>
                <c:set value="${totalPage-1}" var="page_LAST"/>
            </c:if>
            <c:if test="${(page)<=0}">
                <c:set value="0" var="page_db"/>
                <c:set value="0" var="page_LAST"/>
            </c:if>

            <a style="background-color: #2196f3     ;text-align: center;background-size: 100% 100%" onclick="listAlimentation(0,6,'${type}','${statutEnc}')" class="pageStyle"><i class="mdi mdi-arrow-collapse-left m-0"></i></a>
            <a  style="background-color: #2196f3   !important;" onclick="listAlimentation(${page_db},6,'${type}','${statutEnc}')" class="pageStyle">&laquo;</a>

            <c:set var="salary" value="${totalPage-page-1}"/>
            <c:choose>
                <c:when test="${salary>5 }">
                    <c:set var="toAdd" value="3"/>
                </c:when>
                <c:otherwise>
                    <c:set var="toAdd" value="${totalPage-page-1}"/>
                </c:otherwise>
            </c:choose>

            <c:if test="${totalPage>0}">
                <c:forEach begin="${page}" end="${page+toAdd}" var="c">
                    <a style="background-color: #2196f3   !important;" onclick="listAlimentation(${c},6,'${type}','${statutEnc}')"  ${c==number ? 'class="  pageStyle"' : 'class=" pageStyle1"'}>${c+1}</a>
                </c:forEach>
            </c:if>
            <c:if test="${(page)>=(totalPage-1)}">
                <c:set value="${totalPage-1}" var="page_end"/>
            </c:if>

            <c:if test="${(page)<(totalPage-1)}">
                <c:set value="${page+1}" var="page_end"/>
            </c:if>

            <a style="background-color: #2196f3   !important;" onclick="listAlimentation(${page_end},6,'${type}','${statutEnc}')" class="pageStyle">&raquo;</a>
            <a style="background-color: #2196f3     ;text-align: center;background-size: 100% 100%" onclick="listAlimentation(${totalPage-1},6,'${type}','${statutEnc}')" class="pageStyle"><i class="mdi mdi-arrow-collapse-right m-0"></i></a>

        </div>
    </c:when>
    <c:otherwise>

        <h4 style="color:#1A6896;text-align: center"><spring:message
                code="label.Ilnyaaucuneenregistrement"/></h4>
    </c:otherwise>
</c:choose>--%>

<jsp:include page="../../includes/footer.jsp" />


