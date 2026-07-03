<%@include file="vheader.jsp" %>
<%@include file="connect.jsp" %>
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
                        <a href="v_vehicles.jsp?vehicle_id=<%=rs1.getInt(1)%>">
                   <img  style="width: 400px;height: 300px;" src="<%="http://localhost:8080/ev_web/vehicle_photo/"+rs1.getString(3)%>">

                        </a>
                        </figure>
                    </div>
                    </div>

                    <div class="col-md-8">
                        <p style="border-bottom-style:double; font-family:identifier; background-color: chocolate; color:white;font-size: 25px;font-weight: bold;text-transform: uppercase;"><%= rs1.getString("vehicle_name") %></p>
                            
                        <p class="" ><span style="font-weight:bold">Price: </span><%= rs1.getString("vehicle_price") %></p>
                            <p class="" style="color:gray"><span style="font-weight:bold">Description:</span> <%= rs1.getString("vehicle_description") %></p>
                            
                               
                            </center>
                    
                </div>
                            <%
                                }
                            %>
            </div>
  
            <div class="row">
                  
                <div class="col-md-12">
                    <h2 style="border-bottom:double;font-family: identifier;background-color: chocolate; color:white;">User Review</h2>
                </div>
            
                        <%
                            stmt1=conn.createStatement();
                            rs1=stmt1.executeQuery("select * from vehicle_feedback_master where vehicle_id='"+vehicle_id+"'");
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
                            pstmt1.setInt(1,rs1.getInt(4));
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
