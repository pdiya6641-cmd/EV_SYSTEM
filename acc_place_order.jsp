<%@page import="java.util.Calendar;" %>
<%@page import="java.util.GregorianCalendar;" %>

<%@include file="connect.jsp" %>

<%
    int user_id = Integer.parseInt(request.getParameter("user_id"));

    // Get the current date
    GregorianCalendar calendar = new GregorianCalendar();
    String c_date = calendar.get(Calendar.DAY_OF_MONTH) + "-" + (calendar.get(Calendar.MONTH) + 1) + "-" + calendar.get(Calendar.YEAR);

    // Add 10 days for delivery
    calendar.add(Calendar.DAY_OF_MONTH, 10);
    String delivery_date = calendar.get(Calendar.DAY_OF_MONTH) + "-" + (calendar.get(Calendar.MONTH) + 1) + "-" +calendar.get(Calendar.YEAR) ;

    // Insert into acc_order_master with order_status and dates
    pstmt1 = conn.prepareStatement("INSERT INTO acc_order_master (accessory_id, user_id, order_quantity, order_price_per_unit, order_total_price, order_status, order_date, delivery_date) SELECT accessory_id, user_id, order_quantity, order_price_per_unit, order_total_price, ?, ?, ? FROM cart_master WHERE user_id = ?");
    
    pstmt1.setString(1, "Processing");
    pstmt1.setString(2, c_date);
    pstmt1.setString(3, delivery_date);
    pstmt1.setInt(4, user_id);
    
    pstmt1.executeUpdate();

    // Delete from cart_master after inserting
    pstmt2 = conn.prepareStatement("DELETE FROM cart_master WHERE user_id = ?");
    pstmt2.setInt(1, user_id);
    pstmt2.executeUpdate();
    

    response.sendRedirect("thankyou.jsp");
%>
