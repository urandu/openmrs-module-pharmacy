<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>

<table >
    <thead>
    <tr>
        <th>Generic Name</th>
        <th>Brand Name</th>
        <th>description</th>
        <th>units in stock</th>
        <th>price per unit</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="pharmacy" items="${drugList}" varStatus="status">

        <tr>

            <td>${pharmacy.genericName}</td>
            <td>${pharmacy.brandName}</td>
            <td>${pharmacy.description}</td>
            <td>${pharmacy.unitsInStock}</td>
            <td>${pharmacy.pricePerUnit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@ include file="/WEB-INF/template/footer.jsp"%>