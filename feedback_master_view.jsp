
<%@include file="connect.jsp" %>
<script>
    function deletedata(acc_feedback_id)
    {
        if(confirm("Are you sure you want to delete this record?"))
        {
            window.location.href="feedback_master_view.jsp?acc_feedback_id="+acc_feedback_id;      
        }
    }
</script>

<%
    if(request.getParameter("acc_feedback_id")!=null)
    {
        int acc_feedback_id=Integer.parseInt(request.getParameter("acc_feedback_id"));
        pstmt1=conn.prepareStatement("delete from acc_feedback_master where acc_feedback_id=?");
        pstmt1.setInt(1,acc_feedback_id);
        pstmt1.executeUpdate();
    }
 %>
 
<%@include file="header.jsp" %>
<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"> Accessory Feedback View</h4>
            </div>
                   <div class="col-md-12">
                       <table  class="table table-bordered table-hover">
                           <tr>
                               <th>Feedback ID</th>
                               <th>Feedback Message  </th>
                               <th>Feedback Date  </th>
                               <th> User Name</th>
                               <th>Accessory Name</th>
                               <th>Delete</th>
                           </tr>
                           <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from acc_feedback_master");
                        while(rs1.next())
                        {
                    %>

                           <tr>
                        <td><%=rs1.getInt(1)%></td>
                        <td><%=rs1.getString(2)%></td>
                        <td><%=rs1.getString(3)%></td>
                                            
                    <td>
                        <%
                            int user_id=rs1.getInt(4);
                            pstmt1=conn.prepareStatement("select * from user_master where user_id=?");
                            pstmt1.setInt(1,user_id);
                            rs2=pstmt1.executeQuery();
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                        %>
                           </td>
                    <td>
                        <% 
                            int accessory_id=rs1.getInt(5);
                            pstmt1=conn.prepareStatement("select * from ev_accessories where accessory_id=?");
                            pstmt1.setInt(1,accessory_id);
                            rs2=pstmt1.executeQuery();
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                            %>
                            <%
                           int acc_feedback_id=rs1.getInt(1);
                        %>
                 
                    </td>
                    <td><button class="btn btn-danger" onclick="deletedata(<%=acc_feedback_id%>)">Delete</button></td>
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