<%@ include file="/WEB-INF/template/include.jsp" %>
<script src="<openmrs:contextPath/>/dwr/interface/DWRPatientService.js"></script>
<openmrs:htmlInclude file="/dwr/engine.js" ></openmrs:htmlInclude>
<openmrs:htmlInclude file="/dwr/util.js" ></openmrs:htmlInclude>
<%--<openmrs:authentication>
    <c:if test="${authenticatedUser != null}">
					<span id="userLoggedInAs" class="firstChild">
						<openmrs:message code="header.logged.in"/> ${authenticatedUser.personName}
					</span>
					<span id="userLogout">
						<a href='${pageContext.request.contextPath}/logout'><openmrs:message code="header.logout" /></a>
					</span>
					<span>
						<a href="${pageContext.request.contextPath}/options.form"><openmrs:message code="Navigation.options"/></a>
					</span>
    </c:if>
    <c:if test="${authenticatedUser == null}">
					<span id="userLoggedOut" class="firstChild">
						<openmrs:message code="header.logged.out"/>
					</span>
					<span id="userLogIn">
						<a href='${pageContext.request.contextPath}/login.htm'><openmrs:message code="header.login"/></a>
					</span>
    </c:if>
</openmrs:authentication>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Everest Admin Panel"/>
    <meta name="keywords"
          content="Admin, Dashboard, Bootstrap3, Sass, transform, CSS3, HTML5, Web design, UI Design, Responsive Dashboard, Responsive Admin, Admin Theme, Best Admin UI, Bootstrap Theme, Wrapbootstrap, Bootstrap"/>
    <meta name="author" content="Bootstrap Gallery"/>
    <link rel="shortcut icon" href="openmrs/moduleResources/pharmacy/assets/everest/img/favicon.ico">
    <title>Pharmacy Admin Panel</title>

    <openmrs:htmlInclude file="/moduleResources/pharmacy/assets/everest/js/jquery.js"/>
    <!-- Bootstrap CSS -->

    <openmrs:htmlInclude file="/moduleResources/pharmacy/assets/everest/css/bootstrap.css"/>

    <!-- Animate CSS -->

    <openmrs:htmlInclude file="/moduleResources/pharmacy/assets/everest/css/animate.css"/>

    <!-- Alertify CSS -->

    <openmrs:htmlInclude file="/moduleResources/pharmacy/assets/everest/css/alertify/alertify.core.css"/>

    <openmrs:htmlInclude file="/moduleResources/pharmacy/assets/everest/css/alertify/alertify.default.css"/>

    <!-- Main CSS -->


    <openmrs:htmlInclude file="/moduleResources/pharmacy/assets/everest/css/main.css"/>
    <!-- Datepicker CSS -->

    <openmrs:htmlInclude file="/moduleResources/pharmacy/assets/everest/css/datepicker.css"/>
    <!-- Font Awesome -->

    <openmrs:htmlInclude file="/moduleResources/pharmacy/assets/everest/fonts/font-awesome.min.css"/>
    <!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>

    <openmrs:htmlInclude file="/moduleResources/pharmacy/assets/everest/js/html5shiv.js"/>

    <openmrs:htmlInclude file="/moduleResources/pharmacy/assets/everest/js/respond.min.js"/>
    <![endif]-->

</head>

<body>

