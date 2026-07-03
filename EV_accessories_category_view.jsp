
<%@include file="connect.jsp" %>
<script>
    function deletedata(cat_id)
    {
        if(confirm("Are you sure you want to delete this record?"))
        {
            window.location.href="EV_accessories_category_view.jsp?cat_id="+cat_id;      
        }
    }
</script>

<%
    if(request.getParameter("cat_id")!=null)
    {
        int cat_id=Integer.parseInt(request.getParameter("cat_id"));
        pstmt1=conn.prepareStatement("delete from EV_accessories_category where cat_id=?");
        pstmt1.setInt(1,cat_id);
        pstmt1.executeUpdate();
    }
 %>
 
<%@include file="header.jsp" %>
<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"> EV Accessories Category View</h4>
            </div>
                   <div class="col-md-12">
                       <table  class="table table-bordered table-hover">
                           <tr>
                               <th>Category ID</th>
                               <th>Category Name</th>
                               <th>Category Description</th>
                                <th>Category Photo</th>

                               <th>Edit</th>
                               <th>Delete</th>
                           </tr>
                           <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from EV_accessories_category");
                        while(rs1.next())
                        {
                    %>

                           <tr>
                        <td><%=rs1.getInt(1)%></td>
                        <td><%=rs1.getString(2)%></td>
                        <td><%=rs1.getString(3)%></td>
                         <td><img width="100px" height="100px" src="<%="http://localhost:8080/ev_web/cat_photo/"+rs1.getString(4)%>"</td>
                         <% int cat_id=rs1.getInt(1); %>
                    <td><a class="btn btn-success" href="EV_accessories_category_edit.jsp?cat_id=<%=rs1.getInt(1)%>">Edit</a></td>
                    <td><button class="btn btn-danger" onclick="deletedata(<%=cat_id%>)">Delete</button></td>
                          </tr>
                          <%
                              }
                            %>
                       </table>
                       
                   </div>
               </div>
                </div>
            </div>

    
    
<%@include file="footer.jsp" %>