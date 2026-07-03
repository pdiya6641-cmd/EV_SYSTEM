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
                     rs1=stmt1.executeQuery("select * from ev_accessories_category");
                     while(rs1.next()) {
                  %>
                  <div class="col-md-12">
                     <div class="cat-box">
                        <figure>
                           <img  style="width:200px;height: 150px;" src="<%="http://localhost:8080/ev_web/cat_photo/"+rs1.getString(4)%>" >
                        </figure>
                        <h3 class="rate_text"><%= rs1.getString(2) %></h3>
                        <h3 class="harshal_text" style="margin-left: 20px"><%= rs1.getString(3) %></h3> 
                        <h3 class="read_bt_2"><a href="v_accessories.jsp?cat_id=<%=rs1.getInt(1)%>">SHOW MORE</a></h3>
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
