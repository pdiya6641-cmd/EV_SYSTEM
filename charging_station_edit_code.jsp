
<%@include file="connect.jsp" %>
<%
    
    int station_id=Integer.parseInt(request.getParameter("station_id"));

    String station_name=request.getParameter("station_name");
    String station_address=request.getParameter("station_address");
    String station_city=request.getParameter("station_city");
        String station_status=request.getParameter("station_status");
    String station_owner_name=request.getParameter("station_owner_name");
    String station_contact_no=request.getParameter("station_contact_no");

    pstmt=conn.prepareStatement("update charging_station set station_name=?,station_address=?,station_city=?,station_status=?,station_owner_name=?,station_contact_no=? where station_id=?");
      
    pstmt.setString(1,station_name);
    pstmt.setString(2,station_address);
    pstmt.setString(3,station_city);
    pstmt.setString(4,station_status);
 pstmt.setString(5,station_owner_name);
    pstmt.setString(6,station_contact_no);
    pstmt.setInt(7, station_id);

    
    int i=pstmt.executeUpdate();
    if(i==1)
    {
        response.sendRedirect("charging_station_view.jsp");
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Updated');</script>");
    }
    pstmt.close();
%>

<%@include file="footer.jsp" %>