<%@ include file="header.jsp" %>

<openmrs:require privilege="View Patients" otherwise="/login.htm" redirect="/index.htm" />
<!-- Dashboard Wrapper starts -->
<div class="dashboard-wrapper">

    <!-- Top Bar starts -->
    <div class="top-bar">
        <div class="page-title">
            Patient-Panel
        </div>

    </div>
    <!-- Top Bar ends -->
    <script>




    </script>
    <!-- Main Container starts -->
    <div class="main-container-full">

        <!-- Container fluid Starts -->
        <div class="container-fluid">


            <div class="row">




                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="panel ">
                        <div class="panel-heading">

                        </div>
                    </div>
                    <div id="patientListing" class="panel-body ">
                        <div class="table-responsive">
                            <div id="dt_example" class="table-responsive example_alt_pagination clearfix">
                                <table class="table table-condensed table-striped table-hover table-bordered pull-left"
                                       id="data-table">
                                    <thead>
                                    <tr>

                                        <th style="width:10%">Identifier</th>
                                        <th style="width:10%">Given Name</th>
                                        <th style="width:10%">Middle Name</th>
                                        <th style="width:10%">Family Name</th>
                                        <th style="width:10%">Age</th>
                                        <th style="width:10%">Gender</th>
                                        <th style="width:10%">Birth Date</th>


                                    </tr>
                                    </thead>
                                    <tbody>

                                    <%--<tr class="gradeC">

                                        <td>No patient found</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>



                                    </tr>--%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <!-- Spacer starts -->
        <div class="spacer">


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

<%--<!-- Right sidebar starts -->
<div class="right-sidebar">



</div>
<!-- Right sidebar ends -->--%>

<%@ include file="footer.jsp" %>