<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<option value=""> Choisir</option>
<c:forEach items="${SCategorieAEB}" var="ar">
    <option value="${ar.sCatId}">${ar.desigSCat}</option>
</c:forEach>
<%--<option value="2300000">Autre</option>--%>



