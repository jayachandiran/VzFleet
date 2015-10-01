<jsp:include page="header.jsp"></jsp:include>


<head>
<script>
var request;
function sendInfo()
{

var from=document.myform.from.value;
var to=document.myform.to.value;

var url="findservices.jsp?from="+from+"&to="+to;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('right').innerHTML=val;
}
}


</script>
</head>



            <div id="gbox-bg">
              <div id="gbox-grd">
  <h2>FLEET MANAGEMENT OPERATIONS</h2>
             
                
 
                  
                <form name="myform" >
<table>
	<tr><td>Route-From:<select name="from" id="select" onchange="sendInfo()">
					<option>Select Region</option>
					<option>Dallas</option>
					<option>Newyork</option>
					<option>Texas</option>
					<option>California</option>
					</select></td><td>To:<select name="to" id="select" onchange="sendInfo()">
					<option>Select Region</option>
					<option>Dallas</option>
					<option>Newyork</option>
					<option>Texas</option>
					<option>California</option>
					</select></td></tr>
	
	<tr><td><br></td></tr>
</table>
<div id="right"></div>
</form>
<br/>
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

                               <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>