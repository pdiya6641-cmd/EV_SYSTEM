<%@include file="connect.jsp" %>
<%
    
    String username="";
    int user_id=0;
    
    if(session.getAttribute("username")==null)
    {
        response.sendRedirect("index.jsp");
        
    }
    else
    {
        username=(String)session.getAttribute("username");
        
        stmt0=conn.createStatement();
        rs0=stmt0.executeQuery("select * from user_master where user_email='"+username+"'");
         
        if(rs0.next())
        {
            user_id=rs0.getInt(1);
        }
        
    }
 %>

<!DOCTYPE html>
<html>
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Vege</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- font css -->
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   </head>
   <body>
      <div class="header_section">
         <div class="">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                  <img  style="margin-right: 50px"src="icon/logo2.png" height="100px" width="100px">
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav ml-auto">
                     <li class="nav-item">
                        <a class="nav-link" href="r_home.jsp">Home</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="r_ev_vehicles.jsp">EV Vehicles</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="r_ev_accessories.jsp">EV Accessories</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="r_charging_station.jsp">Charging Station</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="r_aboutus.jsp">About</a>
                     </li>
                    
                     <li class="nav-item">
                        <a class="nav-link" href="r_contact.jsp">Contact Us</a>
                     </li>
                     <li>
                               <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="myOrdersDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        My Orders
    </a>
    <div class="dropdown-menu" aria-labelledby="myOrdersDropdown">
        <a class="dropdown-item" href="r_vehicle_myorder.jsp">Vehicle Orders</a>
        <a class="dropdown-item" href="r_acc_myorder.jsp">Accessory Orders</a>
    </div>
</li>
                             <li class="nav-item">
                        <a class="nav-link" href="logout.jsp">Logout</a>
                     </li>
                    
                  </ul>
                  <form class="form-inline my-2 my-lg-0">
                     <div class="search_icon"><i class="fa fa-search" aria-hidden="true"></i></div>
                  </form>
               </div>
            </nav>
         </div>
      </div>
      <!-- header section end -->
