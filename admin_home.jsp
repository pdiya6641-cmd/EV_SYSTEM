<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>
<link rel="stylesheet" href="dashboard.css">
<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                
                <div class="container-fluid">
    <div class="row">
        
        <div class="col-lg-4 col-sm-6">
            <div class="card-box bg-blue">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from user_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p> USERS </p>
                </div>
                <div class="icon">
                    <i class="fa fa-users" aria-hidden="true"></i>
                </div>
                <a href="user_master_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-4 col-sm-6">
            <div class="card-box bg-green">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from acc_feedback_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p>ACCESSORY FEEDBACKS</p>
                </div>
                <div class="icon">
                    <i class="fa fa-comment-o" aria-hidden="true"></i>
                </div>
                <a href="feedback_master_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
                    
        <div class="col-lg-4 col-sm-6">
            <div class="card-box bg-orange">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from acc_order_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p>ACCESSORY ORDERS</p>
                </div>
                <div class="icon">
                    <i class="fa fa-check-square-o" aria-hidden="true"></i>
                </div>
                <a href="order_master_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
                    
         <div class="col-lg-4 col-sm-6">
            <div class="card-box bg-atoll">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from vehicle_feedback_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p>VEHICLE FEEDBACKS</p>
                </div>
                <div class="icon">
                    <i class="fa fa-comment-o" aria-hidden="true"></i>
                </div>
                <a href="vehicle_feedback_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        
        <div class="col-lg-4 col-sm-6">
            <div class="card-box bg-red">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from vehicle_order_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p>VEHICLE ORDERS</p>
                </div>
                <div class="icon">
                    <i class="fa fa-check-square-o"></i>
                </div>
                <a href="vehicle_order_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
                    
        <div class="col-lg-4 col-sm-6">
            <div class="card-box bg-dark">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from vehicle_type");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p>VEHICLE TYPE</p>
                </div>
                <div class="icon">
                    <i class="fa fa-list"></i>
                </div>
                <a href="vehicle_type_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        
         <div class="col-lg-4 col-sm-6">
            <div class="card-box bg-gold">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from vehicle_brand");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p>VEHICLE BRAND</p>
                </div>
                <div class="icon">
                    <i class="fa fa-tags"></i>
                </div>
                <a href="vehicle_brand_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
                 
        <div class="col-lg-4 col-sm-6">
            <div class="card-box bg-mulberry">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from vehicle_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p>VEHICLE</p>
                </div>
                <div class="icon">
                    <i class="fa fa-car"></i>
                </div>
                <a href="vehicle_master_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        
        <div class="col-lg-4 col-sm-6">
            <div class="card-box bg-atoll">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from EV_accessories_category");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p>EV ACCESSORIES CATEGORY</p>
                </div>
                <div class="icon">
                    <i class="fa fa-gears"></i>
                </div>
                <a href="EV_accessories_category_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        
        <div class="col-lg-4 col-sm-6">
            <div class="card-box bg-pich">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from EV_accessories");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p>EV ACCESSORIES</p>
                </div>
                <div class="icon">
                    <i class="fa fa-gear"></i>
                </div>
                <a href="EV_accessories_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
          
                    
        
        
         <div class="col-lg-4 row-sm-6">
            <div class="card-box bg-light">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from charging_station");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p>CHARGING STATION</p>
                </div>
                <div class="icon">
                    <i class="fa fa-bolt"></i>
                </div>
                <a href="charging_station_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

     </div>
    </div>

            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>