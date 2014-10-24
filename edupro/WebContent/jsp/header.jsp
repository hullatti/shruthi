
<!DOCTYPE html>
<html>

<head>
	<meta charset='UTF-8'>
	
	<title>Full Browser Width Bars</title>
	
	<link rel='stylesheet' href='../css/style.css'>
	
	<style>

    html { overflow-x: hidden; }
    h2 { 
      background: black;
      color: white;
      padding: 15px 0;
      position: relative;
    }
    h2:before, h2:after {
      content: "";
      background: black;
      position: absolute;
      top: 0;
      bottom: 0;
      width: 9999px;
    }
    h2:before {
      right: 100%;
    }
    h2:after {
      left: 100%;
    }
    
    h2:nth-of-type(1), h2:nth-of-type(1):before, h2:nth-of-type(1):after { background: #dc4916; }
    h2:nth-of-type(2), h2:nth-of-type(2):before, h2:nth-of-type(2):after { background: #6871b1; }
    h2:nth-of-type(3), h2:nth-of-type(3):before, h2:nth-of-type(3):after { background: #d1b935; }
    
    .left-only:after {
      display: none;
    }
    
    .right-only:before {
      width: 20px;
    }
    	
	</style>
</head>

<body>

	<div id="page-wrap">
		
		<h2 class="right-only"> <table>
  <tr>
    <th><a href = "http://localhost:8080/edupro/jsp/home.jsp" style="color: white"> Home           </a></th>
    <th> See Projects </th>		
    <th> <a href = "http://localhost:8080/edupro/jsp/techcourses.jsp" style="color: white">Technical Courses </a> </th>
      <th> Workshop </th>
    <th>Our Services </th>		
    <th>Our Expert Team</th>
      <th>Contact Us</th>
  </tr>
  </table></h2>
		
		</div>
	
</body>

</html>