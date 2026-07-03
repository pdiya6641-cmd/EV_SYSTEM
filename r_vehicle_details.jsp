<%@include file="rheader.jsp" %>
<div class="container">
  
    
    <div class="row">
                    
        <div class="col-md-12" > </div>
            
        <%
                     stmt1=conn.createStatement();
                    
                     int vehicle_id=Integer.parseInt(request.getParameter("vehicle_id"));
                     rs1=stmt1.executeQuery("select * from vehicle_master where vehicle_id='"+vehicle_id+"'");
                    
                        while(rs1.next())
                        {
                     %>
                    <div class="col-md-4">
                         <div class="hover01 column">
                        <figure>
                        <a href="r_vehicles.jsp?vehicle_id=<%=rs1.getInt(1)%>">
                   <img  style="width: 400px;height: 300px;" src="<%="http://localhost:8080/ev_web/vehicle_photo/"+rs1.getString(3)%>">

                        </a>
                        </figure>
                    </div>
                    </div>

                    <div class="col-md-8">
                        <p style="border-bottom-style: double;font-family: identifier;background-color: chocolate; color:white;font-size: 25px;font-weight: bold;text-transform: uppercase;"><%= rs1.getString("vehicle_name") %></p>
                            
                        <p class="" ><span style="font-weight:bold">Price: </span><%= rs1.getString("vehicle_price") %></p>
                            <p class="" style="color:gray"><span style="font-weight:bold">Description:</span> <%= rs1.getString("vehicle_description") %></p>
                            
                             
                                 <form action="vehicle_addtocart.jsp" method="post">    
                           
                                <input type="number" name="v_order_qty" placeholder="Quantity" style="border-radius:25px; border: 2px solid  grey; width: 150px; height:35px;">
                                <input type="hidden" name="vehicle_id" value="<%=rs1.getInt(1)%>">
                                <input type="hidden" name="vehicle_price" value="<%=rs1.getString(4) %>">
                                <input type="hidden" name="user_id" value="<%=user_id%>">
                       
                             <button class="btn btn-outline-warning "  style="margin:10px; border-radius:25px; ">Add to Cart</button><br>
                              </form>
                                
                      
                            </center>
                    
                </div>
                            <%
                                }
                            %>
            </div>
  <div class="row">
                <div class="col-md-12">
                    <h1 style="font-family: identifier;background-color: chocolate; color:white;border-bottom-style: double;">Give Review</h1><hr>
                </div>
                <div class="col-md-12">
                    <form action="feedback_add_code.jsp" method="post">
                        <input type="hidden" name="user_id" value="<%=user_id%>">
                       <input type="hidden" name="vehicle_id" value="<%=vehicle_id%>">
                        
                        <textarea name="feedback_msg" cols="110" rows="2" placeholder="Type your feedback here..." style=" border: 2px solid  grey;border-radius:20px; transition:box-shadow 0.3s ease; box-shadow: 0 4px 8px rgba(0,0,0,0.2);"></textarea>
                        <button  type="submit" class="btn btn-outline-danger" style="margin-bottom: 50px;">Feedback</button>
                      </form>
                      <hr>
                </div>  
                <div class="col-md-12">
                    <h2 style="border-bottom:double;font-family: identifier;background-color: chocolate; color:white;">User Review</h2>
                </div>
            
                        <%
                            stmt1=conn.createStatement();
                           rs1=stmt1.executeQuery("select * from vehicle_feedback_master where vehicle_id='"+vehicle_id+"'");
                            %>
                            
                            <div class="col-md-2" style="border-bottom:double;font-size: 20px;font-family:initial; color:black;">DATE</div>
                             <div class="col-md-8"style="border-bottom:double;font-size: 20px;font-family:initial; color:black;">FEEDBACK MESSAGE</div>
                            <div class="col-md-2"style="border-bottom:double;font-size: 20px;font-family:initial; color:black;">USER NAME</div>
                            <hr>

                            <%
                            while(rs1.next())
                            {
                        %>
                        <div class="col-md-2">
                            <%=rs1.getString(3)%>
                         </div>
                        <div class="col-md-8">
                            <%=rs1.getString(2)%>
                         </div>
                        <div class="col-md-2">
                             <%
                            
                            pstmt1=conn.prepareStatement("select * from user_master where user_id=?");
                            pstmt1.setInt(1,user_id);
                            rs2=pstmt1.executeQuery();
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                        %>
                       
                         </div>
                         <hr>
                        <%
                            }
                         %>
                        
            </div>

            
         </div>
               
                 

     
<%@include file="footer.jsp" %>
