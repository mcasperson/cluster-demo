 <html>
 <body>
 <h2>Retrieve Data from <%= request.getLocalAddr() %></h2>
<%
    response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0
    response.setDateHeader("Expires", 0); //prevents caching at the proxy server

    System.out.println( "Getting date now" );
%>
 <p>
    The name you saved was <%= session.getAttribute("name") %>.
 </p>
 <p>
    Random number saved to application scope is <%= application.getAttribute("random") %>.
 </p>
 <p>
     To save data in the session scope, click <a href="put.jsp">here</a>.
 </p>
 <p>
     To reopen this page, click <a href="get.jsp">here</a>.
 </p>
 </body>
 </html>




