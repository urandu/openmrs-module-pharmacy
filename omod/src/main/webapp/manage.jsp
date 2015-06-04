<%@ include file="header.jsp" %>

<!-- Dashboard Wrapper starts -->
<div class="dashboard-wrapper">

<<<<<<< HEAD
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
=======
    <!-- Top Bar starts -->
    <div class="top-bar">
        <div class="page-title">
            Pharmacy Panel
        </div>

    </div>
    <!-- Top Bar ends -->

    <!-- Main Container starts -->
    <div class="main-container">

        <!-- Container fluid Starts -->
        <div class="container-fluid">

            <!-- Current Stats Start -->
            <div class="current-stats">
                <div class="row">

                </div>
            </div>
            <!-- Current Stats End -->

            <!-- Spacer starts -->
            <div class="spacer">
                <!-- Row Start -->
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <!-- Widget starts -->
                        <div class="blog">
                            <div class="blog-header">
                                <h5 class="blog-title">Social Network Analysis</h5>
                            </div>
                            <div class="blog-body">

                            </div>
                        </div>
                        <!-- Widget ends -->
                    </div>
                </div>
                <!-- Row End -->

                <!-- Row Start -->
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <!-- Widget starts -->
                        <div class="blog">
                            <div class="blog-header">
                                <h5 class="blog-title">Appointments</h5>
                            </div>
                            <div class="blog-body">

                            </div>
                        </div>
                        <!-- Widget ends -->
                    </div>
                </div>
                <!-- Row End -->

                <!-- Row Start -->
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

                    </div>
                </div>
                <!-- Row End -->

                <!-- Row Starts -->
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                    </div>
                </div>
                <!-- Row Ends -->

            </div>
            <!-- Spacer ends -->

        </div>
        <!-- Container fluid ends -->
    </div>
    <!-- Main Container ends -->

    <!-- Right sidebar starts -->
    <div class="right-sidebar">


    </div>
    <!-- Right sidebar ends -->

<%@ include file="footer.jsp" %>
>>>>>>> master
