<%-- 
    Document   : EV_accessories_category_add_code
    Created on : 28 Dec, 2024, 11:51:43 AM
    Author     : Yash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="connect.jsp" %>
<%
    
MultipartRequest mrequest=new MultipartRequest(request,"D:/EV System/ev_web/web/cat_photo",5048576);
File f=mrequest.getFile("cat_photo");
String cat_photo=f.getName();


String cnm=mrequest.getParameter("cat_name");
String cdes=mrequest.getParameter("cat_description");

pstmt=conn.prepareStatement("insert into EV_accessories_category(cat_name,cat_description,cat_photo)values(?,?,?)");

pstmt.setString(1,cnm);
pstmt.setString(2,cdes);
pstmt.setString(3,cat_photo);

int i=pstmt.executeUpdate();
if(i==1)
{
response.sendRedirect("EV_accessories_category_view.jsp");
}
else
{
        out.println("<script type='text/javascript'>alert('record not inserted')</script>");

}
    
%>