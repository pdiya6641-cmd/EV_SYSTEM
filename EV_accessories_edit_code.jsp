
<%@include file="connect.jsp" %>
<%
    String accessory_photo="";
    MultipartRequest mrequest=new MultipartRequest(request,"D:/EV System/ev_web/web/accessory_photo",5048576);
    File f=mrequest.getFile("accessory_photo");
    if(f!=null)
    {
        accessory_photo=f.getName();
    }
    else
    {
        accessory_photo=mrequest.getParameter("old_photo");
    }
    int accessory_id=Integer.parseInt(mrequest.getParameter("accessory_id"));
    String accessory_name=mrequest.getParameter("accessory_name");
    String accessory_description=mrequest.getParameter("accessory_description");
    String accessory_price=mrequest.getParameter("accessory_price");
    String accessory_stock_quantity=mrequest.getParameter("accessory_stock_quantity");
    String accessory_warranty_period=mrequest.getParameter("accessory_warranty_period");
    int cat_id=Integer.parseInt(mrequest.getParameter("cat_id"));
    
    pstmt=conn.prepareStatement("update ev_accessories set accessory_name=?,accessory_photo=?,accessory_description=?,accessory_price=?,accessory_stock_quantity=?,accessory_warranty_period=?,cat_id=? where accessory_id=?");
    
    pstmt.setString(1,accessory_name);
    pstmt.setString(2,accessory_photo);
    pstmt.setString(3,accessory_description);
    
    pstmt.setString(4,accessory_price);
    pstmt.setString(5,accessory_stock_quantity);
    pstmt.setString(6,accessory_warranty_period);
    pstmt.setInt(7,cat_id);
    pstmt.setInt(8, accessory_id);

    
    int i=pstmt.executeUpdate();
    if(i==1)
    {
        response.sendRedirect("EV_accessories_view.jsp");
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Updated');</script>");
    }
    pstmt.close();
%>

<%@include file="footer.jsp" %>