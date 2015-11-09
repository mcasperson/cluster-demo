 <html>
 <body>
 <h2>Get Time</h2>
<%
    response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0
    response.setDateHeader("Expires", 0); //prevents caching at the proxy server

    System.out.println( "Getting date now" );
%>
 The time is <%= session.getAttribute("current.time") %>
 <br/>
 Random number saved to application scope is <%= application.getAttribute("random") %>
 <br/>
 The local server's IP address is <%= request.getLocalAddr() %>
 </body>
 </html>




