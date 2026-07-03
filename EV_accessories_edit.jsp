
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>
<%
        int accessory_id=Integer.parseInt(request.getParameter("accessory_id"));
        pstmt1=conn.prepareStatement("select * from EV_accessories where accessory_id=?");
        pstmt1.setInt(1,accessory_id);
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
                           EV accessories Edit
                        </div>
                        <div class="panel-body">
                            
                            <form role="form" action="EV_accessories_edit_code.jsp" method="post" enctype="multipart/form-data" >
                                <%
                                    while(rs1.next())
                                    {
                                  %>
                                  
                                        <div class="form-group">
                                            <label>Accessory Name</label>
                                             <input class="form-control" type="hidden" value="<%=rs1.getInt(1)%>" name="accessory_id"/>
                                            <input class="form-control" type="text" value="<%=rs1.getString(2)%>" name="accessory_name"/>
                                        </div>
                                
                                
                                <div class="form-group">
                                            <label>Select Accessory photo</label>
                                            <input class="form-control" type="hidden" name="old_photo" value="<%=rs1.getString(3)%>" >
                                            <img width="100px" height="100px" src="<%="http://localhost:8080/ev_web/accessory_photo/"+rs1.getString(3)%>">
                                            
                                            <input class="form-control" value="<%=rs1.getString(3)%>" type="file" name="accessory_photo"/>
                                        </div>
                                        
                                   <div class="form-group">
                                            <label>Accessory Description</label>
                                            <textarea class="form-control" rows="5"  name="accessory_description"><%=rs1.getString(4)%></textarea>
                                            
                                </div>
                            
                                 
                                 <div class="form-group">
                                            <label>Accessory Price</label>
                                            <input class="form-control" type="text" value="<%=rs1.getString(5)%>" name="accessory_price"/>
                                </div>
                                
                                   <div class="form-group">
                                            <label> Accessory Stock Quantity</label>
                                            <input class="form-control" type="text" value="<%=rs1.getString(6)%>" name="accessory_stock_quantity"/>
                                  </div>
                                
                                <div class="form-group">
                                            <label>Accessory Warranty Period </label>
                                            <input class="form-control" type="text" value="<%=rs1.getString(7)%>" name="accessory_warranty_period"/>
                               </div>
                                
                              
                                  <div class="form-group">
                                <select class="form-control" name="cat_id">
                                    <option value="0">Select Category</option>
                                <%
                                    stmt1=conn.createStatement();
                                    rs1=stmt1.executeQuery("select * from EV_accessories_category");
                                    
                                    while(rs1.next())
                                    {
                                 %>
                                 <option value="<%= rs1.getInt("cat_id")%>"><%= rs1.getString("cat_name")%></option>
                                 <%
                                    }
                                  %>
                                </select>    
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