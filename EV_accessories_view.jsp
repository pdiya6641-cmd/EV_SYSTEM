
<%@include file="connect.jsp" %>
<script>
    function deletedata(accessory_id)
    {
        if(confirm("Are you sure you want to delete this record?"))
        {
            window.location.href="EV_accessories_view.jsp?accessory_id="+accessory_id;      
        }
    }
</script>


<%
    if(request.getParameter("accessory_id")!=null)
    {
        int accessory_id=Integer.parseInt(request.getParameter("accessory_id"));
        pstmt1=conn.prepareStatement("delete from EV_accessories where accessory_id=?");
        pstmt1.setInt(1,accessory_id);
        pstmt1.executeUpdate();
    }
 %>
 
<%@include file="header.jsp" %>
<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"> EV accessories View</h4>
            </div>
                   <div class="col-md-12">
                       <table  class="table table-bordered table-hover">
                           <tr>
                               <th>Accessory ID</th>
                               <th>Accessory Name</th>
                               <th>Accessory Photo</th>
                               <th>Accessory Description </th>
                               <th>Accessory Price </th>
                               <th>Accessory Stock Quantity </th>
                               <th>Accessory Warranty Period </th>
                               <th>Category Name</th>

                               <th>Edit</th>
                               <th>Delete</th>
                           </tr>
                           <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from EV_accessories");
                        while(rs1.next())
                        {
                    %>

                           <tr>
                        <td><%=rs1.getInt(1)%></td>
                        <td><%=rs1.getString(2)%></td>
                         <td><img width="100px" height="100px" src="<%="http://localhost:8080/ev_web/accessory_photo/"+rs1.getString(3)%>"</td>

                        <td><%=rs1.getString(4)%></td>
                        <td><%=rs1.getString(5)%></td>
                         <td><%=rs1.getString(6)%></td>
                        <td><%=rs1.getString(7)%></td>

                         <td>
                        <%
                            int cat_id=rs1.getInt(8);
                            pstmt1=conn.prepareStatement("select * from EV_accessories_category where cat_id=?");
                            pstmt1.setInt(1,cat_id);
                            rs2=pstmt1.executeQuery();
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                        %>
                    </td>
                   
                        <%
                           int accessory_id=rs1.getInt(1);
                        %>
                    
                    <td><a class="btn btn-success" href="EV_accessories_edit.jsp?accessory_id=<%=rs1.getInt(1)%>">Edit</a></td>
                    <td><button class="btn btn-danger" onclick="deletedata(<%=accessory_id%>)">Delete</button></td>
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