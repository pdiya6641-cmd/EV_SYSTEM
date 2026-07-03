<%@include file="vheader.jsp" %> 
<%@include file="connect.jsp" %>
<!-- layout_border start -->
<div class="container-fluid">
   <div class="layout_border">
      <!-- vagetables section start -->
      <div class="vagetables_section layout_padding margin_bottom90">
         <div class="container">
            <div class="courses_section_2">
               <div class="row">
                  <%
                     stmt1=conn.createStatement();
                     
                     if(request.getParameter("brand_id")!=null)
                     {
                     int brand_id=Integer.parseInt(request.getParameter("brand_id"));
                     rs1=stmt1.executeQuery("select * from vehicle_master where brand_id='"+brand_id+"'");
                     }
                     if(request.getParameter("type_id")!=null)
                     {
                     int type_id=Integer.parseInt(request.getParameter("type_id"));
                     rs1=stmt1.executeQuery("select * from vehicle_master where type_id='"+type_id+"'");
                     }
                     
                     
                     while(rs1.next())
                     {
                  %>
                  <div class="col-md-3">
                     <div class="hover01 column">
                        <figure>
                            <a href="v_vehicles.jsp?brand_id=<%=rs1.getInt(1)%>">
                           <img  style="width: 400px;height: 250px;" src="<%="http://localhost:8080/ev_web/vehicle_photo/"+rs1.getString(3)%>">
                           </a>
                          </figure>
                           <h2 class="rate_text" style="margin-top: 10px;"><%= rs1.getString(2) %></h2>
                           <h3 class="" style="font-weight:bold; text-align:center;">Rs.<%= rs1.getString(4) %></h3> 
                    <h3 class="read_bt_2" style="margin:35px; margin-top: 8px;"><a href="v_vehicle_details.jsp?vehicle_id=<%=rs1.getInt(1)%>">EXPLORE MORE</a></h3>

                     </div>
                  </div>
                  <%
                     }
                  %>
               </div>
            </div>
         </div>
      </div>
      <!-- vagetables section end -->
   </div>
   <!-- layout_border end -->
</div>
<%@include file="footer.jsp" %>
