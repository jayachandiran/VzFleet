        <jsp:include page="header.jsp"></jsp:include>
            <div id="gbox-bg">
              <div id="gbox-grd">
                <h2>FLEET MANAGEMENT OPERATIONS</h2>
				<marquee dir="ltr"><font style="color: navy;">US,INDIA</font></marquee>
				<p>You can find All the Information regarding our transport company's services ,Trucks and can contact us to get your vehicle installed in our company</p>

<p>You can find how many vehicle is on road through my company to your city or closest to it</p>
                <div id="features">
                  <img src="images/truck.jpg" width="380" height="167">
                </div>
                
                <div id="newsletter">
			        
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
                  
                <!-- <p><a href="http://www.verizon.com">Click here for details</a></p> -->
                </div>
                <!-- <div id="events">
                  <h2>FEATURED EVENTS</h2>
                  <ul>
                  <li><a href="http://www.verizon.com">More Project</a></li>
                    <li><a href="http://www.cstpoint.com">C,C++ Tutorial</a></li>
					<li><a href="http://www.verizon.com/forum/">The forum</a></li>
                    <li><a href="http://www.cstpoint.com">Html,Sql Tutorial</a></li>
                  </ul>
                </div> -->
                <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>