 <html>
 <body>
 <h2>Save Data to <%= request.getLocalAddr() %></h2>
 <%
     response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
     response.setHeader("Pragma", "no-cache"); //HTTP 1.0
     response.setDateHeader("Expires", 0); //prevents caching at the proxy server

     String name = request.getParameter("name");
     if (name == null) {
         name = "Captain Risky";
     }

     System.out.println( "Putting name now" );
     session.setAttribute("name", name);
 %>
 <p>
    The name you saved was <%= session.getAttribute("name") %>.
 </p>
 <p>
     You can define this name with the <i>name</i> query param, like
    <a href="put.jsp?name=Captain%20Risky">put.jsp?name=Captain%20Risky</a>.
 </p>
 <p>
     To view the data in the session scope, click <a href="get.jsp">here</a>.
 </p>
 </body>
 </html>




