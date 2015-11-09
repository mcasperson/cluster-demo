<html>
<body>
<h2>Cluster Test</h2>
<%
    response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0
    response.setDateHeader("Expires", 0); //prevents caching at the proxy server
%>
<p>
    The local server's IP address is <%= request.getLocalAddr() %>
</p>
<p>
    To save data in the session scope, click <a href="put.jsp">here</a>
</p>

<p>
    To view the data in the session scope, click <a href="get.jsp">here</a>
</p>

<p>
    To easily test that your session is being replicated, configure your hosts file with a domain
    and then use <a href=https://addons.mozilla.org/en-US/firefox/addon/hostadmin/">this Firefox extension</a>
    to switch between each individual IP address.
</p>
</body>
</html>
