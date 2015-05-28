<%@ include file="header.jsp"%>

<!-- Dashboard Wrapper starts -->
<div class="dashboard-wrapper">

<!-- Top Bar starts -->
<div class="top-bar">
    <div class="page-title">
        Pharmacy
    </div>

</div>
<!-- Top Bar ends -->

<!-- Main Container starts -->
<div class="main-container">

<!-- Container fluid Starts -->
<div class="container-fluid">


    <div class="row">

    <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="panel">
    <div class="panel-heading">
        <h4 class="panel-title">Drug List</h4>
    </div>
    <div class="panel-body">
    <div class="table-responsive">
    <div id="dt_example" class="table-responsive example_alt_pagination clearfix">
    <table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">
    <thead>
    <tr>

        <th style="width:15%">Name(Generic)</th>
        <th style="width:15%">Brand Name</th>
        <th style="width:40%">Units in Stock</th>
        <th style="width:10%">D.O.A of Last Batch</th>
        <th style="width:10%">Edit drug details</th>
        <th style="width:10%">Add Stock</th>
    </tr>
    </thead>
    <tbody>

    <tr class="gradeC">
        <td>
            paracetamol
        </td>
        <td>panadol</td>
        <td>60,000</td>
        <td>
            10/05/2015
        </td>
        <td>
            <button type="button" class="btn btn-success"><i class="fa fa-edit"></i> Edit</button>
            <button type="button" class="btn btn-success"><i class="fa fa-plus"></i> Add Stock</button>
        </td>

    </tr>
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

<%@ include file="footer.jsp"%>