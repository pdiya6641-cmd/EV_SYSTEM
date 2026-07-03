<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<%
    String cat_photo = "";
    MultipartRequest mrequest = new MultipartRequest(request, "D:/EV System/ev_web/web/cat_photo", 5048576);
    File f = mrequest.getFile("cat_photo");

    if (f != null) {
        cat_photo = f.getName();
    } else {
        cat_photo = mrequest.getParameter("old_photo");
    }

    int cat_id = Integer.parseInt(mrequest.getParameter("cat_id"));
    String cat_name = mrequest.getParameter("cat_name");
    String cat_description = mrequest.getParameter("cat_description");

    PreparedStatement pstmt = conn.prepareStatement("UPDATE EV_accessories_category SET cat_name = ?, cat_description = ?, cat_photo = ? WHERE cat_id = ?");
    pstmt.setString(1, cat_name);
    pstmt.setString(2, cat_description);
    pstmt.setString(3, cat_photo);
    pstmt.setInt(4, cat_id);

    int i = pstmt.executeUpdate();
    if (i == 1) {
        response.sendRedirect("EV_accessories_category_view.jsp");
    } else {
        out.println("<script type='text/javascript'>alert('Record Not Updated');</script>");
    }
    pstmt.close();
%>

<%@include file="footer.jsp" %>
