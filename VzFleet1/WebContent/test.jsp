        <jsp:include page="header.jsp"></jsp:include>
            <div id="gbox-bg">
              <div id="gbox-grd">
                <h2>FLEET MANAGEMENT OPERATIONS</h2>
				<p>You can find All the Information regarding our transport company's services ,Trucks and can contact us to get your vehicle installed in our company</p>

<p>You can find how many vehicle is on road through my company to your city or closest to it</p>
                <!-- <div id="features">
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
                </div> -->
                
                <div id="newsletter">
                  <h2>Login Form</h2>
                  <% 
                  if(request.getAttribute("notlogin_msg")!=null){
                  out.print(request.getAttribute("notlogin_msg"));
                  }
                  
                  %>
                  
                  <% 
                  if(request.getAttribute("Error")!=null){
                  out.print(request.getAttribute("Error"));
                  }
                  %>
                  
                  <form action="aloginprocess.jsp" method="get" accept-charset="utf-8">
                     Username:<input type="text" name="username"/>
                    Password:<input type="password" name="userpass"/>
                    <input type="submit" value="Login">
                  </form>
                  
                </div>
                
                <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>