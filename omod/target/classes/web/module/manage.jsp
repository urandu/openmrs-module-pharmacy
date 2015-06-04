<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>

<table >
    <thead>
    <tr>
        <th>Generic Name</th>
        <th>Brand Name</th>
        <th>description</th>
        <th>price per unit</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="pharmacy" items="${drugList}" varStatus="status">

        <tr>

            <td>${pharmacy.genericName}</td>
            <td>${pharmacy.brandName}</td>
            <td>${pharmacy.description}</td>
            <td>${pharmacy.pricePerUnit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<table>
    <tr>
        <th>drug</th>
    </tr>
<c:forEach var="dispensed" items="${dispenseDrugList}" varStatus="status">

    <tr>
        <td>${dispensed.drugId}</td>
    </tr>
</c:forEach>
    </table>
<table>
    <tr>
        <td>
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
</td>
<td>
<form role="form" action="<c:url value='/module/pharmacy/update.form' />" method='get'>

    <br>
    <select name="genericName" required>
        <c:forEach var ="drug" items="${drugList}">
            <option value="${drug.id}">${drug.genericName}</option>
        </c:forEach>
    </select><br>

    Brand Name:<br>
    <input type="text" disabled placeholder="brand" value="brand" name="brandName" size="30" required><br>
    Drug description:<br>
    <input type="text"  disabled value="desc" name="description" size="30" required><br>
    price per unit:<br>
    <input type="text"  placeholder="price per unit" name="price" size="30" required><br>
    <input type="submit"  value="Update Drug">

</form>
    </td>
    </tr>
</table>
<%@ include file="/WEB-INF/template/footer.jsp"%>
