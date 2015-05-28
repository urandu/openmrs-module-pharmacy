<%@ include file="header.jsp"%>

<!-- Dashboard Wrapper starts -->
<div class="dashboard-wrapper">

<!-- Top Bar starts -->
<div class="top-bar">
    <div class="page-title">
        Pharmacy-Drug List
    </div>

</div>
<!-- Top Bar ends -->

<!-- Main Container starts -->
<div class="main-container-full">

<!-- Container fluid Starts -->
<div class="container-fluid">


    <div class="row">

    <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="panel">
    <div class="panel-heading">
        <button type="button" data-toggle="modal" data-target="#newDrug" class="btn btn-info"><i class="fa fa-plus"></i> Add New Drug</button>
        <!-- Modal -->
        <div class="modal fade" id="newDrug" tabindex="-1" role="dialog" aria-labelledby="myModalLabel5" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title text-info" id="myModalLabel5">New Drug</h4>
                    </div>
                    <div class="modal-body">


                        <form role="form" class="form" action="<c:url value='/module/pharmacy/newDrug.form' />" method="get">

                            <div class="form-group">
                                <label for="genericName">Generic Name:</label>
                                <input type="text" class="form-control" name="genericName" id="genericName" required>
                            </div>

                            <div class="form-group">
                                <label for="brandName">Brand Name:</label>
                                <input type="text" class="form-control" name="brandName" id="brandName" required>
                            </div>

                            <div class="form-group">
                                <label for="description">Description:</label>
                                <input type="text" class="form-control"  name="description" id="description" required>
                            </div>

                            <div class="form-group">
                                <label for="unitsInStock">Units in Stock:</label>
                                <input type="text" class="form-control" name="unitsInStock" id="unitsInStock" required>
                            </div>

                            <div class="form-group">
                                <label for="pricePerUnit">Price per Unit:</label>
                                <input type="text" class="form-control" name="pricePerUnit" id="pricePerUnit" required>
                            </div>



                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Save</button>
                        </form>
                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel-body">
    <div class="table-responsive">
    <div id="dt_example" class="table-responsive example_alt_pagination clearfix">
    <table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">
    <thead>
    <tr>

        <th style="width:10%">Name(Generic)</th>
        <th style="width:10%">Brand Name</th>
        <th style="width:10%">Price of drug</th>
        <th style="width:10%">Units in Stock</th>
        <th style="width:10%">Units dispensed</th>
        <th style="width:10%">Last Batch</th>
        <th style="width:10%">Edit drug details</th>
        <th style="width:10%">Manage Stock</th>

    </tr>
    </thead>
    <tbody>

    <tr class="gradeC">
        <td>
            paracetamol
        </td>
        <td>panadol</td>
        <td>ksh.250</td>
        <td>60,000</td>
        <td>20,000</td>
        <td>
            <a href="#">TGHD564</a>
        </td>
        <td>
            <button type="button" class="btn btn-success"><i class="fa fa-edit"></i> Edit</button>

        </td>
        <td>

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

<%@ include file="footer.jsp"%>