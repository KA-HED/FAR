﻿<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <c:forEach items="${lOM}" var="ed">
        <tr id="tr_${ed.ligneOmId}">
            <td>${ed.art.numMoteur}</td>
            <td>${ed.art.obsDesig}</td>
            <%--<td>${ed.art.numChassis}</td>--%>
            <td>${ed.untDest.nomAbrege}</td>
            <td>${ed.posOrigine.posAbrev}</td>
            <td>${ed.untDest.nomAbrege}</td>
            <td>${ed.posDest.posAbrev}</td>
            <td>${ed.untElementOrig.nomAbrege}</td>
            <td>${ed.untDetachDest.nomAbrege}</td>
            <td>${ed.detenteurDest.nom} ${ed.detenteurDest.prenom}</td>
            <td>${ed.etatLigne==1?'Réserve':'Disponible'}</td>
            <td>

                <button class="btn" onclick="deleteligneOm(${ed.ligneOmId})"
                        type="button" title="Supprimer">
                    <div class="icon_trash_1">
                        <span class="fas fa-trash" style="color: red"></span>
                    </div>
                </button>
            </td>
        </tr>

    </c:forEach>



