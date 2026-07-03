
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
                            
                            <form role="form" action="EV_accessories_category_add_code.jsp" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Enter Category Name</label>
                                            <input class="form-control" type="text" name="cat_name"/>
                                        </div>
                                
                                
                                <div class="form-group">
                                            <label>Enter Category description </label>
                                            <textarea class="form-control" type="text" rows="5" name="cat_description" ></textarea>
                                        </div>
                                 
                                 <div class="form-group">
                                            <label>Select Category photo</label>
                                            <input class="form-control" type="file" name="cat_photo"/>
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