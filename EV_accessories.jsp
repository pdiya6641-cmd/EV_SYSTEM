<%-- 
    Document   : EV_accessories
    Created on : 28 Dec, 2024, 12:05:40 PM
    Author     : Yash
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"></h4>
                <div class="col-md-12 col-sm-12 col-xs-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           EV Accessories Category Details
                        </div>
                        <div class="panel-body">
                            
                            <form role="form" action="EV_accessories_add_code.jsp" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Enter Accessory name</label>
                                            <input class="form-control" type="text" name="accessory_name"/>
                                        </div>
                              
                                 <div class="form-group">
                                            <label>Select Accessory photo</label>
                                            <input class="form-control" type="file" name="accessory_photo"/>
                                        </div>
                                
                                
                                <div class="form-group">
                                            <label>Enter Accessory description </label>
                                            <textarea class="form-control" type="text" rows="5"  name="accessory_description" ></textarea>
                                        </div>
                                 
                                <div class="form-group">
                                            <label>Enter Accessory price</label>
                                            <input class="form-control" type="text" name="accessory_price"/>
                                        </div>
                              
                                <div class="form-group">
                                            <label>Enter Accessory stock quantity</label>
                                            <input class="form-control" type="text" name="accessory_stock_quantity"/>
                                        </div>
                                
                              <div class="form-group">
                                            <label>Enter Accessory warranty period</label>
                                            <input class="form-control" type="text" name="accessory_warranty_period"/>
                                        </div>
                              
                                <div class="form-group">
                                <select class="form-control" name="category_id">
                                    
                                    <option value="0">Select Category</option>
                                <%
                                    stmt1=conn.createStatement();
                                    rs1=stmt1.executeQuery("select * from ev_accessories_category");
                                    
                                    while(rs1.next())
                                    {
                                 %>
                                 <option value="<%=rs1.getInt(1)%>"><%= rs1.getString(2)%></option>
                                 <%
                                    }
                                  %>
                                </select>    
                                 </div>
                                
                                
                                
                                <center> <button type="submit" class="btn btn-info" >Send</button></center>
                            

                                    </form>
                            </div>
                        </div>
                            </div>
                
                            </div>

        </div>
         </div>
</div>
    
<%@include file="footer.jsp" %>