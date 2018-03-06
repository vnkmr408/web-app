<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>CSP || Inbox Mails</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">


</head>
<body id="top">


 
  <!-- ################################################################################################ -->
  <div class="wrapper row1" >
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="#">Carrier & Shipment Portal</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
            <%String name = request.getParameter("name");%>
            <li><a class="drop" href="logout.jsp" >Logout</a>
            <ul>
              <li><a href="cust.jsp">Update Profile</a></li>
              <li><a href="Main2.jsp">Logout</a></li>
            </ul>
          </li>
          </li>
         
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header> 
  </div>
    
        <div class="wrapper row3" style="background-color: white">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h3 class="heading"><b>Carrier Rates on your New Deliveries</b></h3>
    </div>
    <div class="group excerpts">
      
        
      
      <div class="scrollable">
        <table>
          <thead>
            <tr>
              
              <th>Request ID</th>
              <th>DELIVERY ID</th>
              <th>Carrier Username</th>
              <th>Price</th>
              <th>Choose</th>
            </tr>
          </thead>
          <tbody>
              <%
                  
    Connection con=null;
    String sql=null;
    ResultSet rs=null;
    ResultSet rs1=null;
    String user = request.getParameter("name");
   
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSP",
            "root", "root");
    
    
    Statement st = con.createStatement();
    String Status = "Pending";
    rs = st.executeQuery("Select * from Carrier_rates Where Order_Shipment_id IN ( Select Order_Shipment_id from Order_Shipment Where C_username='"+user+"' And Status = '"+Status+"' ) ");        
    
    while(rs.next())
    {
              %>
              <tr>
              <td><%=rs.getString(1)%></td>
              <td><%=rs.getString(4)%></td>
              <td><%=rs.getString(2)%></td>
              <td><%=rs.getString(3)%></td>
              <td>
                  <form action="" method="post">
                  <center>
                        
                      <input type="submit" value="Select" name="choose">
                        
                  </center>>
                  </form>>
              </td>
            </tr>
     <%
     }
     %>       
            
            
          </tbody>
        </table>
      </div>
      
      
      
      <br><br>
      
      
    </div>
    
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
        <div class="wrapper row4 bgded overlay" style="background-color: #191919">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
      
      <nav>
        <ul class="nospace">
          <li><a href="index.html"><i class="fa fa-lg fa-home"></i></a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact</a></li>
          <li><a href="#">Privacy</a></li>
          
        </ul>
      </nav>
    </div>
    
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left"> Copyright © Carrier & Shipment Portal 2017 - All Rights Reserved.</p>
    <p> <a> Designed By SALIK, RAVI, SARFRAJ, VINAY</a></p>
  <!--  <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>-->
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>      
</body>
</html>
    