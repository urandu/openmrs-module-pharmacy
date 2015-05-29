<%@ include file="header.jsp" %>

<!-- Dashboard Wrapper starts -->
<div class="dashboard-wrapper">

    <!-- Top Bar starts -->
    <div class="top-bar">
        <div class="page-title">
            Pharmacy-Home
        </div>

    </div>
    <!-- Top Bar ends -->
    <script>

        DWRPatientService.findPatients("mino", false, objectsFound);

        function objectsFound(patients) {
            alert("There are " + patients.length + " patients named john");
        }

    </script>
    <!-- Main Container starts -->
    <div class="main-container-full">

        <!-- Container fluid Starts -->
        <div class="container-fluid">


            <div class="row">

                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="panel">
                        <div class="panel-heading">
                            Search for patient
                        </div>
                        <div class="panel-body">

                            <!-- Custom Search Starts -->
                            <div class="custom-search pull-left hidden-xs hidden-lg">
                                <input type="text" id="patientSearch" class="search-query" placeholder="Enter Patient Name or ID Number">

                            </div>
                            <!-- Custom Search Ends -->
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