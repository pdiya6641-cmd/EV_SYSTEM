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
                     rs1=stmt1.executeQuery("select * from vehicle_brand");
                     while(rs1.next())
                     {
                  %>
                  <div class="col-md-3">
                     <div class="hover01 column">
                        <figure>
                            <a href="v_vehicles.jsp?brand_id=<%=rs1.getInt(1)%>">
                           <img  style="width: 400px;height: 250px;" src="<%="http://localhost:8080/ev_web/brand_logo/"+rs1.getString(3)%>">
                           </a>
                          </figure>
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
