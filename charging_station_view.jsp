
<%@include file="connect.jsp" %>

<script>
    function deletedata(station_id) 
    {
        if (confirm("Are you sure you want to delete this record?")) {
            window.location.href = "charging_station_view.jsp?station_id=" + station_id;
        }
    }
</script>


<%
    if(request.getParameter("station_id")!=null)
    {
        int station_id=Integer.parseInt(request.getParameter("station_id"));
        pstmt1=conn.prepareStatement("delete from charging_station where station_id=?");
        pstmt1.setInt(1,station_id);
        pstmt1.executeUpdate();
    }
 %>
 
<%@include file="header.jsp" %>
<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"> Charging station View</h4>
            </div>
                   <div class="col-md-12">
                       <table  class="table table-bordered table-hover">
                           <tr>
                               <th>Station ID</th>
                               <th>Station Name</th>
                               <th>Address</th>
                               <th>City </th>
                               <th>Status</th>
                               <th>Owner Name</th>
                                <th>Contact No. </th>
                               <th>Edit</th>
                               <th>Delete</th>
                           </tr>
                           <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from charging_station");
                        while(rs1.next())
                        {
                    %>

                           <tr>
                        <td><%=rs1.getInt(1)%></td>
                        <td><%=rs1.getString(2)%></td>
                        <td><%=rs1.getString(3)%></td>
                         <td><%=rs1.getString(4)%></td>
                         <td><%=rs1.getString(5)%></td>
                          <td><%=rs1.getString(6)%></td>
                         <td><%=rs1.getString(7)%></td>
                        <%
                           int station_id=rs1.getInt(1);
                        %>
                    
                    <td><a class="btn btn-success" href="charging_station_edit.jsp?station_id=<%=rs1.getInt(1)%>">Edit</a></td>
                    <td><button class="btn btn-danger" onclick="deletedata(<%=station_id%>)">Delete</button></td>
                          </tr>
                          <%
                              }
                            %>
                       </table>
                       
                   </
                   div>
               </div>
                </div>
            </div>

    
    
<%@include file="footer.jsp" %>