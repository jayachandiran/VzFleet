<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{

int truck_id=Integer.parseInt(request.getParameter("truck_id"));
String model=request.getParameter("model");
String tno=request.getParameter("tno");

String insurance=request.getParameter("insurance");
String cname=request.getParameter("cname");
String owner=request.getParameter("owner");
String mobile=request.getParameter("mobile");
String from=request.getParameter("from");
String to=request.getParameter("to");
String status=request.getParameter("status");
java.util.Date sqdate=Calendar.getInstance().getTime();
	java.sql.Date dat =new java.sql.Date(sqdate.getTime());
	

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Saran","root","");
PreparedStatement ps=con.prepareStatement("insert into tinstall values(?,?,?,?,?,?,?,?,?,?,?)");

ps.setInt(1,truck_id);
ps.setString(2,model);
ps.setString(3,tno);
ps.setString(4,insurance);
ps.setString(5,cname);
ps.setString(6,owner);
ps.setString(7,from);
ps.setString(8,to);
ps.setDate(9,dat);
ps.setString(10,mobile);
ps.setString(11,status);
int s=ps.executeUpdate();
System.out.print(s);

}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="admin.jsp"></jsp:forward>
