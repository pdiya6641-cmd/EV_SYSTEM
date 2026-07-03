<%@include file="vheader.jsp" %>
  <div class="container-fluid">
         <div class="layout_border">
            <!-- contact section start -->
            <div class="contact_section layout_padding">
               <div class="container">
                  <div class="row">
                     <div class="col-sm-12">
                        <h1 class="contact_taital">Registration</h1>
                     </div>
                  </div>
               </div>
               <div class="container">
                  <div class="contact_section_2">
                     <div class="row">
                        <div class="col-md-12">
                            <form action="user_add_code.jsp" method="post">
                           <div class="mail_section_1">
                               <input type="text" class="mail_text" placeholder="Enter Name" name="user_name" required>
                               <textarea class="massage-bt" placeholder="Enter Address" rows="5" id="comment" name="user_address" required></textarea>
                              <input type="text" class="mail_text" placeholder="Enter City" name="user_city" required> 
                              <input type="text" class="mail_text" placeholder="Enter pincode" name="user_pincode" required>
                              <input type="email" class="mail_text" placeholder="Enter Email" name="user_email" required>
                              <input type="password" class="mail_text" placeholder="Enter Password" name="user_password" required>
                              <input type="text" class="mail_text" placeholder="Enter Mobile No." name="user_mobile" required>

                              <button class="btn btn-success" style="clolor:white;">SAVE</button>
                           </div>
                                </form>
                        </div>
                        
                     </div>
                  </div>
               </div>
            </div>
            <!-- contact section end -->
            <!-- layout_border end -->
         </div>
      </div>
    
<%@include file="footer.jsp" %>