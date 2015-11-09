 <html>
 <body>
 <h2>Set Current Time</h2>
 <%
     response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
     response.setHeader("Pragma", "no-cache"); //HTTP 1.0
     response.setDateHeader("Expires", 0); //prevents caching at the proxy server

     String name = request.getParameter("name");
     if (name == null) {
         name = "Captain Risky";
     }

     System.out.println( "Putting date now" );
     session.setAttribute("name", name);
     application.setAttribute("random", java.lang.Math.abs(new java.util.Random().nextInt()));
 %>
 The name you saved was <%= session.getAttribute("name") %>
 <br/>
 Random number saved to application scope is <%= application.getAttribute("random") %>
 <br/>
 The local server's IP address is <%= request.getLocalAddr() %>
 </body>
 </html>




