<%@include file="vheader.jsp" %> 
<%@include file="connect.jsp" %>
<!-- layout_border start -->
      <div class="container-fluid">
         <div class="layout_border">
<!-- banner section start --> 
<div class="banner_section layout_padding">
   <div class="container-fluid">
      <div id="main_slider" class="carousel slide" data-ride="carousel">
         <div class="carousel-inner">
            <div class="carousel-item active">
               <div class="row">
                  <div class="col-sm-6">
                     <div class="banner_taital_main">
                         <h1 class="banner_taital">MG Marvel R</h1><br>
                        <p class="banner_text">The MG Marvel R is a compact, luxury, and technologically advanced electric SUV with a focus on performance and spaciousness, featuring a 4-wheel drive system, a powerful tri-motor drive, and a large touchscreen for an integrated digital experience.</p>
                        </div>
                  </div>
                  <div class="col-sm-6">
                      <div class="banner_img"><img src="images/mg_marvel.jpg" style="margin-bottom: 15px; margin-top: 15px; height: 400px; width: 400px;" ></div>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="row">
                  <div class="col-sm-6">
                     <div class="banner_taital_main">
                        <h1 class="banner_taital">OBEN RORR</h1>
                        <p class="banner_text">The Oben Rorr is a high-performance electric bike, designed and manufactured by the Bangalore-based electric bike company Oben Electric, known for its performance, speed, efficiency, and style, offering an eco-friendly commuting alternative.</p>
                     </div>
                  </div>
                  <div class="col-sm-6">
                     <div class="banner_img"><img src="images/bike.jpg"  style="margin-bottom: 15px; margin-top: 15px; height: 400px; width: 400px;"></div>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="row">
                  <div class="col-sm-6">
                     <div class="banner_taital_main">
                        <h1 class="banner_taital">CHETAK</h1>
                        <p class="banner_text">The Bajaj Chetak 3501 is powered by Motor. The Bajaj Chetak 3501 takes to get fully charged its 3.5 Kwh battery . The Price of Bajaj Chetak 3501starts at Rs 1.42 Lakh and goes up to Rs 1.47 Lakh (ex-showroom, Delhi). It is available in two variants, Standard and TecPac.</p>
                        </div>
                  </div>
                  <div class="col-sm-6">
                     <div class="banner_img"><img src="images/scooter.jpg"  style="margin-bottom: 15px; margin-top: 15px; height: 400px; width: 400px;"></div>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="row">
                  <div class="col-sm-6">
                     <div class="banner_taital_main">
                        <h1 class="banner_taital">MAXIMA C</h1>
                        <p class="banner_text">The Bajaj Maxima C EV is a 3-wheeled electric commercial vehicle designed for cargo hauling, offering a powerful electric motor and features like quick charging and a durable build.</p>
                        </div>
                  </div>
                  <div class="col-sm-6">
                     <div class="banner_img"><img src="images/tiro.jpg"  style="margin-bottom: 15px; margin-top: 15px; height: 400px; width: 400px;"></div>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="row">
                  <div class="col-sm-6">
                     <div class="banner_taital_main">
                        <h1 class="banner_taital">XCIENT FUEL CELL</h1>
                        <p class="banner_text">The Hyundai XCIENT Fuel Cell is a zero-emission, hydrogen-powered, heavy-duty truck, known for its long range (over 400 km), efficient operation, and reduced operational costs compared to diesel trucks.</p>
                        </div>
                  </div>
                  <div class="col-sm-6">
                     <div class="banner_img"><img src="images/truck.jpg"  style="margin-bottom: 15px; margin-top: 15px; height: 400px; width: 400px;"></div>
                  </div>
               </div>
            </div>
         </div>
         <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
         <img src="images/arrow-left.png">
         </a>
         <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
         <img src="images/arrow-right.png">
         </a>
      </div>
   </div>
</div>
             <!-- banner section end -->
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
                            <a href="r_vehicles.jsp?brand_id=<%=rs1.getInt(1)%>">
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
      <%@include file="footer.jsp" %>