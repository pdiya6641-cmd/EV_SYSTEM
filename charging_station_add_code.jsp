<!DOCTYPE html>
<%@include file="connect.jsp" %>
<%
String station_name = request.getParameter("station_name");
String station_address = request.getParameter("station_address");
String station_city = request.getParameter("station_city");
String station_status = request.getParameter("station_status");
String station_owner_name = request.getParameter("station_owner_name");
String station_contact_no = request.getParameter("station_contact_no");

pstmt = conn.prepareStatement("insert into charging_station(station_name, station_address, station_city, station_status, station_owner_name, station_contact_no) values(?, ?, ?, ?, ?, ?)");


pstmt.setString(1, station_name);
pstmt.setString(2, station_address);
pstmt.setString(3, station_city);
pstmt.setString(4, station_status);
pstmt.setString(5, station_owner_name);
pstmt.setString(6, station_contact_no);

int i = pstmt.executeUpdate();
if (i == 1)
{
    response.sendRedirect("charging_station_view.jsp");
} 


else {
    out.println("<script type='text/javascript'>alert('Record insertion failed')</script>");
}
%>
