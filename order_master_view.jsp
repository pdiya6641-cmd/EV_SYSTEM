
<%@include file="connect.jsp" %>
<script>
    function deletedata(order_id)
    {
        if(confirm("Are you sure you want to delete this record?"))
        {
            window.location.href="order_master_view.jsp?order_id="+order_id;      
        }
    }
</script>

<%
    if(request.getParameter("order_id")!=null)
    {
        int order_id=Integer.parseInt(request.getParameter("order_id"));
        pstmt1=conn.prepareStatement("delete from acc_order_master where order_id=?");
        pstmt1.setInt(1,order_id);
        pstmt1.executeUpdate();
    }
 %>
 
<%@include file="header.jsp" %>
<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"> Accessory Order Master View</h4>
            </div>
                   <div class="col-md-12">
                       <table  class="table table-bordered table-hover">
                           <tr>
                               <th>Order ID</th>
                               <th>Accessory Name </th>
                               <th> User Name</th>
                               <th>Quantity </th>
                               <th>Price Per Unit  </th>
                               <th>Total Price </th>
                               <th> Status </th>
                               <th> Order Date </th>
                               <th> Delivery Date </th>
                               <th>Delete</th>
                           </tr>
                           <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from acc_order_master");
                        while(rs1.next())
                        {
                    %>

                  <tr>
                        <td><%=rs1.getInt(1)%></td>
                        <td>
                        <%
                            int accessory_id=rs1.getInt(2);
                            pstmt1=conn.prepareStatement("select * from EV_accessories where accessory_id=?");
                            pstmt1.setInt(1,accessory_id);
                            rs2=pstmt1.executeQuery();
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                        %>
                    </td>
                    <td>
                        <%
                            int user_id=rs1.getInt(3);
                            pstmt1=conn.prepareStatement("select * from user_master where user_id=?");
                            pstmt1.setInt(1,user_id);
                            rs2=pstmt1.executeQuery();
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                        %>
                       
                    </td>
                                                             
                        <td><%=rs1.getInt(4)%></td>
                        <td><%=rs1.getString(5)%></td>
                        <td><%=rs1.getString(6)%></td>
                         <td><%=rs1.getString(7)%></td>
                         <td><%=rs1.getString(8)%></td>
                         <td><%=rs1.getString(9)%>
                          <%
                           int order_id=rs1.getInt(1);
                        %>
                         </td>
                         
                    <td><button class="btn btn-danger" onclick="deletedata(<%=order_id%>)">Delete</button></td>
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