<%@include file="connect.jsp" %>
<%
    int accessory_id=Integer.parseInt(request.getParameter("accessory_id"));
    int user_id=Integer.parseInt(request.getParameter("user_id"));
    int acc_price=Integer.parseInt(request.getParameter("acc_price"));
    int order_quantity=Integer.parseInt(request.getParameter("order_quantity"));
    int total_price=acc_price*order_quantity;
    
    pstmt1=conn.prepareStatement("select * from cart_master where accessory_id=?");
    pstmt1.setInt(1, accessory_id);
    rs1=pstmt1.executeQuery();
    if(rs1.next())
    {
    
        int old_quantity=Integer.parseInt(rs1.getString("order_quantity"));
        int new_quantity=old_quantity+order_quantity;
        int total_price1=new_quantity*acc_price;
        
        out.println(""+old_quantity);
        out.println(""+new_quantity);
        out.println(""+total_price);
        
        stmt2=conn.createStatement();
        
        int i=stmt2.executeUpdate("update cart_master set user_id="+user_id+",order_price_per_unit=' "+acc_price+" ',order_quantity=' " +new_quantity+" ',order_total_price=' "+total_price1+" ' where accessory_id="+accessory_id+" ");
        if(i==1)
        {
            //out.println("Accessory updated");
            response.sendRedirect("cartview.jsp");
        }
        else
        {
            out.println("not saved");
        }
        
        
    }
else
{
    pstmt1=conn.prepareStatement("insert into cart_master(user_id,order_price_per_unit,accessory_id,order_quantity,order_total_price)values(?,?,?,?,?)");
    pstmt1.setInt(1,user_id);
    pstmt1.setInt(2, acc_price);
    pstmt1.setInt(3, accessory_id);
    pstmt1.setInt(4, order_quantity);
    pstmt1.setInt(5, total_price);
    
    int i=pstmt1.executeUpdate();
            
            if(i==1)
            {
                //out.println("record inserted..");
                response.sendRedirect("cartview.jsp");
            }
            else
            {
                out.println("not inserted..");
            }
}
%>



   