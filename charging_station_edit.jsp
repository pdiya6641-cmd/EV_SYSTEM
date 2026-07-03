
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>
<%
        int station_id=Integer.parseInt(request.getParameter("station_id"));
        pstmt1=conn.prepareStatement("select * from charging_station where station_id=?");
        pstmt1.setInt(1,station_id);
       rs1= pstmt1.executeQuery();
    
 %>

<div class="content-wrapper">                                                                               						
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"></h4>
                <div class="col-md-12 ">                                
               <div class="panel panel-info">
                        <div class="panel-heading">
                           Charging station Details
                        </div>
                        <div class="panel-body">
                            
                            <form role="form" action="charging_station_edit_code.jsp" method="post" >
                                <%
                                    while(rs1.next())
                                    {
                                  %>

                                  
                                        
                               <div class="form-group">
                                   <input class="form-control" type="hidden" value="<%=rs1.getString(1)%>" name="station_id"/>

                                   <label>Station Name </label>
                                       <input class="form-control" type="text" value="<%=rs1.getString(2)%>" name="station_name"/>
                                 </div>
                                
                                
                               <div class="form-group">
                                            <label>Address </label>
                                            <textarea class="form-control" rows="5"  name="station_address"><%=rs1.getString(3)%></textarea>
                                            
                                </div>
                            
                                 
                                 <div class="form-group">
                                            <label>City </label>
                                            <input class="form-control" type="text" value="<%=rs1.getString(4)%>" name="station_city"/>
                                        </div>
                                
                                        <div class="form-group">
                                            <label>Status </label>
                                            <input class="form-control" type="text" value="<%=rs1.getString(5)%>" name="station_status"/>
                                        </div>
                                
                                <div class="form-group">
                                            <label>Owner Name</label>
                                            <input class="form-control" type="text" value="<%=rs1.getString(6)%>" name="station_owner_name"/>
                                        </div>
                                
                              <div class="form-group">
                                            <label>Contact No. </label>
                                            <input class="form-control" type="text" value="<%=rs1.getString(7)%>" name="station_contact_no"/>
                                        </div>
                                
                                 
                                <center> <button type="submit" class="btn btn-info" >Send</button></center>
                                    
                             <%
                              }
                            %>
                           </form>
                            </div>
                        </div>
                            </div>
                
                            </div>

        </div>
         </div>
</div>
    
<%@include file="footer.jsp" %>