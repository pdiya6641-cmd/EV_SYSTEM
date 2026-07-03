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
                    
                     int cat_id=Integer.parseInt(request.getParameter("cat_id"));
                     rs1=stmt1.executeQuery("select * from ev_accessories where cat_id='"+cat_id+"'");
                     
                     while(rs1.next())
                     {
                  %>
                  <div class="col-md-4">
                     <div class="hover01 column">
                        <figure>
                            <a href="r_accessories.jsp?cat_id=<%=rs1.getInt(1)%>">
                           <img  style="width: 400px;height: 250px;" src="<%="http://localhost:8080/ev_web/accessory_photo/"+rs1.getString(3)%>">
                           </a>
                            
                          </figure>
                              <h2 class="rate_text" style="margin-top: 10px;"><%= rs1.getString(2) %></h2>
                        <h3 class="" style="font-weight:bold; text-align:center;">Rs.<%= rs1.getString(5) %></h3> 
                      <h3 class="read_bt_2" style="padding-left: 80px;"><a href="r_acc_details.jsp?accessory_id=<%=rs1.getInt(1)%>">EXPLORE MORE</a></h3>

                      
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
