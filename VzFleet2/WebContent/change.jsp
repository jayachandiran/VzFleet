<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");

if(n.length()>0){
session.setAttribute("truck_id",n);
out.print("Enter status<input type='text' name='status'/>");
out.print("<input type='submit' value='save'/>");
%>

<%
}//end of if
%>