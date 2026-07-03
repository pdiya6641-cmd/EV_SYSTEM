<%@include file="connect.jsp" %>
<%
    int vehicle_id=Integer.parseInt(request.getParameter("vehicle_id"));
    int user_id=Integer.parseInt(request.getParameter("user_id"));
    int vehicle_price=Integer.parseInt(request.getParameter("vehicle_price"));
    int v_order_qty=Integer.parseInt(request.getParameter("v_order_qty"));
    int v_total_price=vehicle_price*v_order_qty;
    
    pstmt1=conn.prepareStatement("select * from vehicle_cart_master where vehicle_id=?");
    pstmt1.setInt(1, vehicle_id);
    rs1=pstmt1.executeQuery();
    if(rs1.next())
    {
    
        int old_qty=Integer.parseInt(rs1.getString("v_order_qty"));
        int new_qty=old_qty+v_order_qty;
        int v_total_price1=new_qty*vehicle_price;
        
        out.println(""+old_qty);
        out.println(""+new_qty);
        out.println(""+v_total_price);
        
        stmt2=conn.createStatement();
        
        int i=stmt2.executeUpdate("update vehicle_cart_master set user_id='"+user_id+"',v_order_qty=' " +new_qty+" ',v_order_price_per_unit=' "+vehicle_price+" ',v_total_price=' "+v_total_price1+" ' where vehicle_id='"+vehicle_id+"'");
        if(i==1)
        {
            //out.println("Accessory updated");
           response.sendRedirect("vehicle_cartview.jsp");
        }
        else
        {
            out.println("not saved");
        }
        
        
    }
else
{
    pstmt1=conn.prepareStatement("insert into vehicle_cart_master(vehicle_id,user_id,v_order_qty,v_order_price_per_unit,v_total_price)values(?,?,?,?,?)");
    pstmt1.setInt(1,vehicle_id);
    pstmt1.setInt(2, user_id);
    pstmt1.setInt(3, v_order_qty);
    pstmt1.setInt(4, vehicle_price);
    pstmt1.setInt(5, v_total_price);
    
    int i=pstmt1.executeUpdate();
            
            if(i==1)
            {
               // out.println("record inserted..");
                response.sendRedirect("vehicle_cartview.jsp");
            }
            else
            {
                out.println("not inserted..");
            }
}
%>



   