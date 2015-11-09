 <html>
 <body>
 <h2>Set Current Time</h2>
 <%
     response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
     response.setHeader("Pragma", "no-cache"); //HTTP 1.0
     response.setDateHeader("Expires", 0); //prevents caching at the proxy server

     System.out.println( "Putting date now" );
     session.setAttribute("current.time", new java.util.Date());
     application.setAttribute("random", new Math.abs(java.util.Random().nextInt()));
 %>
 The time is set to <%= session.getAttribute("current.time") %>
 <br/>
 Random number saved to application scope is <%= application.getAttribute("random") %>
 <br/>
 The local server's IP address is <%= request.getLocalAddr() %>
 </body>
 </html>




