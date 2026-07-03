<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>

<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="java.io.File"%>

<%!Connection conn; %>
<%!PreparedStatement pstmt,pstmt1,pstmt2; %>
<%!ResultSet rs1,rs2,rs3; %>
<%!Statement stmt1,stmt2,stmt3; %>


<%
    Class.forName("com.mysql.jdbc.Driver");
    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ev","root","");
%>