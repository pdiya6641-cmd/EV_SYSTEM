<%@include file="vheader.jsp" %> 
<%@include file="connect.jsp" %> 

<!-- layout_border start -->
<div class="container-fluid">
   <div class="layout_border">
      <!-- vagetables section start -->
      <div class="vagetables_section layout_padding margin_bottom90" style="margin-bottom: 10px;">
          <div class="container">
             
             <div class="row">
                 <div class="col-md-12">
                     <form action="v_charging_station.jsp" method="post">
                     <input type="text" name="search_txt"  placeholder="Enter Your City" style="width: 400px;">
                     <input type="submit" value="search" class="btn btn-info" style="color:white;  font-size: 20px; ">
                     </form>
                 </div>
                 
             </div>
             
            <div class="courses_section_2">
               <div class="row">
                  <%
                      
                      if(request.getParameter("search_txt")!=null)
                      {
                        String search_txt=request.getParameter("search_txt")+"%";  
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from charging_station where station_city like '"+search_txt+"'");
                      }
                     else
                      {
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from charging_station");
                     }
                     while(rs1.next()) {
                  %>
                  <div class="col-md-4">
                     <div class="cat-box2">
                         <h3 class="" style="font-weight: bold; font-family: cursive; background: #007fff;color:white;"><%= rs1.getString(2) %></h3><br>
                         <h4 style="font-family: identifier;"><span style="font-weight:bold; ">Address:</span><%= rs1.getString(3) %></h4>
                        <h4 style="font-family: identifier;"><span style="font-weight:bold">City:</span><%= rs1.getString(4) %></h4> 
                        <h4 style="font-family: identifier;"><span style="font-weight:bold">Status:</span><%= rs1.getString(5) %></h4> 
                        <h4 style="font-family: identifier;"><span style="font-weight:bold">Owner Name:</span><%= rs1.getString(6) %></h4> 
                        <h4 style="font-family: identifier;"><span style="font-weight:bold">Contact No:</span><%= rs1.getString(7) %></h4> 

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
