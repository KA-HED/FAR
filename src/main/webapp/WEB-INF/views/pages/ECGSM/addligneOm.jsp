<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:forEach items="${LigneOm}" var="f">
    <tr id="tr-Versions${f.ligneOmId}">
        <td>${f.art.nNomencl}</td>
        <td>${f.modeleAeb.designation}</td>
        <td>${f.untDest.nomAbrege}</td>
        <td>${f.posDest.posAbrev}</td>
        <td class="text-center">
            <ul class="list-inline m-0">
                <li class="list-inline-item">

                    <button onclick="Add_linom_to_cr(${f.ligneOmId})"
                            class="btn"
                            type="button" data-toggle="tooltip" data-placement="top"
                            title="Ajouter">
                        <div class="icon_trash_1">
                            <span class="fas fa-plus" style="color: #49ff6d"></span>
                        </div>
                    </button>
                </li>
            </ul>
        </td>
    </tr>
</c:forEach>