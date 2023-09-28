<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url value="/resources/" var="resources" />
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="false"%>
<table style="margin-bottom:12px;" class="table tablee table-hover">
    <thead>
    <tr>
        <th class="text-center">Indemnité</th>
        <th class="text-center">date début</th>
        <th class="text-center">date fin</th>
        <th class="text-center">Montant</th>
        <th class="text-center">Exclu du S.B.I</th>
        <th class="text-center"><spring:message code="label.Action"/></th>
    </tr>
    </thead>
    <tbody class="tbodyy table-bordered">
    <c:forEach items="${agentIndemnite}" var="f">

        <tr id="tr-${f.agentIndemniteId}">

            <td>${f.indemnite.nom}</td>
            <td>${f.datedebut_s}</td>
            <td>${f.datefin_s}</td>
            <td>${f.montant}</td>
            <td><label class="switch">
                <input name="inputR" ${f.exclu_salaire_brut_imposable ==1 ? 'checked' : ''} class="form-check-input" type="checkbox" onclick="exclu_salaire_brut_imposable(${f.agentIndemniteId})" id="id-${f.agentIndemniteId}">
                <span class="slider round"></span>
            </label>
            </td>
            <td class="text-center">
                <ul class="list-inline m-0">
                    <li class="list-inline-item text-center">
                        <a href="/api/updateAgentIndemnite/${f.agentIndemniteId}"
                           class="btn btn-outline-warning btn-sm rounded-circle tab_edit text-center"
                           type="button" data-toggle="tooltip" data-placement="top" title="Editer"
                           style="background-color: white">
                            <div class="icon_trash_1">
                                                <span class="fas fa-pencil-alt"
                                                      style="color: orange;margin-top: 10px"></span>
                            </div>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <button onclick="deleteAgentIndemnite(${f.agentIndemniteId})"
                                class="btn btn-outline-danger btn-sm rounded-circle tab_trash"
                                type="button" data-toggle="tooltip" data-placement="top"
                                title="Supprimer" style="background-color: white">
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

