 <html>
 <body>
 <h2>Get Time</h2>
<%
     System.out.println( "Getting date now" );
%>
 The time is <%= session.getAttribute("current.time") %>
 <br/>
 The local server's IP address is <%= request.getLocalAddr() %>
 </body>
 </html>




