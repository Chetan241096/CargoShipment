<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>

<c:set var="List" value="${sessionScope.subCategoryList}"></c:set>
<c:set var="length" value="${f:length(List)}"></c:set>
[<c:forEach var="i" items="${sessionScope.subCategoryList}" varStatus="j">
{"subCategoryId":"${i.subCategoryId}","subCategoryName":"${i.subCategoryName}"}
<c:if test="${length ne j.count}">,</c:if></c:forEach>]