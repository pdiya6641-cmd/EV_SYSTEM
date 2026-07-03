
<%@include file="connect.jsp" %>
<%@page import="java.text.*" %>
<%@page import="java.util.Date" %>

<%
    
int user_id=Integer.parseInt(request.getParameter("user_id"));
int accessory_id=Integer.parseInt(request.getParameter("accessory_id"));

String acc_feedback_message=request.getParameter("acc_feedback_message");


SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
String acc_feedback_date=df.format(new Date());

pstmt1=conn.prepareStatement("INSERT INTO acc_feedback_master( acc_feedback_message,acc_feedback_date,user_id,accessory_id) VALUES (?,?,?,?)");
pstmt1.setString(1,acc_feedback_message);
pstmt1.setString(2,acc_feedback_date);
pstmt1.setInt(3,user_id);
pstmt1.setInt(4,accessory_id);

int i=pstmt1.executeUpdate();

if(i==1)
{
        out.println("Feedback Saved");
}
else
{
        out.println("Feedback Not Saved");
}


%>