<!DOCTYPE html>
<%@include file="connect.jsp" %>
<%
String user_name = request.getParameter("user_name");
String user_address = request.getParameter("user_address");
String user_city = request.getParameter("user_city");
String user_pincode = request.getParameter("user_pincode");
String user_email = request.getParameter("user_email");
String user_password = request.getParameter("user_password");
String user_mobile = request.getParameter("user_mobile");

pstmt = conn.prepareStatement("insert into user_master(user_name, user_address, user_city, user_pincode, user_email, user_password,user_mobile) values(?, ?, ?, ?, ?, ?, ?)");

pstmt.setString(1, user_name);
pstmt.setString(2, user_address);
pstmt.setString(3, user_city);
pstmt.setString(4, user_pincode);
pstmt.setString(5, user_email);
pstmt.setString(6, user_password);
pstmt.setString(7, user_mobile);

int i = pstmt.executeUpdate();
if (i == 1)
{
    out.println("<script type='text/javascript'>alert('Record insertion Successfull !!!')</script>");
} 


else {
    out.println("<script type='text/javascript'>alert('Record insertion failed')</script>");
}
%>
