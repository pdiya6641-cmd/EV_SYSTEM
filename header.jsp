<%
    if(session.getAttribute("username")==null)
    {
        response.sendRedirect("index.jsp");
        
    }
    else
    {
        String username=(String)session.getAttribute("username");
    }
 %>




<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
    <div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">

    <img src="assets/img/a_logo.jpg" style="width: 70px; height: 70px;">
                </a>

            </div>

            <div class="right-div">
                <a href="logout.jsp" class="btn btn-danger pull-right">LOG ME OUT</a>
            </div>
        </div>
    </div>
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="admin_home.jsp" class="menu-top">DASHBOARD</a></li>
                            
                            <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">VEHICLE TYPE <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="vehicle_type.jsp">ADD</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="vehicle_type_view.jsp"> VIEW</a></li>
                                 </ul>
                            </li>
                            
                             <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">VEHICLE BRAND <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="vehicle_brand.jsp">ADD</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="vehicle_brand_view.jsp"> VIEW</a></li>
                                 </ul>
                            </li>
                           
                              <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">VEHICLE MASTER <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="vehicle_master.jsp">ADD</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="vehicle_master_view.jsp"> VIEW</a></li>
                                 </ul>
                            </li>
                           
                              <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">EV Accessories Category <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="EV_accessories_category.jsp">ADD</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="EV_accessories_category_view.jsp"> VIEW</a></li>
                                 </ul>
                            </li>
                           
                              <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">EV Accessories <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="EV_accessories.jsp">ADD</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="EV_accessories_view.jsp"> VIEW</a></li>
                                 </ul>
                            </li>
                           
                              <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">CHARGING STATION<i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="charging_station.jsp">ADD</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="charging_station_view.jsp"> VIEW</a></li>
                                 </ul>
                            </li>
                            
                             <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">VIEW <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="user_master_view.jsp">USER MASTER</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="vehicle_feedback_view.jsp">VEHICLE FEEDBACK MASTER</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="feedback_master_view.jsp">ACCESSORY FEEDBACK MASTER</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="vehicle_order_view.jsp">VEHICLE ORDER MASTER</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="order_master_view.jsp">ACCESSORY ORDER MASTER</a></li>

                                </ul>
                            </li>
                           
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
     <!-- MENU SECTION END-->
   