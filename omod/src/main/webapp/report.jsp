<%--
  Created by IntelliJ IDEA.
  User: kinyua
  Date: 6/11/15
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ include file="header.jsp" %>

<!-- Dashboard Wrapper starts -->
<div class="dashboard-wrapper">

    <!-- Top Bar starts -->
    <div class="top-bar">
        <div class="page-title">
            MINISTRY OF HEALTH<br>
            HEALTH FACILITY MONTHLY SUMMARY REPORT
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
                       <table> <h4 class="heading "> <tr><td><h5>County:</h5> TEST</td><td><h5>Sub County:</h5> TEST</td></tr>
                        <tr><td><h5>Facility Name:</h5>TEST HOSPITAL</td></tr>
                        <tr><td><h5>Facility type:</h5>Level 2</td></tr></h4>
                           <tr><td></td><td></td></tr>
                           <tr><td>Beginning Date</td><td>End Date</td></tr>
                           <tr><td><div class="form-group">
                               <div class='input-group date' id='datetimepicker3'>
                                   <input type='text' name="minDate" class="form-control" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                               </div>
                           </div></td><td><div class="form-group">
                               <div class='input-group date' id='datetimepicker3'>
                                   <input type='text' name="maxDate" class="form-control" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                                   </form>
                               </div>
                           </div></td><td><form action="<c:url value='/module/pharmacy/viewtimedreport.form'/>" method="get">
                               <button type="submit" class="btn btn-success">submit
                               </button></td></tr>
                        </table>
                    </div>
                </div>

            </div>
            <!-- Row ends -->

            <div class="blog-body">
                <table class="table no-margin">
                    <thead>
                    <tr>
                        <th>Drug name</th>
                        <th>Quantities In Stock</th>
                        <th>Total Quantities Dispensed</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:set var="totalDispensed" value="${0}"/>
                    <c:forEach var="drug" items="${drugList}" varStatus="status">
                            <tr><td>${drug.genericName}</td>
                                <td>${drug.unitsInStock}</td>
                                <%--<td>${drug.id}</td>--%>
                                <c:forEach var="drug1" items="${dispenseDrugList}" varStatus="status">
                                    <c:if test="${drug1.issueStatus == true && drug1.pharmacy.id==drug.id}">
                                        <c:set var="totalDispensed" value="${totalDispensed + drug1.unitsDispensed}" />
                                    </c:if>
                                </c:forEach>
                                <td>${totalDispensed}</td>
                                <c:set var="totalDispensed" value="${0}"/>
                            </tr>
                    </c:forEach>

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