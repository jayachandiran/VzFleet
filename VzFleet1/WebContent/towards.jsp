
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>       

 <jsp:include page="header.jsp"></jsp:include>
 
                  <%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="test.jsp"></jsp:forward>
<%
}
%>
                  
                  <% 
                  if(request.getAttribute("Error")!=null){
                  out.print(request.getAttribute("Error"));
                  }
                  %>
 
            <div id="gbox-bg">
             <div id="gbox-grd">
             <h2>FLEET MANAGEMENT OPERATIONS</h2>
				<!-- <marquee dir="ltr"><font style="color: navy;">Delhi-Kanpur,Agra-Kanpur,Agra-Ghaziabad,Kanpur-Delhi........</font></marquee> -->             
             <br/>
              <% 
              	String branch =(String)session.getAttribute("branch");
              	System.out.println("branch :"+branch);
              	
                Class.forName("com.mysql.jdbc.Driver");
	            Connection con= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Saran","root","");
                PreparedStatement ps= con.prepareStatement("Select tmodel,tno,malik,tfrom from tinstall where tto='"+branch+"' limit 0,7 ; ");
               	ResultSet rs= ps.executeQuery();
               	out.print("<table align='center' cellspacing='3',cellpadding='3' border='3'>");
               	out.print("<tr><th height='30' width='80'><center>Model<center></th><th height='30' width='80'><center>Number</center></th><th height='30' width='80'>Owner</th><th height='30' width='80'><center>From</center></th></tr>");
               	while(rs.next()){
               	out.print("<tr>");
               			out.print("<td>"+rs.getString(1)+"</td>");
               			out.print("<td><a href='map.jsp'>"+rs.getString(2)+"</a></td>");
               			out.print("<td>"+rs.getString(3)+"</td>");
               			
               	   		out.print("<td>"+rs.getString(4)+"</td>");	
               	    	out.print("</tr>");
               	}
               out.print("</table>");
                %>
               
             
            
                
				
				
                <br/>
                
               <div id="features">
                 <script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script>
                 <div style='overflow:hidden;height:298px;width:377px;'>
                 <div id='gmap_canvas' style='height:298px;width:377px;'></div>
                 <style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
                 </div> <a href='http://www.maps-generator.com'>Verizon Web</a> 
                 <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=2d4e5145551685def3e1fe199fa2f36f192dbe03'></script>
                 <script type='text/javascript'>
                 function init_map()
                 {
                	 var myOptions = {zoom:12,center:new google.maps.LatLng(40.6811625,-83.0107658),mapTypeId: google.maps.MapTypeId.HYBRID};
                	 map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
                	 marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(40.6811625,-83.0107658)});
                	 infowindow = new google.maps.InfoWindow({content:'<strong>Status </strong><br>1300 Columbus Sandusky Rd N, Marion, OH 43302<br> 43302 Dallas<br>'});
                	 google.maps.event.addListener(marker, 'click', 
                			 function()
                			 {
                		 	infowindow.open(map,marker);});infowindow.open(map,marker);
                			 }
                 google.maps.event.addDomListener(window, 'load', init_map);
                 </script>
                  <div class="clear"> </div>
                </div>
                
               
                <!--<div id="features">
                  <h2>FEATURED SERVICES</h2>
                   <ul>
                    <li><a href="http://www.verizon.com">Free Core java tutorial</a></li>
					<li><a href="http://www.verizon.com">Jsp tutorial</a></li>
                    <li><a href="http://www.verizon.com">Free Android Tutorial</a></li>
                    <li><a href="http://www.verizon.com">Struts and Hibernet Tutorial</a></li>
                    
                  </ul>
                  <ul>
				  	<li><a href="http://www.verizon.com">More Project</a></li>
                    <li><a href="http://www.cstpoint.com">C,C++ Tutorial</a></li>
					<li><a href="http://www.verizon.com/forum/">The forum</a></li>
                    <li><a href="http://www.cstpoint.com">Html,Sql Tutorial</a></li>
                  </ul> 
                  <div class="clear"> </div>
                </div>-->
                 </div>
                <!-- <div id="newsletter">
			     
                  
                <p><a href="http://www.verizon.com">Click here for details</a></p>
                </div> -->
                <div class="clear"> </div>
                
             
            </div>
            <jsp:include page="footer.html"></jsp:include>