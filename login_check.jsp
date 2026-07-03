<%@include file="connect.jsp" %>
<%
    String username=request.getParameter("username");
        String password=request.getParameter("password");

pstmt1=conn.prepareStatement("select * from admin_login where admin_email=? and admin_password=?");

        pstmt1.setString(1,username);
         pstmt1.setString(2,password);
         
            rs1=pstmt1.executeQuery();
            if(rs1.next())
            {
                session.setAttribute("username", username);
                response.sendRedirect("admin_home.jsp");
            }
            else
            {
                response.sendRedirect("index.jsp");
            }

    %>