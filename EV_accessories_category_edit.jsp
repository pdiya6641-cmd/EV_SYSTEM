<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<%
    int cat_id = Integer.parseInt(request.getParameter("cat_id"));
    PreparedStatement pstmt1 = conn.prepareStatement("SELECT * FROM EV_accessories_category WHERE cat_id = ?");
    pstmt1.setInt(1, cat_id);
    ResultSet rs1 = pstmt1.executeQuery();
%>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"></h4>
                <div class="col-md-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">EV Accessories Category Edit Details</div>
                        <div class="panel-body">
                            <form role="form" action="EV_accessories_category_edit_code.jsp" method="post" enctype="multipart/form-data">
                                <%
                                    while(rs1.next()) {
                                %>
                                <div class="form-group">
                                    <label>Category Name</label>
                                    <input class="form-control" type="hidden" value="<%= rs1.getString(1) %>" name="cat_id"/>
                                    <input class="form-control" type="text" value="<%= rs1.getString(2) %>" name="cat_name"/>
                                </div>
                                <div class="form-group">
                                    <label>Category Description</label>
                                    <textarea class="form-control" rows="5" name="cat_description"><%= rs1.getString(3) %></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Select Category Photo</label>
                                    <input class="form-control" type="hidden" name="old_photo" value="<%= rs1.getString(4) %>">
                                    <img width="100px" height="100px" src="<%="http://localhost:8080/ev_web/cat_photo/" + rs1.getString(4) %>">
                                    <input class="form-control" type="file" name="cat_photo"/>
                                </div>
                                <center><button type="submit" class="btn btn-info">Send</button></center>
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

