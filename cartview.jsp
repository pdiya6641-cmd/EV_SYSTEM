<%@include file="rheader.jsp" %>
<script>
    function deletedata(cart_id)
    {
        if(confirm("Do You Really Want To Delete This Record?"))
        {
            window.location.href="cartview.jsp?cart_id="+cart_id;
        }
    }
</script>
<%
if(request.getParameter("cart_id")!=null)
{
    int cart_id=Integer.parseInt(request.getParameter("cart_id"));
    pstmt1=conn.prepareStatement("delete from cart_master where cart_id=?");
    pstmt1.setInt(1,cart_id);
    pstmt1.executeUpdate();
}
%>
<div class="container">
    <div class="row">
        <div class="col-lg-12" style="margin-top:100px;">
            <div class=""section-heading>
                <center><h4 style="color:green; font-size:25px;"><b>Cart View</b></h4></center>
            </div>
        </div>
    </div>
</div>
<div class="content-wrapper">
    <div class="container">
        <div class="col-md-12" style="margin-top:30px;">
            <table class="table table-bordered">
                <tr>
                    <th>Accessory Photo</th>
                    <th>Accessory Name</th>
                    <th>Accessory Price</th>
                    <th>Accessory Quantity</th>
                    <th>Total Price</th>
                    <th>Delete</th>
                </tr>
                <%
                    int grand_total=0;
                    stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select * from cart_master where user_id='"+user_id+"'");
                    while(rs1.next())
                    {
                        
                 %>
                    <tr>
                        
                            <%
                                int accessory_id=rs1.getInt(2);
                                pstmt1=conn.prepareStatement("select * from ev_accessories where accessory_id=?");
                                pstmt1.setInt(1,accessory_id);
                                rs2=pstmt1.executeQuery();
                                
                                while(rs2.next())
                                {
                                    
                              %>
                        <td>
                            <img height="150px" width="150px" src="<%="http://localhost:8080/ev_web/accessory_photo/"+rs2.getString(3)%>">
                        </td>
                        <td><%=rs2.getString(2)%></td>
                        <td><%=rs2.getString(5)%></td>
                        <td><%=rs1.getString(4)%></td>
                        <td><%=rs1.getString(6)%></td>
                        <td><button onclick="deletedata(<%=rs1.getInt(1)%>)" class="btn btn-danger"><i class="fa fa-trash"></i>DELETE</button></td>
                    </tr>
                    <%
                            grand_total=grand_total+Integer.parseInt(rs1.getString(6));
                        }
                        }
                     %>
                     <tr>
                         <td colspan="4" style="text-align:right; font-weight:bold;">Total Price</td>
                         <td colspan="2"><%=grand_total%></td>
                     </tr>
                     <tr>
                         <td colspan="4" style="text-align:left; font-weight:bold;"><a href="r_home.jsp" class="btn btn-warning">BACK TO SHOPPING</a></td>
                         <td colspan="4" style="text-align:right; font-weight:bold;"><a href="acc_place_order.jsp?user_id=<%=user_id%>" class="btn btn-success">PLACE ORDER</a></td>

                     </tr>
            </table>
            
        </div>
    </div>
</div>

<%@include file="footer.jsp" %>