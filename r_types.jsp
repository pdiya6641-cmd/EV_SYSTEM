<%@include file="rheader.jsp" %> 
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
                     rs1=stmt1.executeQuery("select * from vehicle_type");
                     while(rs1.next())
                     {
                  %>
                  <div class="col-md-4">
                     <div class="hover01 column">
                         <div class="box2">
                             <a href="r_vehicles.jsp?type_id=<%=rs1.getInt(1)%>">
                             <h3 class="rate_text" style="font-size: 35px; text-align: center;font-family: monospace;"><%= rs1.getString(2)%></h3>
                             </a>
                         </div>

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
