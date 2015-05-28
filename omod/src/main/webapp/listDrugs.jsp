<%@ include file="header.jsp"%>

<!-- Dashboard Wrapper starts -->
<div class="dashboard-wrapper">

<!-- Top Bar starts -->
<div class="top-bar">
    <div class="page-title">
        Drug List
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
        <h4 class="panel-title">Invoices</h4>
    </div>
    <div class="panel-body">
    <div class="table-responsive">
    <div id="dt_example" class="table-responsive example_alt_pagination clearfix">
    <table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">
    <thead>
    <tr>
        <th style="width:3%">
            <input type="checkbox">
        </th>
        <th style="width:12%">Date</th>
        <th style="width:15%">Inv. No</th>
        <th style="width:40%">Client Details</th>
        <th style="width:15%">Status</th>
        <th style="width:15%">Balance</th>
    </tr>
    </thead>
    <tbody>
    <tr class="gradeX">
        <td>
            <input type="checkbox">
        </td>
        <td>Apr 09</td>
        <td>Inv - 1145</td>
        <td>
            <a href="invoice.html">
                Henrik - <small>Design works</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-primary">$27</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 01</td>
        <td>Inv - 5120</td>
        <td>
            <a href="invoice.html">
                Rosy - <small>Salary</small>
            </a>
        </td>
        <td>
            <span class="label label-success">Pending</span>
        </td>
        <td>
            <span class="text-warning">$600</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 1167</td>
        <td>
            <a href="invoice.html">
                Honey - <small>Consultancy fee</small>
            </a>
        </td>
        <td>
            <span class="label label-danger">Sent</span>
        </td>
        <td>
            <span class="text-info">$839</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 12</td>
        <td>Inv - 3981</td>
        <td>
            <a href="invoice.html">
                James - <small>Testing</small>
            </a>
        </td>
        <td>
            <span class="label label-warning">Success</span>
        </td>
        <td>
            <span class="text-primary">$2187</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 1167</td>
        <td>
            <a href="invoice.html">
                Honey - <small>Consultancy fee</small>
            </a>
        </td>
        <td>
            <span class="label label-primary">Sent</span>
        </td>
        <td>
            <span class="text-info">$839</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 12</td>
        <td>Inv - 3981</td>
        <td>
            <a href="invoice.html">
                James - <small>Testing</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Success</span>
        </td>
        <td>
            <span class="text-primary">$2187</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 4482</td>
        <td>
            <a href="invoice.html">
                Selva - <small>Web Design</small>
            </a>
        </td>
        <td>
            <span class="label label-warning">Warning</span>
        </td>
        <td>
            <span class="text-warning">$490</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 29</td>
        <td>Inv - 3289</td>
        <td>
            <a href="invoice.html">
                Sweet Dreams - <small>Web Developement</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$1184</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Oct 23</td>
        <td>Inv - 1093</td>
        <td>
            <a href="invoice.html">
                Kohli - <small>Photography fee</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-info">$280</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Oct 28</td>
        <td>Inv - 2289</td>
        <td>
            <a href="invoice.html">
                Nyra - <small>Fireworks</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$110</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 4482</td>
        <td>
            <a href="invoice.html">
                Selva - <small>Web Design</small>
            </a>
        </td>
        <td>
            <span class="label label-warning">Warning</span>
        </td>
        <td>
            <span class="text-warning">$490</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 29</td>
        <td>Inv - 3289</td>
        <td>
            <a href="invoice.html">
                Sweet Dreams - <small>Web Developement</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$1184</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Oct 23</td>
        <td>Inv - 1093</td>
        <td>
            <a href="invoice.html">
                Kohli - <small>Photography fee</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-info">$280</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Oct 28</td>
        <td>Inv - 2289</td>
        <td>
            <a href="invoice.html">
                Nyra - <small>Fireworks</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$110</span>
        </td>
    </tr>
    <tr class="gradeX">
        <td>
            <input type="checkbox">
        </td>
        <td>Apr 09</td>
        <td>Inv - 1145</td>
        <td>
            <a href="invoice.html">
                Henrik - <small>Design works</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-primary">$27</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 01</td>
        <td>Inv - 5120</td>
        <td>
            <a href="invoice.html">
                Rosy - <small>Salary</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$900</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 1167</td>
        <td>
            <a href="invoice.html">
                Honey - <small>Consultancy fee</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-info">$189</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 12</td>
        <td>Inv - 3981</td>
        <td>
            <a href="invoice.html">
                James - <small>Testing</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Success</span>
        </td>
        <td>
            <span class="text-primary">$2187</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 4482</td>
        <td>
            <a href="invoice.html">
                Selva - <small>Web Design</small>
            </a>
        </td>
        <td>
            <span class="label label-warning">Warning</span>
        </td>
        <td>
            <span class="text-warning">$1490</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 29</td>
        <td>Inv - 3289</td>
        <td>
            <a href="invoice.html">
                Sweet Dreams - <small>Web Developement</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$1184</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Oct 23</td>
        <td>Inv - 1093</td>
        <td>
            <a href="invoice.html">
                Kohli - <small>Photography fee</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-info">$1280</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Oct 28</td>
        <td>Inv - 2289</td>
        <td>
            <a href="invoice.html">
                Nyra - <small>Fireworks</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$310</span>
        </td>
    </tr>
    <tr class="gradeX">
        <td>
            <input type="checkbox">
        </td>
        <td>Apr 09</td>
        <td>Inv - 1145</td>
        <td>
            <a href="invoice.html">
                Henrik - <small>Design works</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-primary">$727</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 01</td>
        <td>Inv - 5120</td>
        <td>
            <a href="invoice.html">
                Rosy - <small>Salary</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$600</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 1167</td>
        <td>
            <a href="invoice.html">
                Honey - <small>Consultancy fee</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-info">$289</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 12</td>
        <td>Inv - 3981</td>
        <td>
            <a href="invoice.html">
                James - <small>Testing</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Success</span>
        </td>
        <td>
            <span class="text-primary">$2187</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 4482</td>
        <td>
            <a href="invoice.html">
                Prema - <small>Web Design</small>
            </a>
        </td>
        <td>
            <span class="label label-warning">Warning</span>
        </td>
        <td>
            <span class="text-warning">$5490</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 29</td>
        <td>Inv - 3289</td>
        <td>
            <a href="invoice.html">
                Sweet Dreams - <small>Web Developement</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$1184</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Oct 23</td>
        <td>Inv - 1093</td>
        <td>
            <a href="invoice.html">
                Nayna - <small>Photography fee</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-info">$1280</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Oct 28</td>
        <td>Inv - 2289</td>
        <td>
            <a href="invoice.html">
                Dumburu - <small>Fireworks</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$3110</span>
        </td>
    </tr>
    <tr class="gradeX">
        <td>
            <input type="checkbox">
        </td>
        <td>Apr 09</td>
        <td>Inv - 1145</td>
        <td>
            <a href="invoice.html">
                Henrik - <small>Design works</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-primary">$1127</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 01</td>
        <td>Inv - 5120</td>
        <td>
            <a href="invoice.html">
                Rosy - <small>Salary</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$600</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 1167</td>
        <td>
            <a href="invoice.html">
                Honey - <small>Consultancy fee</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-info">$489</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 12</td>
        <td>Inv - 3981</td>
        <td>
            <a href="invoice.html">
                James - <small>Testing</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Success</span>
        </td>
        <td>
            <span class="text-primary">$2187</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 4482</td>
        <td>
            <a href="invoice.html">
                Selva - <small>Web Design</small>
            </a>
        </td>
        <td>
            <span class="label label-warning">Warning</span>
        </td>
        <td>
            <span class="text-warning">$4490</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 29</td>
        <td>Inv - 3289</td>
        <td>
            <a href="invoice.html">
                Muruguppa - <small>Web Developement</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$1184</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Oct 23</td>
        <td>Inv - 1093</td>
        <td>
            <a href="invoice.html">
                Dhoni - <small>Photography fee</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-info">$280</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Oct 28</td>
        <td>Inv - 2289</td>
        <td>
            <a href="invoice.html">
                Rahul - <small>Fireworks</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$1310</span>
        </td>
    </tr>
    <tr class="gradeX">
        <td>
            <input type="checkbox">
        </td>
        <td>Apr 09</td>
        <td>Inv - 1145</td>
        <td>
            <a href="invoice.html">
                Rajeev - <small>Design works</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-primary">$227</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 01</td>
        <td>Inv - 5120</td>
        <td>
            <a href="invoice.html">
                Micky - <small>Salary</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$600</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 1167</td>
        <td>
            <a href="invoice.html">
                Muni - <small>Consultancy fee</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-info">$389</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 12</td>
        <td>Inv - 3981</td>
        <td>
            <a href="invoice.html">
                James - <small>Testing</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Success</span>
        </td>
        <td>
            <span class="text-primary">$2187</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Dec 10</td>
        <td>Inv - 4482</td>
        <td>
            <a href="invoice.html">
                Selva - <small>Web Design</small>
            </a>
        </td>
        <td>
            <span class="label label-warning">Warning</span>
        </td>
        <td>
            <span class="text-warning">$990</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 29</td>
        <td>Inv - 3289</td>
        <td>
            <a href="invoice.html">
                Sweet Dreams - <small>Web Developement</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$1184</span>
        </td>
    </tr>
    <tr class="gradeA">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 23</td>
        <td>Inv - 1093</td>
        <td>
            <a href="invoice.html">
                Kohli - <small>Photography fee</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-info">$880</span>
        </td>
    </tr>
    <tr class="gradeU">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 20</td>
        <td>Inv - 2289</td>
        <td>
            <a href="invoice.html">
                Nyra - <small>Fireworks</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$1910</span>
        </td>
    </tr>
    <tr class="gradeX">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 09</td>
        <td>Inv - 1145</td>
        <td>
            <a href="invoice.html">
                Henrik - <small>Design works</small>
            </a>
        </td>
        <td>
            <span class="label label-info">Sent</span>
        </td>
        <td>
            <span class="text-primary">$1227</span>
        </td>
    </tr>
    <tr class="gradeC">
        <td>
            <input type="checkbox">
        </td>
        <td>Nov 10</td>
        <td>Inv - 5120</td>
        <td>
            <a href="invoice.html">
                Rosy - <small>Salary</small>
            </a>
        </td>
        <td>
            <span class="label label-default">Pending</span>
        </td>
        <td>
            <span class="text-warning">$2600</span>
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