<%--
  Created by IntelliJ IDEA.
  User: TQD
  Date: 10/13/2019
  Time: 10:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page isErrorPage="true" import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
<h2>Some error in page</h2>

Message:
<%=exception.getMessage()%>


<h3>StackTrace:</h3>
<%
    StringWriter stringWriter = new StringWriter();
    PrintWriter printWriter = new PrintWriter(stringWriter);
    exception.printStackTrace(printWriter);
    out.println("<pre>");
    out.println(stringWriter);
    out.println("</pre>");
    printWriter.close();
    stringWriter.close();
%>
</body>
</html>
