
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>        <jsp:include page="header.jsp"></jsp:include>
            <div id="gbox-bg">
              <div id="gbox-grd">
                <h2>FLEET MANAGEMENT OPERATIONS</h2>
				<marquee dir="ltr"><font style="color: navy;">US,INDIA</font></marquee>

				<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Saran","root","");
				PreparedStatement ps= con.prepareStatement("select name,email,phone,message from Saran.quizcontact limit 0,7 ; ");
				ResultSet rs= ps.executeQuery();
				out.print("<table align='center' border='3'>");
				out.print("<tr><td height='30' width='70'>Name</td><td height='30' width='70'>Email</td><td height='30' width='70'>Phone</td><td height='30' width='70'>Message</td></tr>");
				
				while(rs.next()){
				out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
				
				}
				out.print("</table>");
				 %>				
				
                <div id="newsletter">
			    </div>
                
                <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>