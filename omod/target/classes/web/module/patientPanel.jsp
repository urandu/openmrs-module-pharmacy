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

            <!-- Row starts -->
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 col-sx-12">
                    <div class="panel-blue">
                        <h4 class="heading">Panel Blue</h4>
                    </div>
                </div>

            </div>
            <!-- Row ends -->

            <!-- Row Starts -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="blog">
                        <div class="blog-header">
                            <h5 class="blog-title">Contextual classes</h5>
                        </div>
                        <div class="blog-body">
                            <table class="table no-margin">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Column heading</th>
                                    <th>Column heading</th>
                                    <th>Column heading</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="active">
                                    <td>1</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="success">
                                    <td>3</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="info">
                                    <td>5</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="warning">
                                    <td>7</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="danger">
                                    <td>9</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
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