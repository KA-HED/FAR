<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:forEach items="${VersionAebMarqueAEB}" var="f">
    <tr id="tr-Versions${f.versionId}">
        <td>${f.desigVersion}</td>
        <td>${f.abrVersion}</td>
        <td class="text-center">
            <ul class="list-inline m-0">
                <li class="list-inline-item">
                    <button onclick="deleteVersions(${f.versionId})"
                            class="btn"
                            type="button" data-toggle="tooltip" data-placement="top"
                            title="Supprimer">
                        <div class="icon_trash_1">
                            <span class="fas fa-trash" style="color: red"></span>
                        </div>
                    </button>
                </li>
            </ul>
        </td>
    </tr>
</c:forEach>