<!-- Header Start -->
<header>

    <!-- Logo starts -->
    <div class="logo">
        <a href="#">
            <img src="/openmrs/moduleResources/pharmacy/assets/everest/img/logo.png" alt="logo">
					<span class="menu-toggle hidden-xs">
						<i class="fa fa-bars"></i>
					</span>
        </a>
    </div>
    <!-- Logo ends -->

   <%-- <!-- Custom Search Starts -->
    <div class="custom-search pull-left hidden-xs hidden-sm">
        <input type="text" class="search-query" placeholder="Search here">
        <i class="fa fa-search"></i>
    </div>
    <!-- Custom Search Ends -->--%>

    <!-- Mini right nav starts -->
    <div class="pull-right">
        <ul id="mini-nav" class="clearfix">
            <li class="list-box hidden-lg hidden-md hidden-sm" id="mob-nav">
                <a href="#">
                    <i class="fa fa-reorder"></i>
                </a>
            </li>

            <li class="list-box dropdown hidden-xs">
                <a id="drop5" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-th"></i>
                </a>
                <span class="info-label success-bg animated rubberBand">6</span>
                <ul class="dropdown-menu fadeInDown animated quick-actions">
                    <li class="plain">Recently Viewed</li>
                    <li>
                        <a href="profile.html">
                            <i class="fa fa-file-word-o text-success"></i>

                            <p>Profile</p>
                        </a>
                    </li>
                    <li>
                        <a href="gallery.html">
                            <i class="fa fa-image text-danger"></i>

                            <p>Gallery</p>
                        </a>
                    </li>
                    <li>
                        <a href="timeline.html">
                            <i class="fa fa-list-ol text-info"></i>

                            <p>Timeline</p>
                        </a>
                    </li>
                    <li>
                        <a href="graphs.html">
                            <i class="fa fa-map-marker text-warning"></i>

                            <p>Charts</p>
                        </a>
                    </li>
                    <li>
                        <a href="editor.html">
                            <i class="fa fa-pencil text-danger"></i>

                            <p>Editor</p>
                        </a>
                    </li>
                    <li>
                        <a href="blog.html">
                            <i class="fa fa-file-text text-success"></i>

                            <p>Blog</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="list-box dropdown hidden-xs">
                <a id="drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-bell"></i>
                </a>
                <span class="info-label danger-bg animated rubberBand">4</span>
                <ul class="dropdown-menu bounceIn animated messages">
                    <li class="plain">
                        Messages
                    </li>
                    <li>
                        <div class="user-pic">
                            <img src="/openmrs/moduleResources/pharmacy/assets/everest/img/user4.jpg" alt="User">
                        </div>
                        <div class="details">
                            <strong class="text-danger">Wilson</strong>
                            <span>Uploaded 28 new files yesterday.</span>

                            <div class="progress progress-xs no-margin">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="90"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="user-pic">
                            <img src="/openmrs/moduleResources/pharmacy/assets/everest/img/user1.jpg" alt="User">
                        </div>
                        <div class="details">
                            <strong class="text-danger">Adams</strong>
                            <span>Got 12 new messages.</span>

                            <div class="progress progress-xs no-margin">
                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="50"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="user-pic">
                            <img src="/openmrs/moduleResources/pharmacy/assets/everest/img/user3.jpg" alt="User">
                        </div>
                        <div class="details">
                            <strong class="text-info">Sam</strong>
                            <span>Uploaded new project files today.</span>

                            <div class="progress progress-xs no-margin">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="70"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 70%;">
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="user-pic">
                            <img src="/openmrs/moduleResources/pharmacy/assets/everest/img/user5.jpg" alt="User">
                        </div>
                        <div class="details">
                            <strong class="text-info">Jennifer</strong>
                            <span>128 new purchases last 3 hours.</span>

                            <div class="progress progress-xs no-margin">
                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="30"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </li>
            <li class="list-box user-profile hidden-xs">
                <a href="login.html" class="user-avtar animated rubberBand">
                    <img src="/openmrs/moduleResources/pharmacy/assets/everest/img/user4.jpg" alt="user avatar">
                </a>
            </li>
        </ul>
    </div>
    <!-- Mini right nav ends -->

</header>
<!-- Header ends -->

<!-- Left sidebar starts -->
<aside id="sidebar">

    <!-- Current User Starts -->
    <div class="current-user">
        <div class="user-avatar animated rubberBand">
            <img src="/openmrs/moduleResources/pharmacy/assets/everest/img/user4.jpg" alt="Current User">
            <span class="busy"></span>
        </div>
        <div class="user-name">Welcome, ${user.familyName} (${user.systemId})</div>
        <ul class="user-links">

            <li>
                <a href="login.html">
                    <i class="fa fa-sign-out text-danger"></i>
                </a>
            </li>
        </ul>
    </div>
    <!-- Current User Ends -->

    <!-- Menu start -->
    <div id='menu'>
        <ul>

            <li class="highlight">
                <a href='pharmacyHome.form'>
                    <i class="fa fa-home"></i>
                    <span>Pharmacy Home</span>
                    <%--<span class="current-page"></span>--%>
                </a>
            </li>
            <li class="highlight">
                <a href='cashierHome.form'>
                    <i class="fa fa-home"></i>
                    <span>Cashier Home</span>
                    <%--<span class="current-page"></span>--%>
                </a>
            </li>
            <li class="highlight">
                <a href='listDrugs.form'>
                    <i class="fa fa-desktop"></i>
                    <span>Drug Management</span>
                    <%--<span class="current-page"></span>--%>
                </a>
            </li>
        </ul>
    </div>
    <!-- Menu End -->

    <!-- Freebies Starts -->
    <div class="freebies">

        <!-- Sidebar Extras -->
        <div class="sidebar-addons">
            <ul class="views">
                <%--<li>
                    <i class="fa fa-circle-o text-success"></i>
                    <div class="details">
                        <p>Signups</p>
                    </div>
                    <span class="label label-success">8</span>
                </li>
                <li>
                    <i class="fa fa-circle-o text-info"></i>
                    <div class="details">
                        <p>Users Online</p>
                    </div>
                    <span class="label label-info">7</span>
                </li>
                <li>
                    <i class="fa fa-circle-o text-danger"></i>
                    <div class="details">
                        <p>Images Uploaded</p>
                    </div>
                    <span class="label label-danger">4</span>
                </li>--%>
            </ul>
        </div>

    </div>
    <!-- Freebies Starts -->

</aside>
<!-- Left sidebar ends -->
