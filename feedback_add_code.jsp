
<%@include file="connect.jsp" %>
<%@page import="java.text.*" %>
<%@page import="java.util.Date" %>

<%
    
int user_id=Integer.parseInt(request.getParameter("user_id"));
int vehicle_id=Integer.parseInt(request.getParameter("vehicle_id"));

String feedback_msg=request.getParameter("feedback_msg");


SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
String feedback_date=df.format(new Date());

pstmt1=conn.prepareStatement("INSERT INTO vehicle_feedback_master( feedback_message,feedback_date,user_id,vehicle_id) VALUES (?,?,?,?)");
pstmt1.setString(1,feedback_msg);
pstmt1.setString(2,feedback_date);
pstmt1.setInt(3,user_id);
pstmt1.setInt(4,vehicle_id);

int i=pstmt1.executeUpdate();

if(i==1)
{
        //out.println("Feedback Saved");
        response.sendRedirect("r_vehicle_details.jsp?vehicle_id="+vehicle_id+"");
}
else
{
        out.println("Feedback Not Saved");
}


%>