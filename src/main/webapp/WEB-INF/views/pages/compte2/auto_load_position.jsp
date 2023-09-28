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
        <th class="text-center">Position</th>
        <th class="text-center">date début</th>
        <th class="text-center">date Fin</th>
        <%--<th class="text-center"><spring:message code="label.Action"/></th>--%>
    </tr>
    </thead>
    <tbody class="tbodyy table-bordered">
    <c:forEach items="${agentPosition}" var="f">

        <tr id="tr-${f.agentPositionId}" style="background-color: ${f.etat=="0"?"#c9d4dd7a":"#ecffde" };">

            <td>${f.position.nom}</td>
            <td>${f.datedebut_s} </td>
            <td>${f.datefin_s} </td>
        </tr>
    </c:forEach>
    </tbody>
</table>