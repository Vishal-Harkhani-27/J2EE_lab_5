<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>
<html>
<body>
<%  
String un = request.getParameter("un");
String rn = request.getParameter("rn");

%>
<h3>Your Name is: <%= un %></h3>
<h3>Your Roll No. is: <%= rn %></h3>
</body>
</html>
