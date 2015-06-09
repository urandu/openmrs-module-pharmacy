
<%@ include file="header.jsp" %>

<openmrs:require privilege="View Patients" otherwise="/login.htm" redirect="/index.htm" />
<!-- Dashboard Wrapper starts -->
<div class="dashboard-wrapper">

    <!-- Top Bar starts -->
    <div class="top-bar">
        <div class="page-title">
            Patient-Panel (${patient.familyName},${patient.middleName} ${patient.givenName})
        </div>

    </div>
    <!-- Top Bar ends -->
    <script>




    </script>
    <!-- Main Container starts -->
    <div class="main-container-full">

        <!-- Container fluid Starts -->
        <div class="container-fluid">

            <!-- Row starts -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-sx-12">
                    <div class="panel-blue">
                        <h4 class="heading "> NAME:${patient.familyName},${patient.middleName} ${patient.givenName} || ID: ${patient.patientId} || Age: ${patient.age}</h4>
                    </div>
                </div>

            </div>
            <!-- Row ends -->

            <!-- Row Starts -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="blog">
                        <div class="blog-header">
                            <h5 class="blog-title">Dispensed drugs</h5>
                        </div>
                        <div class="blog-body">
                            <table class="table no-margin">
                                <thead>
                                <tr>
                                    <th>Drug name</th>
                                    <th>Units To issue</th>
                                    <th>price per unit</th>
                                    <th>unit total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:set var="total" value="${0}"/>
                                <c:forEach var="drug" items="${dispenseDrugList}" varStatus="status">
                                    <tr>
                                        <td>${drug.pharmacy.genericName}</td>
                                        <td>${drug.unitsDispensed}</td>
                                        <td>${drug.pharmacy.pricePerUnit}</td>
                                        <td>${(drug.unitsDispensed)*(drug.pharmacy.pricePerUnit)}</td>
                                        <c:if test="${drug.paymentStatus = 0}">
                                            <td>NOT PAID</td>>
                                        </c:if>
                                        <c:if test="${drug.paymentStatus = 1}">
                                            <td>PAID</td>>
                                        </c:if>
                                    </tr>
                                    <c:set var="total" value="${total + drug.unitsDispensed*drug.pharmacy.pricePerUnit}" />
                                </c:forEach>
                                <tr><td></td><td></td><th>TOTAL</th><td>${total}</td></tr>


                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
            <!-- Row Ends -->

        </div>




    </div>
    <!-- Container fluid ends -->
</div>
<!-- Main Container ends -->

<%--<!-- Right sidebar starts -->
<div class="right-sidebar">



</div>
<!-- Right sidebar ends -->--%>

<%@ include file="footer.jsp" %>