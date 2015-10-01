<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<% 
String status=request.getParameter("status");
String truckid=(String)session.getAttribute("truck_id");
System.out.print("status : "+status);
System.out.print("truckid : "+truckid);
if(truckid.length()>0){
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Saran","root","");

PreparedStatement ps=con.prepareStatement("update tinstall set status='"+status+"' where truckid='"+truckid+"'");
//ps.setString(1,n);
out.print("<br>");
int s=ps.executeUpdate();

con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
<jsp:forward page="status.jsp"></jsp:forward>