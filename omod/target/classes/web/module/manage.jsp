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

<form role="form" action="<c:url value='/module/pharmacy/register.form' />" method='get'>

    Generic Name:
    <br>
    <input type="text"  placeholder="generic name" name="genericName" size="30" required><br>
    Brand Name:<br>
    <input type="text" placeholder="brand name" name="brandName" size="30" required><br>
    Drug description:<br>
    <input type="text"  placeholder="brief description of drug" name="description" size="30" required><br>
    price per unit:<br>
    <input type="text"  placeholder="price per unit" name="price" size="30" required><br>

    <input type="submit"  value="Register Drug">

</form>

<%@ include file="/WEB-INF/template/footer.jsp"%>